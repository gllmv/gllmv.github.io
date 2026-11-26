#!/bin/bash

# serve "index.md" from the current folder on http://localhost:8080
# ./marp --html --server .

# open the file "index.md" in the browser included in marp
#   -html: required for youtube videos to be displayed
#   -p:  open in marp built-in browser ("preview")
./marp --html -p index.md

