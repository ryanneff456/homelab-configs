## Overview
This virtual machine is configured for penetration testing practice and security research.  
It connects to **NVWA hosted on a Raspberry Pi** within my LAN, allowing ethical testing of web application vulnerabilities.-

## Setup Process
1. Installed **Kali Linux** in VirtualBox/VMware  
2. Configured network to allow **LAN access** to the Raspberry Pi hosting NVWA  
3. Installed pentesting tools:
   - **Burp Suite** for intercepting HTTP requests  
   - **Nmap** for network scanning and enumeration  
   - **Metasploit** for exploit testing  
4. Verified connectivity to NVWA on the Pi via browser and tools

## Pentesting Practice

| Tool / App          | Purpose                                                            |
|---------------------|--------------------------------------------------------------------|
| NVWA (hosted on Pi) | Web application to practice attacks like SQL injection, XSS, CSRF  |
| Burp Suite          | Intercept and analyze HTTP traffic                                 |
| Nmap                | Network scanning and reconnaissance                                |
| Metasploit          | Exploit testing in a controlled lab                                |
| Wireshark           | Capture and analyze network to study protocols and vulnerabilities |
| MySQL               | Used in DVWA for practicing SQL injection attacks                  |
| John the Ripper     | Hash cracking and password security testing                        |


## Connecting to NVWA
# Test connectivity from Kali VM to Pi
ping 192.168.1.184

# Access DVWA in browser
http://192.168.1.184:3000

## Skills Demonstrated
-- Virtual machine setup and configuration for ethical pentesting
-- Practical web application sercurity testing (SQLi, XSS, CSRF) on DVWA using MySQL
-- Hash analysis and password cracking with John the Ripper
-- Network traffic capture and analysis with Wireshark
-- LAN configuration and connectivity to hosted services
-- Use of professional pentesting tools (Burp Suite, Metasploit, Nmap) in a controlled lab

## Pentesting Practice Examples
-- SQL Injection: Exploited DVWA login forms using SQL queries; practiced safely on MySQL database
-- XSS & CSRF: Tested web forms for cross-site scripting and request forgery vulnerabilities
-- Password Cracking: Used John thr Ripper to test password hashes in DVWA
-- Network Analysis: Captured and analyzed HTTP and other traffic using Wireshark

## Disclaimer
All of these tools were only used in an educational sense on my own DVWA in a controlled and secure LAN setting.
