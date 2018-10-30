pragma solidity ^0.4.24;

/**
 * The contractName contract does this and that...
 */
contract Voting {

	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	mapping (uint => Candidate) public candidates;

	uint public candidatesCount;

	function Voting () public {
		addCandidate("Person 1");
		addCandidate("Person 2");
	}

	function addCandidate (string _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

	}
	
}
