#!/bin/bash
# Optimized password cracking with John the Ripper

# Sample usage for generic hash cracking:
# Replace "hashes.txt" with the file containing hashes and "password_list.txt" with your password file.

HASH_FILE="hashes.txt"
PASSWORD_LIST="password_list.txt"

# Command to run John the Ripper
john --wordlist=$PASSWORD_LIST --format=raw-md5 $HASH_FILE

# Explanation:
# --wordlist : specifies the wordlist to use
# --format : specifies the hash format (adjust based on hash type, e.g., raw-md5 for MD5 hashes)
# Note: Adjust `--format` based on the hash type of your target hashes.
