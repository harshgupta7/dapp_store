pragma solidity ^0.4.4;

contract Adoption {

	address[16] public adopters;

	function adopt(uint petid) public returns (uint){
		require(petid>=0 && petid<16);
		adopters[petid] = msg.sender;
		return petid;
	}

	function getAdopters() public view returns (address[16]){
		return adopters;
	}
}

