Blockchain DAPP code and implementation:
-

Blockchain Implementation: Decentralized Voting System Dapp
-
1.	Define the Contract: Voting.sol on Remix IDE
2.	Contract Name: Voting
o	Purpose: A decentralized application allowing students to vote for predefined candidates.
Define Data Structures
1.	Candidate Struct
o	uint id: Unique identifier for each candidate.
o	string name: Name of the candidate.
o	uint voteCount: Total votes received by the candidate.
2.	Mappings and Variables
o	mapping(uint => Candidate) public candidates: A mapping from candidate IDs to Candidate structs, allowing retrieval of each candidate by ID.
o	mapping(address => bool) public hasVoted: A mapping to track if an address has already voted, ensuring each user votes only once.
o	uint public candidateCount: Counter to store the total number of candidates added to the system.
Constructor
1.	Constructor: Voting(string[] memory _candidateName)
o	Input: An array of strings, _candidateName, representing the names of all candidates.
Process:
2.	Initialize candidateCount to 0.
3.	Iterate through the _candidateName array, calling addCandidate for each name to add a candidate to the candidates mapping.
Output: Sets up the list of candidates at contract deployment.
Functions
1.	Function to Add Candidates
o	Function: addCandidate(string memory name) private
o	Input: name - A string representing the candidate's name.
Process:
3.	Increment candidateCount to ensure unique IDs for each candidate.
4.	Add a new Candidate to the candidates mapping with the incremented ID, provided name, and an initial voteCount of 0.
Output: No return value (void function).
2.	Function to Vote for a Candidate
o	Function: vote(uint _candidateId) public
o	Input: _candidateId - The ID of the candidate the user wants to vote for.
Process:
3.	Check if the _candidateId is within the valid range (greater than 0 and less than or equal to candidateCount).
	If not, revert with the error message: "Invalid Candidate Id."
4.	Check if the user (identified by msg.sender) has already voted by referencing hasVoted.
	If true, revert with the message: "Already Voted."
5.	Increment the voteCount for the specified candidate in the candidates mapping.
6.	Set hasVoted[msg.sender] to true to mark the user as having voted.
Output: No return value (void function).
3.	Function to Retrieve Vote Count for a Candidate
o	Function: getVoteCount(uint _candidateId) public view returns (uint)
o	Input: _candidateId - The ID of the candidate whose vote count is to be retrieved.
Process:
3.	Validate _candidateId by ensuring it’s within the valid range (greater than 0 and less than or equal to candidateCount).
	If invalid, revert with the message: "Invalid Candidate Id."
4.	Return the voteCount of the specified candidate from the candidates mapping.
Output: Returns the total votes received by the specified candidate as an unsigned integer.
________________________________________
Flow of the Voting Process
1.	Candidate Registration (Initialization)
o	During contract deployment, the constructor is called with a list of candidate names, which initializes each candidate with an ID and name. All candidates start with a voteCount of 0.
2.	Voting
o	Students can vote by calling the vote function with the candidate ID they wish to vote for.
o	Each student can vote only once, as enforced by the hasVoted mapping.
3.	Viewing Vote Count
o	Any user can call getVoteCount to check the number of votes a specific candidate has received.
________________________________________
Important Considerations
1.	Security:
o	The contract prevents duplicate voting by marking each voter’s address in the hasVoted mapping.
o	Candidate IDs and user voting status are validated to prevent invalid inputs.
2.	Gas Efficiency:
o	The contract keeps data structures minimal and uses mappings, which provide efficient storage and retrieval.
3.	Initialization:
o	Candidates are initialized during deployment, ensuring they are ready for voting as soon as the contract is live.
This design offers a secure, straightforward voting system for students to cast votes for candidates with easy retrieval of voting results.

Output
-
Backend scripting on REMIX IDE
-
![image](https://github.com/user-attachments/assets/82e510dc-4f64-4db6-93c8-ef45076a8d76)
![image](https://github.com/user-attachments/assets/93a7878b-c9ac-4c9e-b345-0a46ec1e4fea)
![image](https://github.com/user-attachments/assets/1e63d41c-8136-4c4b-83d6-3d3b0fdcbdec)



vs code (Proof of work)
-

<img width="959" alt="image" src="https://github.com/user-attachments/assets/aad52a26-4580-4816-90cd-f68e10572435">

![image](https://github.com/user-attachments/assets/3329dd8f-ebaf-4bd8-b76b-a479fccd0a72)


FRONTEND IMPLEMENTATION USING HTML,CSS, NODE JS, and Solidity, YARN WEB3 FRAMEWORK
-

![image](https://github.com/user-attachments/assets/b6c16e89-b78a-4f5a-9cba-48ae62bab80c)
![image](https://github.com/user-attachments/assets/b33adb85-97c1-4d3e-af66-c34423f60190)
![image](https://github.com/user-attachments/assets/553b3879-9d2b-472a-9ef0-5f565451959f)
![image](https://github.com/user-attachments/assets/48373835-202e-4d67-98a0-0df3c969aef8)
invoking metamask
![image](https://github.com/user-attachments/assets/0bfcbb6c-3678-4f72-9811-e46cb7d8b564)
Free testnets can be minted or mined from faucets such as Mumbai faucet polygon or  sepolia mainnet or goerli test faucet which provide free eth tokens for developers..


transaction and voting confirmation
-
![image](https://github.com/user-attachments/assets/5cce3635-19b2-485d-a847-a6f5761c0473)

![image](https://github.com/user-attachments/assets/f699b840-6913-40d6-80fe-312d443909f9)

Conclusion:
-



The implementation of the voting contract in Solidity exemplifies the foundational principles of decentralized applications (DApps) on the Ethereum blockchain. By enabling users to create proposals, cast votes, and retrieve vote counts securely and transparently, this contract demonstrates the potential of smart contracts to facilitate democratic processes in a digital environment. The contract’s design emphasizes security through checks against double voting and ensures that users can interact with the system confidently. This project serves as a practical introduction to blockchain technology, showcasing how decentralized governance can be achieved with the use of immutable and transparent smart contracts. As the world increasingly adopts blockchain solutions, the principles illustrated in this voting contract can be extended to various applications, paving the way for more secure, efficient, and equitable systems..






