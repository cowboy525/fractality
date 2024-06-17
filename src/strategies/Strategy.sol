// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

// Vault Contract
// TODO: events
abstract contract Strategy {
    /// @notice address of token for deposit
    address public depositToken;

    struct StrategyParams {
        uint256 alloc; // Allocation of the strategy
    }

    /// @notice Strategies
    uint256 public strategyCount;
    uint256 public totalAlloc;
    address[] public strategies;
    mapping(address => StrategyParams) public strategyParams;

    /// @notice Compounder
    address public compounder;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin");
        _;
    }

    function addStrategy(address strategy, StrategyParams calldata params) external {
        // Add new strategy
        // Rebalance allocation
    }

    function removeStrategy(address strategy) external {
        // Remove strategy
        // Rebalance allocations
    }

    function updateStrategy(StrategyParams calldata params) external {
        // Update strategy params
        // Rebalance allocations
    }

    function deposit(uint256 amount) external {
        // Transfer funds to external strategy
        // Update user balance
    }

    function withdraw(uint256 amount) external {
        // Transfer funds from external strategy to user
        // Update user balance
    }

    function compound() external onlyAdmin {
        // Automatically reinvest earnings from external strategy
    }

    function distributeRewards() external onlyAdmin {
        // Distribute daily rewards to users
    }

    // Other functions for admin management and emergency procedures
}
