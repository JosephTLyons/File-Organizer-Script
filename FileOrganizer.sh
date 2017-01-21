#!/bin/bash

# TODO - use if-statements to make check if folder already exists
# Add support for other files and formats
# Use if statements before attemping to move anything - make sure they exist?

# Make folders for audio
mkdir Audio
mkdir Audio/MP3
mkdir Audio/WAVE

# Move all audio files to audio folder
mv *.mp3 Audio/MP3
mv *.wav Audio/WAVE

# Make folders for documents
mkdir Documents
mkdir Documents/DOC
mkdir Documents/DOCX
mkdir Documents/HTML
mkdir Documents/RTF
mkdir Documents/TXT

# Move all docs to documents folder
mv *.doc Documents/DOC
mv *.docx Documents/DOCX
mv *.html Documents/HTML
mv *.rtf Documents/RTF
mv *.txt Documents/TXT

# Delete any empty folders


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
mv *.avi Videos/AVI
mv *.flv Videos/FLV
mv *.mp4 Videos/MP4
mv *.mpeg Videos/MPEG
mv *.mov Videos/MOV
mv *.wmv Videos/WMV

# misc
#mkdir Miscellaneous

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
