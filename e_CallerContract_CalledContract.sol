pragma solidity ^0.4.0;

contract CallerContract {
	CalledContract toBeCalled = CalledContract(0x0dcd2f752394c41875e259e00bb44fd505297caf);

	function getNumber() constant returns(uint) {
		return toBeCalled.getNumber();
	}

	function getWords() constant returns(bytes32) {
		return toBeCalled.getWords();
	}
}

contract CalledContract {
	uint number = 100;
	bytes32 words = 'Hello vivek';

	function getNumber() constant returns(uint) {
		return number;
	}
	function getWords() constant returns(bytes32) {
		return words;
	}
}
