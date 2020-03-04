#!/usr/bin/python3
#from passlib.hash import pbkdf2_sha256

#from passlib.hash import pbkdf2_sha256
import hashlib

# generate new salt, and hash a password
hash = hashlib.sha512("redhat")
print (hash)


