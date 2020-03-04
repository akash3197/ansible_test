#!/usr/bin/python3
from passlib.hash import pbkdf2_sha256

# generate new salt, and hash a password
hash = pbkdf2_sha256.hash("redhat")
print (hash)


