import glob, shutil, os, sys

cpps = glob.glob('*.cpp')

print("""(C) Jeremy C. Zacharia on 7/5/2018
The purpose of this script is to easily maintain an STM32 C++ project
with STM32CubeMX. This is because STM32CubeMX only generates .c files.
This script copies the existing .cpp files to .c files, then after
generating code on the Cube, it converts the newly generated .c files
back to .cpp files. Nice!

RUN THIS SCRIPT BEFORE GENERATING ON CUBE!

""")

print("Deleting all .c files")
cs = glob.glob('*.c')
for i in range(len(cs)):
    print("\t" + cs[i] + " deleted")
    os.remove(cs[i])

print("\nCopying all .cpp to .c files")
for i in range(len(cpps)):
    namec = cpps[i].split(".")
    shutil.copy(cpps[i], namec[0] + ".c")
    print("\t" + cpps[i] + "  ->  " + namec[0] + ".c")

print("\nGo to STM32CubeMX and generate code")
inp = input("Have you done that y/n?\n")
while inp != "y":
    inp = input("How about now y/n?\n")

print("\nCopying all .c to .cpp files")
cs = glob.glob('*.c')
for i in range(len(cs)):
    namec = cs[i].split(".")
    shutil.copy(cs[i], namec[0] + ".cpp")
    print("\t" + cs[i] + "  ->  " + namec[0] + ".cpp")

print("\nDeleting all .c files")
for i in range(len(cs)):
    print("\t" + cs[i] + " deleted")
    os.remove(cs[i])
