# MIT License
#
# Copyright (c) 2020 Ferhat Geçdoğan All Rights Reserved.
# Distributed under the terms of the MIT License.
#
#

import strutils
import colorized

proc Regular*(line: string): void =
    var data = line.replace("int", WBOLD_RED_COLOR & "int" & WBOLD_WHITE_COLOR)
  
    data = data.replace("long", WBOLD_BLUE_COLOR & "long" & WBOLD_WHITE_COLOR)
    data = data.replace("char", WBOLD_BLUE_COLOR & "char" & WBOLD_WHITE_COLOR)
    data = data.replace("const", WBOLD_LIGHT_BLUE_COLOR & "const" & WBOLD_WHITE_COLOR)
    
    data = data.replace("void", WBOLD_RED_COLOR & "void" & WBOLD_WHITE_COLOR)

    # TODO:
    # Create token() function & add these tokens
    #
    
    data = data.replace("::", WBOLD_LIGHT_YELLOW_COLOR & "::" & WBOLD_WHITE_COLOR)
    data = data.replace("{", WBOLD_LIGHT_YELLOW_COLOR & "{" & WBOLD_WHITE_COLOR)
    data = data.replace("}", WBOLD_LIGHT_YELLOW_COLOR & "}" & WBOLD_WHITE_COLOR)
    data = data.replace("(", WBOLD_LIGHT_YELLOW_COLOR & "(" & WBOLD_WHITE_COLOR)
    data = data.replace(")", WBOLD_LIGHT_YELLOW_COLOR & ")" & WBOLD_WHITE_COLOR)
    data = data.replace("*", WBOLD_LIGHT_YELLOW_COLOR & "*" & WBOLD_WHITE_COLOR)
    data = data.replace("<", WBOLD_LIGHT_YELLOW_COLOR & "<" & WBOLD_WHITE_COLOR)
    data = data.replace(">", WBOLD_LIGHT_YELLOW_COLOR & ">" & WBOLD_WHITE_COLOR)
    data = data.replace("&", WBOLD_LIGHT_YELLOW_COLOR & "&" & WBOLD_WHITE_COLOR)

    echo data
    
