#!/bin/sh

# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode

path="$(cygpath $1)"
old="$(cygpath --mixed --absolute "$2")"
new="$(cygpath --mixed --absolute "$5")"

# Winmerge 
#"/cygdrive/c/Program Files (x86)/WinMerge/WinMergeU.EXE" /e /ub /dl other /dr local "$old" "$new" | cat

# Diffmerge 
"C:/Program Files (x86)/DiffMerge/DiffMerge.exe" "$old" "$new" --title1="Old" --title2="New $path" | cat
