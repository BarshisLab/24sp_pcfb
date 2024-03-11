#### examples from chapter 5

# save multiple files into one text file:
curl "https://www.uniprot.org/uniprot/A0A023IWG[0-3].txt" > A0A023IWGs.txt
curl "https://www.uniprot.org/uniprot/A0A023IWE[1-3].txt" > A0A023IWEs.txt

# save each protein's file in its own numbered file 
# Mac
curl "https://www.uniprot.org/uniprot/A0A023IWG[0-3].txt" -o A0A023IWG#1.txt
curl "https://www.uniprot.org/uniprot/A0A023IWE[1-3].txt" -o A0A023IWE#1.txt
# Windows git bash
curl "https://www.uniprot.org/uniprot/A0A023IWG[0-3].txt" -O
curl "https://www.uniprot.org/uniprot/A0A023IWE[1-3].txt" -O

# save specific files with original names
# Mac
curl "http://files.rcsb.org/view/{1ema,1gfl,1g7k,1xmz}.pdb" -o #1.pdb
# Windows git bash
curl "http://files.rcsb.org/view/{1ema,1gfl,1g7k,1xmz}.pdb" -O

#### examples from chapter 6

# the lines to set your path in ~/.bash_profile or ~/.zshrc
#Windows git bash and mac terminal bash
.bash_profile
#Ubuntu
.bashrc
#Mac zsh
.zshrc

export PATH="$PATH:$HOME/scripts"
set -o noclobber

# general crossref search format
http://www.crossref.org/openurl/?title=Nature&date=2008&volume=452&spage=745&pid=demo@practicalcomputing.org

#  crossref search format returning XML
http://www.crossref.org/openurl/?title=Nature&date=2008&volume=452&spage=745&pid=demo@practicalcomputing.org&redirect=false&format=unixref

# reformatted for a regular expression
curl "http://www.crossref.org/openurl/?title=\1\&date=\2\&volume=\3\&spage=\4\&pid=demo@practicalcomputing.org\&redirect=false\&format=unixref" 

