//choose license and compiler version
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Voting{ //to create a contract for a student
    struct Candidate{
        uint id; 
        string name; //to store candidate's name
        uint voteCount;//to store candidate's vote count
    }


    mapping(uint => Candidate)public candidates;//give datatype as struct's name
    
    //now we've to ensure user can vote only once

    mapping(address => bool) public hasVoted;

    //now we have to declare a state variable to store the count of ppl who have votes
    uint public candidateCount;

    constructor(string[] memory _candidateName){ //declare array type of the candiate's name that's going to be stored in an array
        candidateCount=0;

        for(uint i = 0; i< _candidateName.length; i++ ){
            //pass individual candidate's name as a parameter
            addCandidate(_candidateName[i]);

            //so we successfully created a successful constructor function

        }

    }

    function addCandidate(string memory name) private {
        candidateCount++;
        //access the mapping, as passed the struct as a value inside it
        candidates[candidateCount] = Candidate(candidateCount, name,0); //as initially, the vote for that person is zero
    }

    function vote(uint _candidateId)public {
        require(_candidateId >0 && _candidateId <= candidateCount, "Invalid Candidate Id");

        //to check vote rendundancy now...to make sure user cannot vote again

        require(!hasVoted[msg.sender], "Already Voted");
        candidates[_candidateId].voteCount++;

        hasVoted[msg.sender] = true;


    }

    function getVoteCount(uint _candidateId)public view returns (uint) {
        require(_candidateId >0 && _candidateId <= candidateCount, "Invalid Candidate Id");
        return candidates[_candidateId].voteCount;

    }

}

