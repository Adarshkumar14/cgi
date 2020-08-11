#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
img = mydata.getvalue("img")
cont = mydata.getvalue("cont")
cport = mydata.getvalue("cport")
tport = mydata.getvalue("tport")
m = "sudo docker  run -dit --name {} -p {}:{} {}".format(cont,cport,tport,img)
output = subprocess.getoutput(m)
print(output)
