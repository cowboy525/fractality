// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

// Strategy Contract
abstract contract Strategy {

    /*//////////////////////////////////////////////////////////////
                                Modifers
    //////////////////////////////////////////////////////////////*/

    modifier onlyVault() {
        // refer to the controller or vault address
        _;
    }

    /*//////////////////////////////////////////////////////////////
                                View functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns claimable rewards
     */
    function availabeRewards() external view returns (uint256) {
        // return available rewards
    }

    /*//////////////////////////////////////////////////////////////
                                Vault operations
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Invest funds
     * @param amount of funds for deposit
     */
    function deposit(uint256 amount) external {
        // Process deposits
    }

    /**
     * @notice Withdraw funds from the strategy
     * @param amount to withdraw
     */
    function withdraw(uint256 amount) external {
        // Process withdraw
    }

    /**
     * @notice Harvest rewards and compound them
     * @dev Re-invest might need to move to the vault
     */
    function compound() external onlyVault {
        // Process compound
    }
    
    /**
     * @notice Claim rewards and send to vault
     */
    function claim() external onlyVault {
    }
}
