import { BigNumber } from 'ethers/utils';

interface Connector {
  id: string;
  subType?: string;
  label: string;
}

export const SCALE = new BigNumber((1e18).toString());
export const PERCENT_SCALE = new BigNumber((1e16).toString());
export const RATIO_SCALE = new BigNumber((1e8).toString());
export const EXP_SCALE = new BigNumber((1e18).toString());

// For now, support one chain ID per deployment; also a `use-wallet` restriction
export const CHAIN_ID = parseInt(process.env.REACT_APP_CHAIN_ID as string, 10);

interface Addresses {
  UNISWAP_ROUTER02: string;
  WETH: string;
  MTA: string;
  vMTA: string;
  mUSD: {
    SaveWrapper?: string;
  };
  mBTC?: {
    SaveWrapper: string;
  };
  CURVE: {
    CURVE_V2: string;
    GAUGE_CONTROLLER: string;

    CRV_TOKEN: string;
    MUSD_TOKEN: string;
    '3POOL_TOKEN': string;
    '3POOL_COINS': string[];

    MTA_STAKING_REWARDS: string;

    TOKEN_MINTER: string;

    MUSD_LP_TOKEN: string;
    MUSD_DEPOSIT: string;
    MUSD_GAUGE: string;
    MUSD_SWAP: string;
    '3POOL_SWAP': string;
  };
}

type AddressesByNetwork = Record<typeof CHAIN_ID, Addresses>;

export const ADDRESSES_BY_NETWORK: AddressesByNetwork = Object.freeze({
  1: {
    UNISWAP_ROUTER02: '0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D',
    WETH: '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2',
    MTA: '0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2',
    vMTA: '0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf',
    mUSD: {
      SaveWrapper: '0xD7c346C228bDdd8a6a4c1a69E6cC82292909dcAD',
    },
    CURVE: {
      CURVE_V2: '0x1aef73d49dedc4b1778d0706583995958dc862e6',
      GAUGE_CONTROLLER: '0x2f50d538606fa9edd2b11e2446beb18c9d5846bb',

      CRV_TOKEN: '0xd533a949740bb3306d119cc777fa900ba034cd52',
      MUSD_TOKEN: '0xe2f2a5c287993345a840db3b0845fbc70f5935a5',
      '3POOL_TOKEN': '0x6c3f90f043a72fa612cbac8115ee7e52bde6e490',
      '3POOL_COINS': [
        '0x6b175474e89094c44da98b954eedeac495271d0f', // DAI
        '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48', // USDC
        '0xdac17f958d2ee523a2206206994597c13d831ec7', // USDT
      ],

      MTA_STAKING_REWARDS: '0xe6e6e25efda5f69687aa9914f8d750c523a1d261',

      TOKEN_MINTER: '0xd061d61a4d941c39e5453435b6345dc261c2fce0',

      MUSD_LP_TOKEN: '0x1aef73d49dedc4b1778d0706583995958dc862e6',
      MUSD_DEPOSIT: '0x78cf256256c8089d68cde634cf7cdefb39286470',
      MUSD_GAUGE: '0x5f626c30ec1215f4edcc9982265e8b1f411d1352',
      MUSD_SWAP: '0x8474ddbe98f5aa3179b3b3f5942d724afcdec9f6',
      '3POOL_SWAP': '0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7',
    },
  },
  3: {
    UNISWAP_ROUTER02: '0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D',
    MTA: '0x273bc479e5c21caa15aa8538decbf310981d14c0',
    vMTA: '0x77f9bf80e0947408f64faa07fd150920e6b52015',
    WETH: '0xc778417e063141139fce010982780140aa0cd5ab',
    mUSD: {
      SaveWrapper: '0xeb9201126a77dcd966c878ce81ea1146603b86ad',
    },
    CURVE: {
      MUSD_SWAP: '0xfad04fbdd5b12188d4fd3ba0325a22962dc00ea4',
      '3POOL_COINS': [
        '0x8a9447df1fb47209d36204e6d56767a33bf20f9f', // USDC
        '0xb404c51bbc10dcbe948077f18a4b8e553d160084', // USDT
        '0xb5e5d0f8c0cba267cd3d7035d6adc8eba7df7cdd', // DAI
      ],
    } as never,
  },
  42: {
    UNISWAP_ROUTER02: 'TODO',
    WETH: 'TODO',
    MTA: '0xcda64b5d3ca85800ab9f7409686985b59f2b9598',
    vMTA: 'TODO',
    mUSD: {
      SaveWrapper: 'TODO',
    },
  } as never,
});

export const ADDRESSES: Addresses = ADDRESSES_BY_NETWORK[CHAIN_ID];

export const EMOJIS = {
  error: '❌',
  approve: '✔️',
  depositSavings: '🏦',
  swap: '🔄',
  mint: '💵',
  mintMulti: '💵',
  redeem: '💱',
  redeemMasset: '💱',
  withdraw: '🏧',
  link: '🔗',
  exit: '🚪',
  claimReward: '🏆',
  claimWeeks: '🏆',
  claimWeek: '🏆',
  'stake(uint256)': '🔒',
};

export const DAPP_VERSION =
  process.env.REACT_APP_VERSION || process.env.npm_package_version;

export const STABLECOIN_SYMBOLS = [
  'BUSD',
  'DAI',
  'SUSD',
  'TUSD',
  'USDC',
  'USDT',
  'mUSD',
];

export const rpcUrl = `${process.env.REACT_APP_RPC_URL}${process.env.REACT_APP_RPC_API_KEY}`;

export const CONNECTORS: Connector[] = [
  {
    id: 'injected',
    subType: 'metamask',
    label: 'MetaMask',
  },
  {
    id: 'injected',
    subType: 'brave',
    label: 'Brave',
  },
  {
    id: 'injected',
    subType: 'meetOne',
    label: 'MEET.ONE',
  },
  { id: 'fortmatic', label: 'Fortmatic' },
  { id: 'portis', label: 'Portis' },
  { id: 'authereum', label: 'Authereum' },
  { id: 'squarelink', label: 'Squarelink' },
  { id: 'torus', label: 'Torus' },
  { id: 'walletconnect', label: 'WalletConnect' },
  { id: 'walletlink', label: 'WalletLink' },
  { id: 'frame', label: 'Frame' },
];
