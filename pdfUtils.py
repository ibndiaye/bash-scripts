import PyPDF2
import sys
import os

def merge(path):
    path_input=input('path of pdfs wanting to be merged: ')
    
    merger= PyPDF2.PdfMerger()
    
    if path_input == "":
        path = os.listdir(os.curdir)
    else:
        path = os.listdir(path_input)

    for file in path:
        if file.endswith(".pdf"):
            merger.append(file)
        
    merger.write("combinetest.pdf")
        
def main():
    print('Leave empty for current working directory')
    path=''
    merge(path)

main()