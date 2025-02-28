import {
  BassetInput,
  Mode,
  State,
  StateValidator,
  Reasons,
  ValidationResult,
  BassetStatus,
} from './types';
import { getReasonMessage } from './getReasonMessage';

const amountValidator = (
  bAsset: BassetInput,
  massetState: NonNullable<State['massetState']>,
): ValidationResult => {
  const bAssetData = massetState.bAssets[bAsset.address];

  if (
    [
      BassetStatus.BrokenBelowPeg,
      BassetStatus.Liquidating,
      BassetStatus.Blacklisted,
    ].includes(bAssetData.status)
  ) {
    return [false, Reasons.AssetNotAllowedInMint];
  }

  if (!bAsset.amount) {
    return [false, Reasons.AmountMustBeSet];
  }

  if (bAsset.amount.exact.lte(0)) {
    return [false, Reasons.AmountMustBeGreaterThanZero];
  }

  if (bAsset.amount.exact.gt(bAssetData.token.balance.exact)) {
    return [false, Reasons.AmountExceedsBalance];
  }

  if (!bAssetData.token.allowances[massetState.address]?.exact) {
    return [false, Reasons.FetchingData];
  }

  if (
    bAssetData.token.allowances[massetState.address].exact.lt(
      bAsset.amount.exact,
    )
  ) {
    return [false, Reasons.AmountExceedsApprovedAmount];
  }

  return [true];
};

const mintSingleValidator: StateValidator = state => {
  const { bAssets, simulation, massetState } = state;

  if (!massetState || !simulation) return [false, Reasons.FetchingData];

  const [enabled] = Object.values(bAssets).filter(b => b.enabled);

  if (!enabled) return [false, Reasons.NoAssetSelected];

  const [amountValid, amountReason] = amountValidator(enabled, massetState);
  if (!amountValid) {
    return [
      amountValid,
      amountReason,
      { [enabled.address]: amountReason },
    ] as ValidationResult;
  }

  const { totalVaultInMasset, maxWeightInMasset } = simulation.bAssets[
    enabled.address
  ];

  if (totalVaultInMasset.exact.gt(maxWeightInMasset.exact)) {
    return [
      false,
      Reasons.MustBeBelowMaxWeighting,
      { [enabled.address]: Reasons.MustBeBelowMaxWeighting },
    ];
  }

  return [true];
};

const mintMultiValidator: StateValidator = state => {
  const { bAssets, simulation, massetState } = state;

  if (!simulation || !massetState) return [false, Reasons.FetchingData];

  const enabled = Object.values(bAssets).filter(b => b.enabled);

  if (enabled.length === 0) {
    return [false, Reasons.NoAssetsSelected];
  }

  const bAssetsArr = Object.values(bAssets);
  return bAssetsArr
    .map<ValidationResult>(bAsset => {
      if (!bAsset.enabled) return [true];

      const amountValidation = amountValidator(bAsset, massetState);
      if (!amountValidation[0]) return amountValidation;

      const { totalVaultInMasset, maxWeightInMasset } = simulation.bAssets[
        bAsset.address
      ];

      if (totalVaultInMasset.exact.gt(maxWeightInMasset.exact)) {
        return [
          false,
          Reasons.MustBeBelowMaxWeighting,
          { [bAsset.address]: Reasons.MustBeBelowMaxWeighting },
        ];
      }

      return [true];
    })
    .reduce<ValidationResult>(
      ([_valid, _reason, _errorMap], [bAssetValid, bAssetReason], index) => {
        const { address } = bAssetsArr[index];

        const reason = typeof _reason !== 'undefined' ? _reason : bAssetReason;
        const valid = _valid && bAssetValid;
        const errorMap = { ..._errorMap, [address]: bAssetReason };

        return valid ? [valid] : [valid, reason, errorMap];
      },
      [true, undefined, {}],
    );
};

const mintValidator: StateValidator = state => {
  const { bAssets, mode } = state;

  if (mode === Mode.MintSingle) {
    const [valid, error] = mintSingleValidator(state);
    const [bAssetInput] = Object.values(bAssets).filter(b => b.enabled);
    return [valid, error, { [bAssetInput.address]: error }];
  }

  return mintMultiValidator(state);
};

const basketValidator: StateValidator = state => {
  const { simulation } = state;

  if (!simulation) {
    return [false, Reasons.FetchingData];
  }

  if (simulation.failed) {
    return [false, Reasons.BasketFailed];
  }

  if (simulation.undergoingRecol) {
    return [false, Reasons.BasketUndergoingRecollateralisation];
  }

  return [true];
};

const getValidationResult = (state: State): ValidationResult => {
  const ready = state.amountTouched && state.initialized;

  if (!ready) return [false];

  const basketValidation = basketValidator(state);
  if (!basketValidation[0]) return basketValidation;

  return mintValidator(state);
};

export const validate = (state: State): State => {
  const { bAssets, massetState } = state;

  const [valid, reason, affectedBassets = {}] = getValidationResult(state);

  const affectedBassetsData = massetState
    ? Object.keys(affectedBassets).map(b => massetState.bAssets[b])
    : undefined;

  const error = valid
    ? undefined
    : getReasonMessage(reason, affectedBassetsData);

  return {
    ...state,
    bAssets: Object.values(bAssets).reduce(
      (_bAssets, bAsset) => ({
        ..._bAssets,
        [bAsset.address]: {
          ...bAsset,
          error: getReasonMessage(
            affectedBassets[bAsset.address],
            affectedBassetsData,
          ),
          reason: affectedBassets[bAsset.address],
        },
      }),
      bAssets,
    ),
    error,
    valid,
  };
};
