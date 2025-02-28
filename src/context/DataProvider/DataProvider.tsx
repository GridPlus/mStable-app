import React, { createContext, FC, useContext, useMemo } from 'react';
import { pipe } from 'ts-pipe-compose';

import { Tokens, useTokensState } from '../TokensProvider';
import {
  BassetState,
  BoostedSavingsVaultState,
  DataState,
  MassetState,
  SavingsContractState,
} from './types';
import { recalculateState } from './recalculateState';
import { transformRawData } from './transformRawData';
import { useBlockPollingSubscription } from './subscriptions';
import { useAccount } from '../UserProvider';
import { useBlockNumber } from '../BlockProvider';
import {
  MassetsQueryResult,
  useMassetsLazyQuery,
} from '../../graphql/protocol';
import { useSelectedMassetName } from '../SelectedMassetNameProvider';
import { useVaultsLazyQuery, VaultsQueryResult } from '../../graphql/vault';

const dataStateCtx = createContext<DataState>({});

const useRawData = (): [
  MassetsQueryResult['data'],
  VaultsQueryResult['data'],
  Tokens,
] => {
  const blockNumber = useBlockNumber();
  const { tokens } = useTokensState();

  const account = useAccount();
  const subscription = useBlockPollingSubscription(useMassetsLazyQuery, {
    variables: { account: account ?? '', hasAccount: !!account },
  });

  const vaultSub = useBlockPollingSubscription(useVaultsLazyQuery, {
    variables: { account: account ?? '', hasAccount: !!account },
  });

  // Intentionally limit updates.
  // Given that the blockNumber and the subscription's loading state are what
  // drive updates to both the tokens state and the DataState, use these
  // as the deps to prevent creating new objects with the same underlying data.
  // eslint-disable-next-line react-hooks/exhaustive-deps
  return useMemo(() => [subscription.data, vaultSub.data, tokens], [
    blockNumber,
    subscription.loading,
    vaultSub.loading,
    tokens,
  ]);
};

export const useDataState = (): DataState => useContext(dataStateCtx);

export const useSelectedMassetState = (): MassetState | undefined => {
  const masset = useSelectedMassetName();
  return useDataState()[masset];
};

export const useSelectedBoostedSavingsVault = ():
  | BoostedSavingsVaultState
  | undefined => {
  const masset = useSelectedMassetState();
  return masset?.savingsContracts?.v2?.boostedSavingsVault;
};

export const useV1SavingsBalance = ():
  | Extract<SavingsContractState, { version: 1 }>['savingsBalance']
  | undefined => useSelectedMassetState()?.savingsContracts?.v1?.savingsBalance;

export const useBassetState = (address: string): BassetState | undefined =>
  useSelectedMassetState()?.bAssets[address];

export const useSaveV1Address = (): string | undefined => {
  const massetState = useSelectedMassetState();
  return massetState?.savingsContracts?.v1?.address;
};

export const useSaveV2Address = (): string | undefined => {
  const massetState = useSelectedMassetState();
  return massetState?.savingsContracts?.v2?.address;
};

export const DataProvider: FC = ({ children }) => {
  const data = useRawData();

  const dataState = useMemo<DataState>(
    () =>
      pipe<typeof data, DataState, DataState>(
        data,
        transformRawData,
        recalculateState,
      ),
    [data],
  );

  if (process.env.NODE_ENV === 'development') {
    (window as { dataState?: DataState }).dataState = dataState;
  }

  return (
    <dataStateCtx.Provider value={dataState}>{children}</dataStateCtx.Provider>
  );
};
