# MIT License
#
# Copyright (c) 2020 Ferhat Geçdoğan All Rights Reserved.
# Distributed under the terms of the MIT License.
#
#

import os, system, strutils

import nimocatpkg/languages, nimocatpkg/colorized

var version: string = "0.1-beta-1"

proc ReadFile(filename: string): void =
    if filename.contains(".cpp"):
        for line in lines filename:
            languages.CPlusPlus(line)
    elif filename.contains(".fls"):
        for line in lines filename:
            languages.FlaScript(line)
    else:
        for line in lines filename:
            languages.Regular(line)

proc HelpFunction(argument: string): void =
    stdout.write WBOLD_RED_COLOR, "Fegeya " 

    stdout.write WBOLD_GREEN_COLOR, "NimoCat " 
   
    
   
    echo WBOLD_BLUE_COLOR, version
      
    
    echo WBOLD_YELLOW_COLOR, "Colorized 'cat' implementation."
    
    
    echo WBOLD_LIGHT_MAGENTA_COLOR, argument, " [file]"

# Check argc
if paramCount() < 1:
    HelpFunction(paramStr(0))
    quit(1)
else:
    # Get argv[1]
    var filename: string = paramStr(1)
    ReadFile(filename)
