import os
import sys
from termcolor import colored
import argparse

def txfind(filetype, str, pth):
    for root, dirs, files in os.walk(pth):
        for file in files:
            if file.endswith(filetype):
                fullpath = os.path.join(os.path.abspath(root),file)
                with open(fullpath, 'r') as searchfile:
                    for line in searchfile:
                        if str in line:
                            print(fullpath)
                            print(colored(line, 'green'))

def Main():
    parser = argparse.ArgumentParser()
    requiredNamed = parser.add_argument_group('required arguments')
    requiredNamed.add_argument('-f','--file', help="Type of files to search. Example: .c, .css, .html, .py")
    requiredNamed.add_argument('-p','--path', help="Path to search files in.")
    requiredNamed.add_argument('-s','--string', help="String to search in files.")
    args = parser.parse_args()

    ex = False
    if args.file == None:
        print('Error: must specify a file extention. -f')
        ex = True
    if args.string == None:
        print('Error: must specify a string. -s')
        ex= True
    if args.path == None:
        print('Error: must specify a path. -p')
        ex = True

    if ex == False:
        txfind(args.file, args.string, args.path)

if __name__ == '__main__':
    Main()
