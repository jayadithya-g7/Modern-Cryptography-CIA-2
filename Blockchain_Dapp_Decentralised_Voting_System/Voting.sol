//choose license and compiler version
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Voting{ //to create a contract for a student
    struct Candidate{
        uint id; 
        string name; //to store candidate's name
        uint voteCount;//to store candidate's vote count
…

    }

    function getVoteCount(uint _candidateId)public view returns (uint) {
        require(_candidateId >0 && _candidateId <= candidateCount, "Invalid Candidate Id");
        return candidates[_candidateId].voteCount;

    }
}
