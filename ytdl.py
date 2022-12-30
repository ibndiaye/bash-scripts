import os
from pytube import YouTube
from pytube import Playlist
import subprocess


def download(link,path):
  if 'playlist' in link:
        yt = Playlist(link)
        try:
            print(f'Downloading: {yt.title}')
            for video in yt.videos:
                video.streams.get_highest_resolution().download()
                print(f'Downloaded {yt.title}')
            print()
        except:
            print("Download failed")
  else:
      yt = YouTube(link)
      try:
            # for video in yt:
            print(f'Downloading: {yt.title}')
            yt.streams.get_highest_resolution().download()
      except:
            print("Download failed")

            # yt.download()
            # subprocess.run(["mv", "yt.title", "$HOME/", {path}])
    


print("Meant to run on linux but will work on windows with an empty path\nDefault path is working directory, linux users start in their '$HOME' ")
print("Current working directory: ", os.getcwd())

link=input("enter the yt link: ")
path=input("enter the save path (leave empty for working directory): ")
download(link,path)