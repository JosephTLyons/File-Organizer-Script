#!/bin/bash

# TODO - use if-statements to make check if folder already exists
# Add support for other files and formats
# Use if statements before attemping to move anything - make sure they exist?
# Figure out how to move all rest of files to MISC without moving the script

# Make folders for audio
mkdir Audio
mkdir Audio/MP3
mkdir Audio/WAVE

# Move all audio files to audio folder
mv *.mp3 Audio/MP3
mv *.wav Audio/WAVE

# Delete any empty folders related to audio folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls -A Audio/MP3 2> /dev/null)" == "" ];
then
    rmdir Audio/MP3
fi

if [ "$(ls -A Audio/WAVE 2> /dev/null)" == "" ];
then
    rmdir Audio/WAVE
fi

if [ "$(ls -A Audio 2> /dev/null)" == "" ];
then
    rmdir Audio
fi

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

# Delete any empty folders related to documents folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls -A Documents/DOC 2> /dev/null)" == "" ];
then
    rmdir Documents/DOC
fi

if [ "$(ls -A Documents/DOCX 2> /dev/null)" == "" ];
then
    rmdir Documents/DOCX
fi

if [ "$(ls -A Documents/HTML 2> /dev/null)" == "" ];
then
    rmdir Documents/HTML
fi

if [ "$(ls -A Documents/RTF 2> /dev/null)" == "" ];
then
    rmdir Documents/RTF
fi

if [ "$(ls -A Documents/TXT 2> /dev/null)" == "" ];
then
    rmdir Documents/TXT
fi

if [ "$(ls -A Documents 2> /dev/null)" == "" ];
then
    rmdir Documents
fi

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

# Delete any empty folders related to images folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls -A Images/GIF 2> /dev/null)" == "" ];
then
    rmdir Images/GIF
fi

if [ "$(ls -A Images/JPEG 2> /dev/null)" == "" ];
then
    rmdir Images/JPEG
fi

if [ "$(ls -A Images/JPG 2> /dev/null)" == "" ];
then
    rmdir Images/JPG
fi

if [ "$(ls -A Images/PNG 2> /dev/null)" == "" ];
then
    rmdir Images/PNG
fi

if [ "$(ls -A Images 2> /dev/null)" == "" ];
then
    rmdir Images
fi

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

# Delete any empty folders related to images folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls -A Videos/AVI 2> /dev/null)" == "" ];
then
    rmdir Videos/AVI
fi

if [ "$(ls -A Videos/FLV 2> /dev/null)" == "" ];
then
    rmdir Videos/FLV
fi

if [ "$(ls -A Videos/MP4 2> /dev/null)" == "" ];
then
    rmdir Videos/MP4
fi

if [ "$(ls -A Videos/MPEG 2> /dev/null)" == "" ];
then
    rmdir Videos/MPEG
fi

if [ "$(ls -A Videos/MOV 2> /dev/null)" == "" ];
then
    rmdir Videos/MOV
fi

if [ "$(ls -A Videos/WMV 2> /dev/null)" == "" ];
then
    rmdir Videos/WMV
fi

if [ "$(ls -A Videos 2> /dev/null)" == "" ];
then
    rmdir Videos
fi

# Make folder for Miscellaneous
mkdir Miscellaneous

# Delete Miscellaneous folder
if [ "$(ls -A Miscellaneous 2> /dev/null)" == "" ];
then
    rmdir Miscellaneous
fi

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
