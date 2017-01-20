#!/bin/bash

# TODO - use if-statements to make check if folder already exists
# Add support for other files and formats
# Use if statements before attemping to move anything - make sure they exist?

# Make folders for documents
mkdir Documents
mkdir Documents/DOC
mkdir Documents/HTML
mkdir Documents/RTF
mkdir Documents/TXT


# Move all docs to Documents Folder
mv *.txt Documents/DOC
mv *.rtf Documents/HTML
mv *.doc Documents/RTF
mv *.html Documents/TXT

# Make folders for images
mkdir Images
mkdir Images/GIF
mkdir Images/JPEG
mkdir Images/JPG
mkdir Images/PNG

# Move all Images to folder - Split up files into specific file extension folders?
mv *.gif Images/GIF
mv *.jpeg Images/JPEG
mv *.jpg Images/JPG
mv *.png Images/PNG

# Make folders for videos
mkdir Videos
mkdir Videos/AVI
mkdir Videos/FLV
mkdir Videos/MP4
mkdir Videos/MPEG
mkdir Videos/MOV
mkdir Videos/WMV

# Move all videos to folder - Split up files into specific file extension folders?
mv *.AVI Videos/AVI
mv *.FLV Videos/FLV
mv *.MP4 Videos/MP4
mv *.MPEG Videos/MPEG
mv *.MOV Videos/MOV
mv *.WMV Videos/WMV

# misc
mkdir Miscellaneous

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
