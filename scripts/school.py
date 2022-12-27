#!/usr/bin/env python
import os
import subprocess
import requests


flatTeams = "com.microsoft.Teams"
verif=input("do you want to install Teams? (y/n) ")
if (verif == "y"):
    print("installing Teams")
    subprocess.run(["flatpak", "install", "flathub", "-y", "--noninteractive", flatTeams])
    print("Teams has been installed")
    verif=input("Launch Teams? (y/n) ")
    if (verif == "y"):
        subprocess.run(["flatpak", "run", "com.microsoft.Teams"])
else:
    print("Wont install Teams")


unimozerDw='https://www.fisch.lu/Php/download.php?file=unimozer_latest.zip'
r = requests.get(unimozerDw)

