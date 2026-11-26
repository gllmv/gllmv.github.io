marp.exe index.md --html --allow-local-files --pdf-outlines --pdf-notes -o index.pdf

:: powerpoint (as a series of images)
:: marp.exe index.md -o index.pptx
:: "editable" powerpoint (requires LibreOffice "soffice" binary)
:: marp.exe index.md --pptx-editable -o index.pptx

marp.exe --html --allow-local-files index.md -o index.html 
::--html-theme gaia --html-embed-svg --html-embed-style --html-embed-scripts
