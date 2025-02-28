#!/bin/zsh

# FIXME use hardhat-typechain!

mkdir -p ./lib/abis/combined

cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/GSN/Context.sol/Context.json ./lib/abis/combined/Context.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/access/Roles.sol/Roles.json ./lib/abis/combined/Roles.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/access/roles/MinterRole.sol/MinterRole.json ./lib/abis/combined/MinterRole.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/math/SafeMath.sol/SafeMath.json ./lib/abis/combined/SafeMath.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/ownership/Ownable.sol/Ownable.json ./lib/abis/combined/Ownable.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/ERC20.sol/ERC20.json ./lib/abis/combined/ERC20.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol/ERC20Burnable.json ./lib/abis/combined/ERC20Burnable.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol/ERC20Mintable.json ./lib/abis/combined/ERC20Mintable.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol/ERC20Detailed.json ./lib/abis/combined/ERC20Detailed.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/IERC20.sol/IERC20.json ./lib/abis/combined/IERC20.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/token/ERC20/SafeERC20.sol/SafeERC20.json ./lib/abis/combined/SafeERC20.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/utils/Address.sol/Address.json ./lib/abis/combined/Address.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/contracts/utils/SafeCast.sol/SafeCast.json ./lib/abis/combined/SafeCast.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/Initializable.sol/Initializable.json ./lib/abis/combined/Initializable.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/AdminUpgradeabilityProxy.sol/AdminUpgradeabilityProxy.json ./lib/abis/combined/AdminUpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/BaseAdminUpgradeabilityProxy.sol/BaseAdminUpgradeabilityProxy.json ./lib/abis/combined/BaseAdminUpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/BaseUpgradeabilityProxy.sol/BaseUpgradeabilityProxy.json ./lib/abis/combined/BaseUpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/InitializableAdminUpgradeabilityProxy.sol/InitializableAdminUpgradeabilityProxy.json ./lib/abis/combined/InitializableAdminUpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/InitializableUpgradeabilityProxy.sol/InitializableUpgradeabilityProxy.json ./lib/abis/combined/InitializableUpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/Proxy.sol/Proxy.json ./lib/abis/combined/Proxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/upgradeability/UpgradeabilityProxy.sol/UpgradeabilityProxy.json ./lib/abis/combined/UpgradeabilityProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/@openzeppelin/upgrades/contracts/utils/Address.sol/OpenZeppelinUpgradesAddress.json ./lib/abis/combined/OpenZeppelinUpgradesAddress.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/Migrations.sol/Migrations.json ./lib/abis/combined/Migrations.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/governance/ClaimableGovernor.sol/ClaimableGovernor.json ./lib/abis/combined/ClaimableGovernor.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/governance/DelayedClaimableGovernor.sol/DelayedClaimableGovernor.json ./lib/abis/combined/DelayedClaimableGovernor.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/governance/Governable.sol/Governable.json ./lib/abis/combined/Governable.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/governance/IncentivisedVotingLockup.sol/IncentivisedVotingLockup.json ./lib/abis/combined/IncentivisedVotingLockup.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/governance/InitializableGovernableWhitelist.sol/InitializableGovernableWhitelist.json ./lib/abis/combined/InitializableGovernableWhitelist.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IBasketManager.sol/IBasketManager.json ./lib/abis/combined/IBasketManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IIncentivisedVotingLockup.sol/IIncentivisedVotingLockup.json ./lib/abis/combined/IIncentivisedVotingLockup.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IMStableHelper.sol/IMStableHelper.json ./lib/abis/combined/IMStableHelper.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IMasset.sol/IMasset.json ./lib/abis/combined/IMasset.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IMetaToken.sol/IMetaToken.json ./lib/abis/combined/IMetaToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/INexus.sol/INexus.json ./lib/abis/combined/INexus.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IPlatformIntegration.sol/IPlatformIntegration.json ./lib/abis/combined/IPlatformIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/IRewardsDistributionRecipient.sol/IRewardsDistributionRecipient.json ./lib/abis/combined/IRewardsDistributionRecipient.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/ISavingsContract.sol/ISavingsContract.json ./lib/abis/combined/ISavingsContract.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/ISavingsManager.sol/ISavingsManager.json ./lib/abis/combined/ISavingsManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/interfaces/ISavingsManager.sol/IRevenueRecipient.json ./lib/abis/combined/IRevenueRecipient.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/BasketManager.sol/BasketManager.json ./lib/abis/combined/BasketManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/Masset.sol/Masset.json ./lib/abis/combined/Masset.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/forge-validator/ForgeValidator.sol/ForgeValidator.json ./lib/abis/combined/ForgeValidator.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/forge-validator/IForgeValidator.sol/IForgeValidator.json ./lib/abis/combined/IForgeValidator.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/liquidator/ICurveMetaPool.sol/ICurveMetaPool.json ./lib/abis/combined/ICurveMetaPool.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/liquidator/ILiquidator.sol/ILiquidator.json ./lib/abis/combined/ILiquidator.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/liquidator/IUniswapV2Router02.sol/IUniswapV2Router02.json ./lib/abis/combined/IUniswapV2Router02.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/liquidator/Liquidator.sol/Liquidator.json ./lib/abis/combined/Liquidator.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/AaveIntegration.sol/AaveIntegration.json ./lib/abis/combined/AaveIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/AaveV2Integration.sol/AaveV2Integration.json ./lib/abis/combined/AaveV2Integration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/CompoundIntegration.sol/CompoundIntegration.json ./lib/abis/combined/CompoundIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/IAaveLendingPoolV1.json ./lib/abis/combined/IAaveLendingPoolV1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/IAaveATokenV2.json ./lib/abis/combined/IAaveATokenV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/ILendingPoolAddressesProviderV2.json ./lib/abis/combined/ILendingPoolAddressesProviderV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/ILendingPoolAddressesProviderV1.json ./lib/abis/combined/ILendingPoolAddressesProviderV1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/IAaveATokenV1.json ./lib/abis/combined/IAaveATokenV1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/IAave.sol/IAaveLendingPoolV2.json ./lib/abis/combined/IAaveLendingPoolV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/ICompound.sol/ICERC20.json ./lib/abis/combined/ICERC20.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/platform-integrations/InitializableAbstractIntegration.sol/InitializableAbstractIntegration.json ./lib/abis/combined/InitializableAbstractIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/shared/MStableHelper.sol/MStableHelper.json ./lib/abis/combined/MStableHelper.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/shared/MassetHelpers.sol/MassetHelpers.json ./lib/abis/combined/MassetHelpers.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/masset/shared/MassetStructs.sol/MassetStructs.json ./lib/abis/combined/MassetStructs.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/meta-token/GovernedMinterRole.sol/GovernedMinterRole.json ./lib/abis/combined/GovernedMinterRole.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/meta-token/MetaToken.sol/MetaToken.json ./lib/abis/combined/MetaToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/nexus/Nexus.sol/Nexus.json ./lib/abis/combined/Nexus.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/RewardsDistributionRecipient.sol/RewardsDistributionRecipient.json ./lib/abis/combined/RewardsDistributionRecipient.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/RewardsDistributor.sol/RewardsDistributor.json ./lib/abis/combined/RewardsDistributor.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/staking/PlatformTokenVendor.sol/PlatformTokenVendor.json ./lib/abis/combined/PlatformTokenVendor.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/staking/StakingRewards.sol/StakingRewards.json ./lib/abis/combined/StakingRewards.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/staking/StakingRewardsWithPlatformToken.sol/StakingRewardsWithPlatformToken.json ./lib/abis/combined/StakingRewardsWithPlatformToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/rewards/staking/StakingTokenWrapper.sol/StakingTokenWrapper.json ./lib/abis/combined/StakingTokenWrapper.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/savings/SavingsContract.sol/SavingsContract.json ./lib/abis/combined/SavingsContract.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/savings/SavingsManager.sol/SavingsManager.json ./lib/abis/combined/SavingsManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/CommonHelpers.sol/CommonHelpers.json ./lib/abis/combined/CommonHelpers.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/IBasicToken.sol/IBasicToken.json ./lib/abis/combined/IBasicToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/InitializableModule.sol/InitializableModule.json ./lib/abis/combined/InitializableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/InitializableModuleKeys.sol/InitializableModuleKeys.json ./lib/abis/combined/InitializableModuleKeys.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/InitializablePausableModule.sol/InitializablePausableModule.json ./lib/abis/combined/InitializablePausableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/InitializableToken.sol/InitializableToken.json ./lib/abis/combined/InitializableToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/Module.sol/Module.json ./lib/abis/combined/Module.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/ModuleKeys.sol/ModuleKeys.json ./lib/abis/combined/ModuleKeys.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/PausableModule.sol/PausableModule.json ./lib/abis/combined/PausableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/Root.sol/Root.json ./lib/abis/combined/Root.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/SignedSafeMath128.sol/SignedSafeMath128.json ./lib/abis/combined/SignedSafeMath128.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/shared/StableMath.sol/StableMath.json ./lib/abis/combined/StableMath.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/upgradability/DelayedProxyAdmin.sol/DelayedProxyAdmin.json ./lib/abis/combined/DelayedProxyAdmin.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/upgradability/Proxies.sol/VaultProxy.json ./lib/abis/combined/VaultProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/upgradability/Proxies.sol/MassetProxy.json ./lib/abis/combined/MassetProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/upgradability/Proxies.sol/LiquidatorProxy.json ./lib/abis/combined/LiquidatorProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/upgradability/Proxies.sol/BasketManagerProxy.json ./lib/abis/combined/BasketManagerProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/governance/Ejector.sol/Ejector.json ./lib/abis/combined/Ejector.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/governance/MockGovernable.sol/MockGovernable.json ./lib/abis/combined/MockGovernable.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/integrations/AbstractBuyAndMint.sol/AbstractBuyAndMint.json ./lib/abis/combined/AbstractBuyAndMint.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/integrations/MintWith1Inch.sol/IOneSplit.json ./lib/abis/combined/IOneSplit.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/integrations/MintWith1Inch.sol/MintWith1Inch.json ./lib/abis/combined/MintWith1Inch.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/integrations/MintWithKyber.sol/MintWithKyber.json ./lib/abis/combined/MintWithKyber.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/integrations/MintWithKyber.sol/KyberNetworkProxyInterface.json ./lib/abis/combined/KyberNetworkProxyInterface.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockBasketManager.sol/MockBasketManager1.json ./lib/abis/combined/MockBasketManager1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockBasketManager.sol/MockBasketManager.json ./lib/abis/combined/MockBasketManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockBasketManager.sol/MockBasketManager3.json ./lib/abis/combined/MockBasketManager3.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockBasketManager.sol/MockBasketManager2.json ./lib/abis/combined/MockBasketManager2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockMasset.sol/MockMasset1.json ./lib/abis/combined/MockMasset1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/MockMasset.sol/MockMasset.json ./lib/abis/combined/MockMasset.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/DeadIntegration.sol/DeadIntegration.json ./lib/abis/combined/DeadIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MaliciousAaveIntegration.sol/MaliciousAaveIntegration.json ./lib/abis/combined/MaliciousAaveIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockATokenV2.json ./lib/abis/combined/MockATokenV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockAaveV1.json ./lib/abis/combined/MockAaveV1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockAaveV2.json ./lib/abis/combined/MockAaveV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockAaveIntegration.json ./lib/abis/combined/MockAaveIntegration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockAaveV2Integration.json ./lib/abis/combined/MockAaveV2Integration.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockAave.sol/MockAToken.json ./lib/abis/combined/MockAToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockCToken.sol/MockCToken.json ./lib/abis/combined/MockCToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockCompoundIntegration.sol/MockCompoundIntegration2.json ./lib/abis/combined/MockCompoundIntegration2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockCompoundIntegration.sol/MockCompoundIntegration1.json ./lib/abis/combined/MockCompoundIntegration1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockUpgradedAaveIntegration.sol/AaveIntegrationV2.json ./lib/abis/combined/AaveIntegrationV2.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/masset/platform-integrations/MockUpgradedAaveIntegration.sol/AaveIntegrationV3.json ./lib/abis/combined/AaveIntegrationV3.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/nexus/MockNexus.sol/MockNexus.json ./lib/abis/combined/MockNexus.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/rewards/MockRewardsDistributionRecipient.sol/MockRewardsDistributionRecipient.json ./lib/abis/combined/MockRewardsDistributionRecipient.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/savings/MockRevenueRecipient.sol/MockRevenueRecipient.json ./lib/abis/combined/MockRevenueRecipient.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/savings/MockSavingsManager.sol/MockSavingsManager.json ./lib/abis/combined/MockSavingsManager.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockCommonHelpers.sol/MockCommonHelpers.json ./lib/abis/combined/MockCommonHelpers.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockCurveMetaPool.sol/MockCurveMetaPool.json ./lib/abis/combined/MockCurveMetaPool.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockERC20.sol/MockERC20.json ./lib/abis/combined/MockERC20.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockERC20.sol/MockUSDT.json ./lib/abis/combined/MockUSDT.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockERC20WithFee.sol/MockERC20WithFee.json ./lib/abis/combined/MockERC20WithFee.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockERC20WithFee.sol/ERC20WithFee.json ./lib/abis/combined/ERC20WithFee.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockInitializableModule.sol/MockInitializableModule.json ./lib/abis/combined/MockInitializableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockInitializablePausableModule.sol/MockInitializablePausableModule.json ./lib/abis/combined/MockInitializablePausableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockInitializableToken.sol/MockInitializableToken.json ./lib/abis/combined/MockInitializableToken.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockInitializableTokenWithFee.sol/MockInitializableTokenWithFee.json ./lib/abis/combined/MockInitializableTokenWithFee.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockModule.sol/MockModule.json ./lib/abis/combined/MockModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockPausableModule.sol/MockPausableModule.json ./lib/abis/combined/MockPausableModule.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockProxy.sol/MockProxy.json ./lib/abis/combined/MockProxy.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockRoot.sol/MockRoot.json ./lib/abis/combined/MockRoot.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockTrigger.sol/MockTrigger.json ./lib/abis/combined/MockTrigger.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/MockUniswap.sol/MockUniswap.json ./lib/abis/combined/MockUniswap.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/PublicStableMath.sol/PublicStableMath.json ./lib/abis/combined/PublicStableMath.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/shared/SignedSafeMath128Mock.sol/SignedSafeMath128Mock.json ./lib/abis/combined/SignedSafeMath128Mock.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/upgradability/MockImplementation.sol/MockImplementationV1.json ./lib/abis/combined/MockImplementationV1.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/upgradability/MockImplementation.sol/MockImplementationV3.json ./lib/abis/combined/MockImplementationV3.json
cp ./node_modules/@mstable/protocol/build/contracts/contracts/z_mocks/upgradability/MockImplementation.sol/MockImplementationV2.json ./lib/abis/combined/MockImplementationV2.json

cp ./lib/abis/overrides/*.json ./lib/abis/combined

yarn typechain --target ethers-v4 --outDir src/typechain './lib/abis/combined/*.json'
