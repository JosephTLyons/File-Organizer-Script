#!/bin/bash

# Figure out how to copy files from existing folders out and make them empty
# so they can be sorted, and they will be deleted in the end

# dont move this shell application

####################################################################################################

# Get all file extensions and store in array, skip hidden files
fileArray=( $(find . -not -path '*/\.*' -type f -name '*.*' | sed 's|.*\.||') )

itemsInArray=${#fileArray[@]}

# Find and remove shell name

# Make and move all associated files into correct folders
for (( i = 0; i < itemsInArray; i++ ))
do

    # Only move and make folders if its not a shell script
#    if [ ${fileArray[i]} -ne "sh" ];
#    then
        mkdir ${fileArray[i]}
        mv *.${fileArray[i]} ${fileArray[i]}
#    fi
done

####################################################################################################

# Make category folders
mkdir Audio
mkdir Documents
mkdir Images
mkdir Miscellaneous
mkdir Videos

####################################################################################################

# Move all folder types to a category
mv aiff/ Audio/
mv flac/ Audio/
mv m4a/ Audio/
mv mp3/ Audio/
mv wav/ Audio/

mv doc/ Documents/
mv docx/ Documents/
mv xlsx/ Documents/
mv html/ Documents/
mv md/ Documents/  # Read Me Files
mv pdf/ Documents/
mv pptx/ Documents/
mv rtf/ Documents/
mv sh/ Documents/  # Shell Scripts
mv txt/ Documents/

mv gif/ Images/
mv jpeg/ Images/
mv jpg/ Images/
mv pxm/ Images/
mv png/ Images/

mv avi/ Videos/
mv flv/ Videos/
mv mp4/ Videos/
mv mpeg/ Videos/
mv mov/ Videos/
mv wmv/ Videos/

mv zip/ Miscellaneous/

####################################################################################################

 Delete all empty categories
if [ "$(ls Audio 2> /dev/null)" == "" ];
then
    rmdir Audio
fi

if [ "$(ls Documents 2> /dev/null)" == "" ];
then
rmdir Documents
fi

if [ "$(ls Images 2> /dev/null)" == "" ];
then
    rmdir Images
fi

if [ "$(ls Miscellaneous 2> /dev/null)" == "" ];
then
    rmdir Miscellaneous
fi

if [ "$(ls Videos 2> /dev/null)" == "" ];
then
    rmdir Videos
fi
