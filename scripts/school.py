#!/usr/bin/env python
import os
import subprocess
import requests


def install_flatpaks():
    flats = ["com.microsoft.Teams"]
    for f in flats:
        verif=input(f"do you want to install {f}? (y/n) ")
        if (verif == "y"):
            print(f"installing {f}")
            subprocess.run(["flatpak", "install", "flathub", "-y", "--noninteractive", f])
            print(f"{f} has been installed")
            verif=input(f"Launch {f}? (y/n) ")
            if (verif == "y"):
                subprocess.run(["flatpak", "run", "com.microsoft.Teams"])
        else:
            print(f"Wont install {f}")

def main():
    install_flatpaks()

main()

unimozerDw='https://www.fisch.lu/Php/download.php?file=unimozer_latest.zip'
r = requests.get(unimozerDw)
r.status_code
