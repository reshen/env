#!/bin/sh

# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode

path=$1
old=$2
new=$5

# Winmerge (windows)
#"/cygdrive/c/Program Files (x86)/WinMerge/WinMergeU.EXE" /e /ub /dl other /dr local "$old" "$new" | cat

# Diffmerge (windows) 
#"C:/Program Files (x86)/DiffMerge/DiffMerge.exe" "$old" "$new" --title1="Old" --title2="New $path" | cat

# Meld (ubuntu)
meld $old $new
