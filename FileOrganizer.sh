#!/bin/bash

# TODO - use if-statements to make check if folder already exists
# Add support for other files and formats

# Make folders for documents
mkdir Documents
mkdir Documents/TXT
mkdir Documents/RTF
mkdir Documents/DOC
mkdir Documents/HTML

# Make folders for images
mkdir Images
mkdir Images/JPEG
mkdir Images/JPG
mkdir Images/GIF
mkdir Images/PNG

# Make folders for videos
mkdir Videos
mkdir Videos/MPEG
# mkdir Videos/ OTHER TYPES

mkdir Miscellaneous

# Use if statements before attemping to move anything - make sure they exist

# Move all Images to folder - Split up files into specific file extension folders?
mv *.jpeg Images/JPEG
mv *.jpg Images/JPG
mv *.gif Images/GIF
mv *.png Images/PNG

# Move all docs to Documents Folder
mv *.txt Documents/TXT
mv *.rtf Documents/RTF
mv *.doc Documents/DOC
mv *.html Documents/HTML

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
