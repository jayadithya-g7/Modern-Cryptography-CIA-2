# Modern-Cryptography-CIA-2

Side channel attack
-

Introduction
-
The aim of this project is to explore side-channel attacks in modern cryptography, understanding their concepts, history, algorithms, vulnerabilities, and ways to prevent them.

Concept and History of Side Channel Attacks
-


Side-channel attacks are techniques that exploit information leaked from cryptographic processes, such as timing, power consumption, or electromagnetic emissions. These attacks have evolved over time to target increasingly complex systems.


Types of Side Channel Attacks
-


Common types include:

-	Timing Attacks

-	Power Analysis Attacks

-	Electromagnetic Leaks

-	Acoustic Cryptanalysis

Each type exploits a unique channel through which sensitive information can leak.
 
Loopholes and Vulnerabilities
-


Side-channel attacks target vulnerabilities not in the algorithms themselves, but in the physical implementations of cryptographic systems. Such loopholes often arise due to hardware limitations or insufficient shielding against side-channel leaks.

In our case, we’ll perform a differential power analysis side channel attack attack.
-
These attacks use variations in the electrical power consumption of a targeted device and then breech security in devices by using statistical methods by deriving secret keys from crypto-algorithm.
For our case, we’ll perform it on AES.



Algorithm
-

The code performs a side-channel analysis on a cryptographic system, likely attempting to retrieve a 16-byte encryption key through timing attack analysis. Timing attacks are based on observing the time taken by cryptographic operations, which can reveal information about the secret key in certain encryption algorithms, like AES.

Code Breakdown
-
1.	Data Import:
o	The code reads in a timing_information_and_plaintext.csv file containing timing information and plaintext values.
o	The timing data presumably shows the time it took to process each byte of plaintext under a certain key in the cryptographic algorithm.
2.	S-box (Substitution Box):
o	The S-box array here is from AES and is used to substitute values during encryption.
o	It’s reshaped into a 16x16 matrix for easy indexing using x_axis and y_axis values derived from XOR operations.
3.	Key Hypothesis and Extraction:
o	The keys array represents all possible byte values (0-255).
o	For each byte position (16 in total, corresponding to each byte of the key), the following process is executed:
	XOR Operation: The plaintext byte values are XORed with every possible key byte (256 possibilities).
	S-Box Lookup: The XOR results are transformed using the S-box to simulate the encryption behavior.
	Grouping by MSB: Each result is split into two groups based on the most significant bit (MSB) — group 1 (MSB = 1) and group 0 (MSB = 0).
	Timing Analysis: The timing data is then divided into two groups (based on the MSB) for comparison.
	Difference Calculation: The mean timing difference between the two groups is calculated.
	Key Extraction: The key byte that produces the largest mean timing difference is considered the most likely key byte for that position.
4.	Results:
o	The extracted_keys list holds the most probable byte values for each of the 16 key bytes.

Purpose of the Code
-
This type of code is commonly used in cryptographic research and security auditing to check for vulnerabilities in encryption implementations, particularly side-channel vulnerabilities. The S-box, timing measurements, and the most likely key values indicate that the code might be attempting a correlation power analysis (CPA) or differential power analysis (DPA) to extract the encryption key.


Output
-

![image](https://github.com/user-attachments/assets/5229b1de-27a5-4cf4-83ef-57700ce42c69)


Prevention and Countermeasures
-


Countermeasures include:

-	Masking Techniques

-	Shielding Sensitive Components

-	Using Constant-Time Algorithms

By implementing these strategies, systems can become more resistant to side-channel attacks.

Conclusion
-


Side-channel attacks are a significant threat to modern cryptographic systems. However, with proper countermeasures, the impact of these attacks can be minimized.

