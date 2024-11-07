#!/bin/bash
# Optimized password cracking with Hashcat

# Sample usage for MD5 hash cracking:
# Replace "hashes.txt" with the file containing hashes and "password_list.txt" with your password file.

HASH_FILE="hashes.txt"
PASSWORD_LIST="password_list.txt"
HASH_MODE=0  # 0 is for MD5

# Command to run Hashcat
hashcat -m $HASH_MODE -a 0 -o cracked_hashes.txt $HASH_FILE $PASSWORD_LIST --force

# Explanation:
# -m : specifies the hash type (0 for MD5; consult Hashcat documentation for other hash types)
# -a : attack mode (0 for dictionary attack)
# -o : output file for cracked passwords
# --force : ignore warnings
# Note: Adjust HASH_MODE for different hash types (e.g., 1000 for NTLM).
