./marp index.md --allow-local-files -o index.pdf

# powerpoint (as a series of images)
# ./marp index.md -o index.pptx
# "editable" powerpoint (requires LibreOffice "soffice" binary)
# ./marp index.md --pptx-editable -o index.pptx

./marp index.md -o index.html --html # --html-embed-svg --html-embed-style --html-embed-scripts
