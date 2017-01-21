#!/bin/bash

# Add support for other files and formats
# Figure out how to move all rest of files to MISC without moving the script
# Figure out why folders are deleted, unless they have an item stored at some point
# Figure out how to copy files from existing folders out and make them empty
# so they can be sorted, and they will be deleted in the end

########################################## AUDIO ##########################################

# Make folders for audio
mkdir Audio
mkdir Audio/AIFF
mkdir Audio/FLAC
mkdir Audio/MP3
mkdir Audio/WAVE

# Move all audio files to audio folder
mv *.aiff Audio/AIFF
mv *.flac Audio/FLAC
mv *.mp3 Audio/MP3
mv *.wav Audio/WAVE

# Delete any empty folders related to audio folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls Audio/AIFF 2> /dev/null)" == "" ];
then
    rmdir Audio/AIFF
fi

if [ "$(ls Audio/FLAC 2> /dev/null)" == "" ];
then
    rmdir Audio/FLAC
fi

if [ "$(ls Audio/MP3 2> /dev/null)" == "" ];
then
    rmdir Audio/MP3
fi

if [ "$(ls Audio/WAVE 2> /dev/null)" == "" ];
then
    rmdir Audio/WAVE
fi

if [ "$(ls Audio 2> /dev/null)" == "" ];
then
    rmdir Audio
fi

########################################## DOCUMENTS ##########################################

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
if [ "$(ls Documents/DOC 2> /dev/null)" == "" ];
then
    rmdir Documents/DOC
fi

if [ "$(ls Documents/DOCX 2> /dev/null)" == "" ];
then
    rmdir Documents/DOCX
fi

if [ "$(ls Documents/HTML 2> /dev/null)" == "" ];
then
    rmdir Documents/HTML
fi

if [ "$(ls Documents/RTF 2> /dev/null)" == "" ];
then
    rmdir Documents/RTF
fi

if [ "$(ls Documents/TXT 2> /dev/null)" == "" ];
then
    rmdir Documents/TXT
fi

if [ "$(ls Documents 2> /dev/null)" == "" ];
then
    rmdir Documents
fi

########################################## IMAGES ##########################################

# Make folders for images
mkdir Images
mkdir Images/GIF
mkdir Images/JPEG
mkdir Images/JPG
mkdir Images/Pixelmator
mkdir Images/PNG

# Move all Images to folder - Split up files into specific file extension folders?
mv *.gif Images/GIF
mv *.jpeg Images/JPEG
mv *.jpg Images/JPG
mv *.pxm Images/Pixelmator
mv *.png Images/PNG

# Delete any empty folders related to images folder - delete parent folder last
# Because it will only ever be empty at the end of deleting all other subfolders
if [ "$(ls Images/GIF 2> /dev/null)" == "" ];
then
    rmdir Images/GIF
fi

if [ "$(ls Images/JPEG 2> /dev/null)" == "" ];
then
    rmdir Images/JPEG
fi

if [ "$(ls Images/JPG 2> /dev/null)" == "" ];
then
    rmdir Images/JPG
fi

if [ "$(ls Images/Pixelmator 2> /dev/null)" == "" ];
then
    rmdir Images/Pixelmator
fi

if [ "$(ls Images/PNG 2> /dev/null)" == "" ];
then
    rmdir Images/PNG
fi

if [ "$(ls Images 2> /dev/null)" == "" ];
then
    rmdir Images
fi

########################################## VIDEOS ##########################################

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
if [ "$(ls Videos/AVI 2> /dev/null)" == "" ];
then
    rmdir Videos/AVI
fi

if [ "$(ls Videos/FLV 2> /dev/null)" == "" ];
then
    rmdir Videos/FLV
fi

if [ "$(ls Videos/MP4 2> /dev/null)" == "" ];
then
    rmdir Videos/MP4
fi

if [ "$(ls Videos/MPEG 2> /dev/null)" == "" ];
then
    rmdir Videos/MPEG
fi

if [ "$(ls Videos/MOV 2> /dev/null)" == "" ];
then
    rmdir Videos/MOV
fi

if [ "$(ls Videos/WMV 2> /dev/null)" == "" ];
then
    rmdir Videos/WMV
fi

if [ "$(ls Videos 2> /dev/null)" == "" ];
then
    rmdir Videos
fi

########################################## ZIP ##########################################

# Make folder for zip
mkdir Zip

# Move all zip files to folder
mv *.zip Zip

# Delete zip folder
if [ "$(ls Zip 2> /dev/null)" == "" ];
then
    rmdir Zip
fi

########################################## MISCELLANEOUS ##########################################

# Make folder for Miscellaneous
mkdir Miscellaneous

# Delete Miscellaneous folder
if [ "$(ls Miscellaneous 2> /dev/null)" == "" ];
then
    rmdir Miscellaneous
fi

# Move rest of items to Miscellaneous Folder
#mv *.* Miscellaneous
