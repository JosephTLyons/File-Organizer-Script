#!/bin/bash

# TODO - use if-statements to make check if folder already exists
# Add support for other files and formats
# Use if statements before attemping to move anything - make sure they exist?

# Make folders for documents
mkdir Documents
mkdir Documents/TXT
mkdir Documents/RTF
mkdir Documents/DOC
mkdir Documents/HTML

# Move all docs to Documents Folder
mv *.txt Documents/TXT
mv *.rtf Documents/RTF
mv *.doc Documents/DOC
mv *.html Documents/HTML

# Make folders for images
mkdir Images
mkdir Images/JPEG
mkdir Images/JPG
mkdir Images/GIF
mkdir Images/PNG

# Move all Images to folder - Split up files into specific file extension folders?
mv *.jpeg Images/JPEG
mv *.jpg Images/JPG
mv *.gif Images/GIF
mv *.png Images/PNG

# Make folders for videos
mkdir Videos
mkdir Videos/MPEG
mkdir Videos/AVI
mkdir Videos/FLV
mkdir Videos/WMV
mkdir Videos/MOV
mkdir Videos/MP4

# Move all videos to folder - Split up files into specific file extension folders?
mv *.MPEG Videos/MPEG
mv *.AVI Videos/AVI
mv *.FLV Videos/FLV
mv *.WMV Videos/WMV
mv *.MOV Videos/MOV
mv *.MP4 Videos/MP4

# misc
mkdir Miscellaneous

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
