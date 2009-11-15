#!/usr/bin/python

import sys, os

#the three characters that must come before the file path
trackHeader = "\0\x18\0"
#the string that must be at the beginning of the file
headerString = "\0"*3 + "\07iriver UMS PLA" + "\0"*14 + "Quick List"

fileStrings = []

#returns a string of length starting with string followed by null characters
def fillNullToEnd(string, length=512):
	nullLength = length - len(string)
	return string + ("\0" * nullLength)

#returns a string will a null character in every even index
def nullEverySecond(string):
	l = []
	for i in string:
		l.append(i)
		l.append("\0")
	return "".join(l)

def main():
	if len(sys.argv) > 1:
		if sys.argv[1] == "--help":
			print "Usage: Command [output file]\nA list of files is read from stdin."
			return
		f = open(sys.argv[1], "w")
	else:
		print "No output file specified."
		return


	#first add the header
	fileStrings.append(fillNullToEnd(headerString))
	
	#get all the input (each line is a file)
	files = []
	while True:
		try:
			files.append(raw_input())
		except EOFError:
			break
	
	#get the path from the start of the disk to the current folder
	path = os.path.abspath(files[1])
	folders = path.split("/")
	for i in range(len(folders))[1:]:
		mount = "/".join(folders[:-i])
		if os.path.ismount(mount):
			#we dont want anything higher up than the mount point
			#since the playlist will be stored on the disk
			base = os.path.split(path)[0][len(mount):]
			break
	
	if base[-1] != "/":
		base = base + "/"
	#the playlist wants backslashes
	base = base.replace("/", "\\")
	base = nullEverySecond(base)
	
	for file in files:
		#these are the only supported formats
		if file[-3:].lower() in ("ogg", "mp3", "wma"):
			string = nullEverySecond(file)
			string = fillNullToEnd(trackHeader + base + string)
			fileStrings.append(string)
			print "Added to playlist:", file
		else:
			print "Not a supported format:", file
			

	#put all the strings together and write to the file
	f.write("".join(fileStrings))
	f.close()

if __name__ == "__main__":
	main()
