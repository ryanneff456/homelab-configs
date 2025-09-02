#!/bin/bash
## recon.sh - basic network reconnaissance
## Automates network scanning and packet capture using nmap and tcpdump

## Sets the target machine
TARGET="192.168.1.5"  

## Directory where results will be saved
OUTPUT_DIR="$HOME/Kali-Linux-VM/sample_output"
mkdir -p "$OUTPUT_DIR" ## Creates directory if it doesn't exist

## Run Nmap scan with -sC (default scripts), -sV (detects service versions), -oN (save output in normal format)
echo "[*] Running Nmap scan on $TARGET..."
nmap -sC -sV -oN "$OUTPUT_DIR/nmap-scan.txt" $TARGET
echo "[*] Scan saved to $OUTPUT_DIR/nmap-scan.txt"

## Run tcpdump to capture packets for 10 seconds, with -i any (any interface), and -w (write packets to a .pcap file)
echo "[*] Capturing packets with tcpdump..."
sudo timeout 10 tcpdump -i any -w "$OUTPUT_DIR/capture.pcap"
echo "[*] Capture saved to $OUTPUT_DIR/capture.pcap"
