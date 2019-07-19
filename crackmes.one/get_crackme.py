#!/usr/bin/env python3
import os
import sys
import wget
import zipfile
import subprocess
from urllib.parse import urlparse

password = b'crackmes.one'

if __name__ == '__main__':

	if len(sys.argv) == 2:
		url = sys.argv[1]
	else:
		url = input('enter url : ')

	u_parse = urlparse(url)
	token = u_parse.path.split('/')[-1]
	print(f'downloading "{token}.zip"... ', end='')

	file_name = wget.download(f'https://crackmes.one/static/crackme/{token}.zip', out=f'zips/{token}.zip', bar=None)

	print('\tdone')

	print('extracting files... ', end='')
	z_file = zipfile.ZipFile(file_name)
	z_file.setpassword(password)
	z_file.extractall()

	if not os.path.isfile(file_name):
		print('something went wrong')
		exit(1)

	subprocess.check_call(['7z', 'x', 'crackme.7z'], stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
	print('\t\t\t\tdone')

	print('cleaning and sorting files... ', end='')
	os.remove('crackme.7z')
	os.mkdir(f'bins/{token}')
	os.system(f'mv crackme bins/{token}/')
	print('\t\t\tdone')
