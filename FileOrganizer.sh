#!/bin/bash

# Figure out how to copy files from existing folders out and make them empty
# so they can be sorted, and they will be deleted in the end

####################################################################################################

# Get all file extensions and store in array, skip hidden files
fileArray=( $(find . -not -path '*/\.*' -type f -name '*.*' | sed 's|.*\.||') )

itemsInArray=${#fileArray[@]}

# Find and remove shell name

# Make and move all associated files into correct folders
for (( i = 0; i < itemsInArray; i++ ))
do

    # Only move and make folders if its not a shell script
    if [ ${fileArray[i]} -ne "sh" ];
    then
        mkdir ${fileArray[i]}
        mv *.${fileArray[i]} ${fileArray[i]}
    fi
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
mv 

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

if [ "$(ls Videos 2> /dev/null)" == "" ];
then
    rmdir Videos
fi
