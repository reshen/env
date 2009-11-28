#!/bin/sh

# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode

#echo Launching WinMergeU.exe: "`cygpath -aw $2`" "`cygpath -aw $5`"

"/cygdrive/c/Program Files (x86)/WinMerge/WinMergeU.EXE" /e /ub /dl other /dr local "`cygpath -aw $2`" "`cygpath -aw $5`" | cat

