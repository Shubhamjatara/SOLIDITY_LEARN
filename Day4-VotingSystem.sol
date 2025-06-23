// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Day4VotingSysystem {
    mapping(address => bool) private votingInfo;
    struct candiate {
        string name;
        uint256 votes;
    }
    candiate[] private candidates;

    constructor() {
        candidates.push(candiate({name: "Binayak", votes: 0}));
        candidates.push(candiate({name: "Nikita", votes: 0}));
        candidates.push(candiate({name: "Vineeth", votes: 0}));
        candidates.push(candiate({name: "Naman", votes: 0}));
    }

    function voteForCandidate(string memory name) public {
        address sender = msg.sender;

        // Check if the sender has already voted
        require(!votingInfo[sender], "You have already voted");

        // Loop through candidates
        for (uint256 i = 0; i < candidates.length; ++i) {
            candiate storage c1 = candidates[i];
            if (keccak256(bytes(c1.name)) == keccak256(bytes(name))) {
                votingInfo[sender] = true;
                c1.votes += 1;
                return; // exit after successful vote
            }
        }

        revert("Candidate not found"); // if name didn't match any
    }

    function getVote(string memory name) public view returns (uint256) {
        require(votingInfo[msg.sender], "You have to vote first");
        for (uint256 i = 0; i < candidates.length; i++) {
            candiate storage c1 = candidates[i];
            if (keccak256(bytes(c1.name)) == keccak256(bytes(name)))
                return c1.votes; // match found
        }
        return 0;
    }
}
