#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
uname = mydata.getvalue("uname")
passwd = mydata.getvalue("passd")
m = "sudo docker  login -u {} -p {} ".format(uname,passwd)
output = subprocess.getoutput(m)
print(output)
