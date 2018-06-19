pragma solidity ^0.4.20;

import "./EPI918.sol";

contract kielCoin is EIP918Interface {

	uint public adjustmentInterval;
	bytes32 public challengeNumber;
	uint public miningTarget;
	uint public tokensMinted;
	uint public  blocksPerReadjustment;
	uint public epochCount;

	function mint(uint256 nonce) public returns (bool success) {
		require(msg.sender != address(0));
		hash(nonce);
		uint rewardAmount = _reward();
		tokensMinted += rewardAmount;
		epochCount = _epoch();
		if(epochCount % blocksPerReadjustment === 0) _adjustDifficulty();
		emit Mint(msg.sender, rewardAmount, epochCount, challengeNumber);
		return true;
	}

	function merge(uint256 nonce, address[] mineTokens) public returns (bool success) {

	}

	function hash(uint256 nonce) public returns (bytes32 digest) {

	}

	function _reward() internal returns (uint) {

	}

	function _newEpoch(uint256 nonce) internal returns (uint) {

	}

	function _adjustDifficulty() internal returns (uint) {

	}

	function getAdjustmentInterval() public returns (uint) {

	}

	function getChallengeNumber() public view returns (bytes32) {

	}

	function getMiningDifficulty() public view returns (uint) {

	}

	function getMiningReward() public view returns(uint) {

	}

}