proc CPlusPlus*(line: string): void =
    var data = line.replace("int", WBOLD_RED_COLOR & "int" & WBOLD_WHITE_COLOR)

    data = data.replace("long", WBOLD_BLUE_COLOR & "long" & WBOLD_WHITE_COLOR)

    data = data.replace("bool", WBOLD_BLUE_COLOR & "bool" & WBOLD_WHITE_COLOR)
    data = data.replace("char", WBOLD_BLUE_COLOR & "char" & WBOLD_WHITE_COLOR)
    data = data.replace("auto", WBOLD_BLUE_COLOR & "auto" & WBOLD_WHITE_COLOR)

    data = data.replace("if", WBOLD_LIGHT_RED_COLOR & "if" & WBOLD_WHITE_COLOR)
    data = data.replace("else", WBOLD_LIGHT_RED_COLOR & "else" & WBOLD_WHITE_COLOR)

    data = data.replace("for", WBOLD_MAGENTA_COLOR & "for" & WBOLD_WHITE_COLOR)
    data = data.replace("do", WBOLD_MAGENTA_COLOR & "do" & WBOLD_WHITE_COLOR)
    data = data.replace("while", WBOLD_MAGENTA_COLOR & "while" & WBOLD_WHITE_COLOR)

    data = data.replace("void", WBOLD_RED_COLOR & "void" & WBOLD_WHITE_COLOR)
    data = data.replace("main", WBOLD_LIGHT_RED_COLOR & "main" & WBOLD_WHITE_COLOR)
    data = data.replace("asm", WBOLD_LIGHT_RED_COLOR & "asm" & WBOLD_WHITE_COLOR)

    data = data.replace("const", WBOLD_LIGHT_BLUE_COLOR & "const" & WBOLD_WHITE_COLOR)
    data = data.replace("static", WBOLD_LIGHT_BLUE_COLOR & "static" & WBOLD_WHITE_COLOR)
    data = data.replace("extern", WBOLD_LIGHT_BLUE_COLOR & "extern" & WBOLD_WHITE_COLOR)
    data = data.replace("inline", WBOLD_LIGHT_BLUE_COLOR & "inline" & WBOLD_WHITE_COLOR)
    data = data.replace("virtual", WBOLD_LIGHT_BLUE_COLOR & "virtual" & WBOLD_WHITE_COLOR)
    data = data.replace("friend", WBOLD_LIGHT_BLUE_COLOR & "friend" & WBOLD_WHITE_COLOR)

    data = data.replace("public", WBOLD_LIGHT_BLUE_COLOR & "public" & WBOLD_WHITE_COLOR)
    data = data.replace("private", WBOLD_LIGHT_BLUE_COLOR & "private" & WBOLD_WHITE_COLOR)
    data = data.replace("protected", WBOLD_LIGHT_BLUE_COLOR & "protected" & WBOLD_WHITE_COLOR)

    data = data.replace("#include", (WBOLD_YELLOW_COLOR & "#include" & WBOLD_WHITE_COLOR))

    data = data.replace("typedef", WBOLD_MAGENTA_COLOR & "typedef" & WBOLD_WHITE_COLOR)

    data = data.replace("#define", WBOLD_MAGENTA_COLOR & "#define" & WBOLD_WHITE_COLOR)
    data = data.replace("#ifndef", WBOLD_MAGENTA_COLOR & "#ifndef" & WBOLD_WHITE_COLOR)
    data = data.replace("#ifdef", WBOLD_MAGENTA_COLOR & "#ifdef" & WBOLD_WHITE_COLOR)
    data = data.replace("#endif", WBOLD_MAGENTA_COLOR & "#endif" & WBOLD_WHITE_COLOR)

    data = data.replace("return", WBOLD_LIGHT_MAGENTA_COLOR & "return" & WBOLD_WHITE_COLOR)

    data = data.replace("nodiscard", WBOLD_MAGENTA_COLOR & "nodiscard" & WBOLD_WHITE_COLOR)

    data = data.replace("class", WBOLD_LIGHT_YELLOW_COLOR & "class" & WBOLD_WHITE_COLOR)
    data = data.replace("struct", WBOLD_LIGHT_YELLOW_COLOR & "struct" & WBOLD_WHITE_COLOR)
    data = data.replace("namespace", WBOLD_LIGHT_YELLOW_COLOR & "namespace" & WBOLD_WHITE_COLOR)

    data = data.replace("using", WBOLD_GREEN_COLOR & "using" & WBOLD_WHITE_COLOR)

    data = data.replace("std", WBOLD_LIGHT_YELLOW_COLOR & "std" & WBOLD_WHITE_COLOR)

    data = data.replace("iostream", WBOLD_LIGHT_MAGENTA_COLOR & "iostream" & WBOLD_WHITE_COLOR)
    data = data.replace("cstring", WBOLD_LIGHT_MAGENTA_COLOR & "cstring" & WBOLD_WHITE_COLOR)
    data = data.replace("sstream", WBOLD_LIGHT_MAGENTA_COLOR & "sstream" & WBOLD_WHITE_COLOR)
    data = data.replace("fstream", WBOLD_LIGHT_MAGENTA_COLOR & "fstream" & WBOLD_WHITE_COLOR)
    data = data.replace("memory", WBOLD_LIGHT_MAGENTA_COLOR & "memory" & WBOLD_WHITE_COLOR)
    data = data.replace("cstdlib", WBOLD_LIGHT_MAGENTA_COLOR & "cstdlib" & WBOLD_WHITE_COLOR)
    data = data.replace("cstdio", WBOLD_LIGHT_MAGENTA_COLOR & "cstdio" & WBOLD_WHITE_COLOR)
    data = data.replace("vector", WBOLD_LIGHT_MAGENTA_COLOR & "vector" & WBOLD_WHITE_COLOR)
    data = data.replace("algorithm", WBOLD_LIGHT_MAGENTA_COLOR & "algorithm" & WBOLD_WHITE_COLOR)
    data = data.replace("thread", WBOLD_LIGHT_MAGENTA_COLOR & "thread" & WBOLD_WHITE_COLOR)
    data = data.replace("array", WBOLD_LIGHT_MAGENTA_COLOR & "array" & WBOLD_WHITE_COLOR)
    data = data.replace("bitset", WBOLD_LIGHT_MAGENTA_COLOR & "bitset" & WBOLD_WHITE_COLOR)
    data = data.replace("deque", WBOLD_LIGHT_MAGENTA_COLOR & "deque" & WBOLD_WHITE_COLOR)
    data = data.replace("map", WBOLD_LIGHT_MAGENTA_COLOR & "map" & WBOLD_WHITE_COLOR)
    data = data.replace("stack", WBOLD_LIGHT_MAGENTA_COLOR & "stack" & WBOLD_WHITE_COLOR)
    data = data.replace("set", WBOLD_LIGHT_MAGENTA_COLOR & "set" & WBOLD_WHITE_COLOR)
    data = data.replace("iterator", WBOLD_LIGHT_MAGENTA_COLOR & "iterator" & WBOLD_WHITE_COLOR)
    data = data.replace("tuple", WBOLD_LIGHT_MAGENTA_COLOR & "tuple" & WBOLD_WHITE_COLOR)
    data = data.replace("locale", WBOLD_LIGHT_MAGENTA_COLOR & "locale" & WBOLD_WHITE_COLOR)
    data = data.replace("regex", WBOLD_LIGHT_MAGENTA_COLOR & "regex" & WBOLD_WHITE_COLOR)
    data = data.replace("istream", WBOLD_LIGHT_MAGENTA_COLOR & "istream" & WBOLD_WHITE_COLOR)
    data = data.replace("ostream", WBOLD_LIGHT_MAGENTA_COLOR & "ostream" & WBOLD_WHITE_COLOR)

    data = data.replace("cout", WBOLD_CYAN_COLOR & "cout" & WBOLD_WHITE_COLOR)
    data = data.replace("printf", WBOLD_CYAN_COLOR & "printf" & WBOLD_WHITE_COLOR)
    data = data.replace("getline", WBOLD_CYAN_COLOR & "getline" & WBOLD_WHITE_COLOR)
    data = data.replace("cin", WBOLD_CYAN_COLOR & "cin" & WBOLD_WHITE_COLOR)

    data = data.replace("::", WBOLD_LIGHT_YELLOW_COLOR & "::" & WBOLD_WHITE_COLOR)
    data = data.replace("{", WBOLD_LIGHT_YELLOW_COLOR & "{" & WBOLD_WHITE_COLOR)
    data = data.replace("}", WBOLD_LIGHT_YELLOW_COLOR & "}" & WBOLD_WHITE_COLOR)
    data = data.replace("(", WBOLD_LIGHT_YELLOW_COLOR & "(" & WBOLD_WHITE_COLOR)
    data = data.replace(")", WBOLD_LIGHT_YELLOW_COLOR & ")" & WBOLD_WHITE_COLOR)
    data = data.replace("*", WBOLD_LIGHT_YELLOW_COLOR & "*" & WBOLD_WHITE_COLOR)
    data = data.replace("<", WBOLD_LIGHT_YELLOW_COLOR & "<" & WBOLD_WHITE_COLOR)
    data = data.replace(">", WBOLD_LIGHT_YELLOW_COLOR & ">" & WBOLD_WHITE_COLOR)
    data = data.replace("&", WBOLD_LIGHT_YELLOW_COLOR & "&" & WBOLD_WHITE_COLOR)
    
    echo data
    
