@echo off
:: open the file "index.md" in the browser included in marp
::   -html: required for youtube videos to be displayed
::   -p (--preview):  open in marp built-in browser (target = file.md)
::   -s (--server):  start a local web server (target = folder ; use index.md as root)
marp.exe --html --preview --bespoke.progress true index.md --theme-set ./themes/awesome 
:: --theme am_green
:: marp.exe --html --server .
