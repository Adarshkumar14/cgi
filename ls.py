#!/usr/bin/python3
import subprocess
print("content-type: text/html")
print()
cmd = subprocess.getoutput("sudo docker ps -a")
print(cmd)
