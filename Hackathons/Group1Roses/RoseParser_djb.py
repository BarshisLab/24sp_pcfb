#! /Users/dbarshis/anaconda3/bin/python

import sys
from bs4 import BeautifulSoup

InFileList=sys.argv[1:]
for File in InFileList:
	InFile=open(File, 'r')
	OutFile=open('%s_texted.txt'%(File[:-4]),'w')
	Soup=BeautifulSoup(InFile, 'html.parser')
	OutFile.write(Soup.get_text())
	InFile.close()
	OutFile.close()
