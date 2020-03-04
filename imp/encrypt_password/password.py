#!/usr/bin/python3
import hashlib


str = hashlib.sha512(b'redhat')

str_hex = str.hexdigest()

print(str_hex)



