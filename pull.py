#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
imgname = mydata.getvalue("imgname")
m = "sudo docker pull  {}".format(imgname)
output = subprocess.getoutput(m)
print(output)
