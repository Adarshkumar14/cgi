#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
img = mydata.getvalue("contId")
m = "sudo docker rmi  {}".format(img)
output = subprocess.getoutput(m)
print(output)
