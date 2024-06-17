// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

// Vault contract
// Is the reward gonna be in a single token or multiple tokens?
// We need to swap into a single or manage multiple token rewards.
abstract contract Vault is ERC20 {

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    struct StrategyParams {
        uint256 alloc; // Allocation of the strategy
    }

    /*//////////////////////////////////////////////////////////////
                                Variables
    //////////////////////////////////////////////////////////////*/

    /// @notice address of token for deposit
    address public depositToken;

    /// @notice Strategies count
    uint256 public strategyCount;

    /// @notice Total allocation points
    uint256 public totalAlloc;

    /// @notice Array of strategy contract addresses
    address[] public strategies;

    /// @notice Strategy parameters
    mapping(address => StrategyParams) public strategyParams;

    /// @notice Compounder
    address public compounder;

    /*//////////////////////////////////////////////////////////////
                                Modifers
    //////////////////////////////////////////////////////////////*/

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin");
        _;
    }

    modifier onlyKeeper() {
        require(msg.sender == keeper, "Not keeper");
        _;
    }

    /*//////////////////////////////////////////////////////////////
                                View functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns available rewards of the user
     */
    function availabeRewards() external view returns (uint256) {
        // return available rewards
    }

    /**
     * @notice Returns total rewards
     * @dev We need to manage rewards in multiple tokens if needed
     */
    function totalRewards() external view returns (uint256) {
        // return available rewards
    }

    /*//////////////////////////////////////////////////////////////
                                User operations
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposit funds into the vault
     * @param amount of funds for deposit
     */
    function deposit(uint256 amount) external {
        // Process deposits
    }

    /**
     * @notice Withdraw funds from the vault
     * @param amount to withdraw
     * @param to address to receive funds
     */
    function withdraw(uint256 amount, address to) external {
        // Process withdraw
    }

    /**
     * @notice Claim user rewards
     */
    function claim() external {
        // Claim user rewards
    }

    /*//////////////////////////////////////////////////////////////
                                Admin functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Add a new strategy
     * @param strategy address of the strategy
     * @param params of the strategy
     */
    function addStrategy(
        address strategy,
        StrategyParams calldata params
    ) external onlyAdmin {
        // Process adding new strategy
    }

    /**
     * @notice Removes a strategy
     * @param strategy address
     */
    function removeStrategy(address strategy) external onlyAdmin {
    }

    /**
     * @notice Update strategy params
     * @param strategy address
     * @param params of the strategy
     */
    function updateStrategy(address strategy, StrategyParams calldata params) external onlyAdmin {
        // Update strategy params
    }

    /*//////////////////////////////////////////////////////////////
                                Keeper functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Harvest and re-invest rewards
     */
    function harvest() external onlyKeeper {
        // Process harvest
    }

    /**
     * @notice Rebalance investments
     */
    function rebalance() external onlyKeeper {
        // Process rebalancing
    }
}