proc FlaScript*(line: string): void = 
    var data = line.replace("int", WBOLD_RED_COLOR & "int" & WBOLD_WHITE_COLOR)
    data = data.replace("var", WBOLD_BLUE_COLOR & "var" & WBOLD_WHITE_COLOR)

    data = data.replace("string", WBOLD_BLUE_COLOR & "string" & WBOLD_WHITE_COLOR)

    data = data.replace("if", WBOLD_LIGHT_RED_COLOR & "if" & WBOLD_WHITE_COLOR)
    data = data.replace("else", WBOLD_LIGHT_RED_COLOR & "else" & WBOLD_WHITE_COLOR)

    data = data.replace("for", WBOLD_MAGENTA_COLOR & "for" & WBOLD_WHITE_COLOR)
    data = data.replace("do", WBOLD_MAGENTA_COLOR & "do" & WBOLD_WHITE_COLOR)
    data = data.replace("while", WBOLD_MAGENTA_COLOR & "while" & WBOLD_WHITE_COLOR)

    data = data.replace("func", WBOLD_RED_COLOR & "func" & WBOLD_WHITE_COLOR)
    data = data.replace("main", WBOLD_LIGHT_RED_COLOR & "main" & WBOLD_WHITE_COLOR)

    data = data.replace("@append", WBOLD_LIGHT_YELLOW_COLOR & "@append" & WBOLD_WHITE_COLOR)
    data = data.replace("@pop_back", WBOLD_LIGHT_YELLOW_COLOR & "@pop_back" & WBOLD_WHITE_COLOR)
    data = data.replace("@between", WBOLD_LIGHT_YELLOW_COLOR & "@between" & WBOLD_WHITE_COLOR)

    data = data.replace("import", WBOLD_YELLOW_COLOR & "import" & WBOLD_WHITE_COLOR)

    data = data.replace("defin", WBOLD_MAGENTA_COLOR & "defin" & WBOLD_WHITE_COLOR)
    data = data.replace("put", WBOLD_MAGENTA_COLOR & "put" & WBOLD_WHITE_COLOR)

    data = data.replace("#ifdef", WBOLD_MAGENTA_COLOR & "#ifdef" & WBOLD_WHITE_COLOR)
    data = data.replace("#endif", WBOLD_MAGENTA_COLOR & "#endif" & WBOLD_WHITE_COLOR)

    data = data.replace("return", WBOLD_LIGHT_MAGENTA_COLOR & "return" & WBOLD_WHITE_COLOR)

    data = data.replace("SystemInfo", WBOLD_LIGHT_MAGENTA_COLOR & "SystemInfo" & WBOLD_WHITE_COLOR)
    data = data.replace("Colorized", WBOLD_LIGHT_MAGENTA_COLOR & "Colorized" & WBOLD_WHITE_COLOR)

    data = data.replace("newline", WBOLD_LIGHT_BLACK_COLOR & "newline" & WBOLD_WHITE_COLOR)

    data = data.replace("print", WBOLD_CYAN_COLOR & "print" & WBOLD_WHITE_COLOR)
    data = data.replace("fprintf", WBOLD_CYAN_COLOR & "fprintf" & WBOLD_WHITE_COLOR)
    data = data.replace("@echo", WBOLD_CYAN_COLOR & "@echo" & WBOLD_WHITE_COLOR)
    data = data.replace("fprintln", WBOLD_CYAN_COLOR & "fprintln" & WBOLD_WHITE_COLOR)

    data = data.replace("::", WBOLD_LIGHT_YELLOW_COLOR & "::" & WBOLD_WHITE_COLOR)
    data = data.replace("{", WBOLD_LIGHT_YELLOW_COLOR & "{" & WBOLD_WHITE_COLOR)
    data = data.replace("}", WBOLD_LIGHT_YELLOW_COLOR & "}" & WBOLD_WHITE_COLOR)
    data = data.replace("(", WBOLD_LIGHT_YELLOW_COLOR & "(" & WBOLD_WHITE_COLOR)
    data = data.replace(")", WBOLD_LIGHT_YELLOW_COLOR & ")" & WBOLD_WHITE_COLOR)
    data = data.replace("*", WBOLD_LIGHT_YELLOW_COLOR & "*" & WBOLD_WHITE_COLOR)
    data = data.replace("<", WBOLD_LIGHT_YELLOW_COLOR & "<" & WBOLD_WHITE_COLOR)
    data = data.replace(">", WBOLD_LIGHT_YELLOW_COLOR & ">" & WBOLD_WHITE_COLOR)
    data = data.replace("&", WBOLD_LIGHT_YELLOW_COLOR & "&" & WBOLD_WHITE_COLOR)
    
    echo data
