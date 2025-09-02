#!/bin/bash
# john-example.sh
# Demonstrates password cracking with John the Ripper.

# Clean up any old files
rm -f test.hash john-output.txt

# Step 1: Create a simple password to crack
echo "mypassword" > password.txt

# Step 2: Generate a hash using mkpasswd (from whois package)
# Format: sha-512 crypt
hash=$(mkpasswd -m sha-512 mypassword)

# Step 3: Save the hash into a file for John
echo "user:$hash" > test.hash

# Step 4: Run John against the hash using the rockyou wordlist
john --wordlist=/usr/share/wordlists/rockyou.txt test.hash > john-output.txt

# Step 5: Show cracked passwords
john --show test.hash >> john-output.txt

echo "Cracking complete. See test.hash and john-output.txt."

