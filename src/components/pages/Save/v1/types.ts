import { MassetState } from '../../../../context/DataProvider/types';
import { BigDecimal } from '../../../../web3/BigDecimal';

export enum TransactionType {
  Deposit,
  Withdraw,
}

export enum Reasons {
  AmountMustBeGreaterThanZero = 'Amount must be greater than zero',
  AmountMustBeSet = 'Amount must be set',
  DepositAmountMustNotExceedTokenBalance = 'Deposit amount must not exceed token balance',
  FetchingData = 'Fetching data',
  MUSDMustBeApproved = 'Transfers must be approved',
  TokenMustBeSelected = 'Token must be selected',
  WithdrawAmountMustNotExceedSavingsBalance = 'Withdraw amount must not exceed savings balance',
}

export enum Actions {
  Data,
  SetAmount,
  SetMaxAmount,
  ToggleTransactionType,
}

export interface State {
  error?: string;
  valid: boolean;
  transactionType: TransactionType;
  amount?: BigDecimal;
  amountInCredits?: BigDecimal;
  formValue?: string;
  touched: boolean;
  initialized: boolean;
  simulated?: MassetState;
  massetState?: MassetState;
  needsUnlock?: boolean;
}

export type Action =
  | {
      type: Actions.Data;
      payload?: MassetState;
    }
  | {
      type: Actions.SetAmount;
      payload: {
        formValue?: string;
      };
    }
  | { type: Actions.SetMaxAmount }
  | { type: Actions.ToggleTransactionType };

export interface Dispatch {
  setAmount(formValue?: string, isCreditAmount?: boolean): void;
  setMaxAmount(): void;
  toggleTransactionType(): void;
}
