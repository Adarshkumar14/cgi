#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
cont = mydata.getvalue("contId")
m = "sudo docker rm -f {}".format(cont)
output = subprocess.getoutput(m)
print(output)
