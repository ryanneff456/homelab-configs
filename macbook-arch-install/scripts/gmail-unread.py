#!/usr/bin/env python3
import imaplib
import sys

## Python script that navigates to the Gmail web server and prints out the number of unread emails I currently have
# Gmail credentials (use app password if 2FA is enabled)
EMAIL = YOUR_EMAIL_HERE
PASSWORD = YOUR_PASSWORD_HERE

IMAP_SERVER = "imap.gmail.com"

## Finds the amount of unread emails by calculating length of the unread emails, and outputting them via print if above 0. Also outputs error in the case of an exception
try:
    mail = imaplib.IMAP4_SSL(IMAP_SERVER)
    mail.login(EMAIL, PASSWORD)
    mail.select("inbox")
    typ, data = mail.search(None, 'UNSEEN')
    unread_count = len(data[0].split())
    print(f"📧 {unread_count}" if unread_count > 0 else "📧 0")
except Exception as e:
    print("📧 Error")
    sys.exit(1)
