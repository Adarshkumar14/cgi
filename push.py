#!/usr/bin/python3
import cgi
import subprocess
print("Content-Type: text/html")
print()
mydata = cgi.FieldStorage()
img = mydata.getvalue("imgname")
tag = mydata.getvalue("tag")
m = "sudo docker  tag  {}  {} ".format(img,tag)
n="sudo docker push {}".format(tag)
output = subprocess.getoutput(m)
output1=subprocess.getoutput(n)
print(output)
print(output1)
