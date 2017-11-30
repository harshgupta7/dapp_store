pragma solidity ^0.4.11;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoptions.sol";

contract TestAdoption {
	Adoption ad = Adoption(DeployedAddresses.Adoption());
	function testUserAdoption() {
		uint returnid = ad.adopt(8);
		uint expected = 8;
		Assert.equal(returnid, expected, "Adoption of Pet #8 should be recorded");
	}

	function testGetPetOwner(){
		address expected = this;
		address adopter = ad.adopters(8);
		Assert.equal(expected, adopter, "Adopter id");

	}
}