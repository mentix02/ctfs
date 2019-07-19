#!/usr/bin/env python2

import re
import pwn

greeting = "You have now entered the Duck Web, and you're in for a honkin' good time."
xor_data = "2906164f2b35301e511b5b144b085d2b56475750164d51515d004e6f206c696e".decode('hex')

flag = ''
for i in range(len(xor_data)):
	flag += chr(ord(xor_data[i]) ^ ord(greeting[i]))

print re.findall(r'picoCTF{.*}', flag)[0]
