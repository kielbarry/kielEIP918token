contract EIP918Interface {
	function mint(uint256 nonce) public returns (bool success);
	function merge(uint256 nonce, address[] mineTokens) public returns (bool) {}
	function getAdjustmentInterval() public view returns (uint);
	function getChallengeNumber() public view returns (bytes32);
	function getMiningDifficulty() public view returns (uint);
	function getMiningTarget() public view returns (uint);
	function getMiningReward() public view returns (uint);
	function hash(uint256 nonce) public returns (bytes32 digest);
	function _reward() internal returns (uint);
	function _epoch() internal returns (uint);
	function _adjustDifficulty() internal returns (uint);
	event Mint(
		address indexed from, 
		uint reward_amount,
		uint epochCount,
		bytes32 newChallengeNumber)
}