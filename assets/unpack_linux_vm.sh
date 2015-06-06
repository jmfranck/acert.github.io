#!/bin/bash
# started upload at 6:50pm

hash1="e48bc26a8717747be1327fa5ccdcfa30"
file1="CentOS_final.zip.001"
hash2="c6906ad40272c6e4a6fa0d06a3d6f4d2"
file2="CentOS_final.zip.002"
hash3="e3969d997b73c28856f1644b542212f7"
file3="CentOS_final.zip.003"
hash4="cafbb83a5032cc750c53adea266f915f"
file4="CentOS_final.zip.004"
hash_final="b436e96942700b2420c057cb702d234f"
file_final="CentOS_final.ova"

download_success=1
export PATH="$PATH:/c/Program\ Files/Oracle/VirtualBox:/c/Program\ Files/7-Zip"

read -p "please enter the zip password that you received via email:" password

echo "I'm going to verify the checksums on the files that you downloaded into this directory, this will take a couple minutes..."

if command -v md5sum >/dev/null 2>&1; then
    md5command="md5sum"
elif command -v md5sum >/dev/null 2>&1; then
    md5command="md5"
else
    echo "I can't find the md5sum or md5 command and I need it!"
    exit 1
fi
# do the following for each of the files
if [ -e $file1 ]; then
    temp=`$md5command $file1 | egrep "[0-9a-f]\{32\}" |sed 's/\<\([0-9a-f]\{32\}\)\>/\1/'`
    echo "hash is $temp"
    exit
    if [ $temp != $hash1 ]; then
        echo "$file1 didn't download properly"
        download_success=0
    fi
else
    echo "I can't find $file1 in this directory"
    download_success=0
fi

#if [ $download_success = 1 ]; then
#    echo "the download was successful, now it's time to unzip"
#    if [ command -v unzip >/dev/null 2>&1 && command -v unzip >/dev/null 2>&1 ]; then
#        cat $file1 $file2 $file3 $file4 > combined_archive.zip
#        zip -FF combined_archive.zip --out combined_archive_fixed.zip
#        rm combined_archive.zip
#        unzip -P $password combined_archive_fixed.zip -d .
#        allfiles="$file1 $file2 $file3 $file4  combined_archive_fixed.zip"
#    elif command -v 7z >/dev/null 2>&1; then
#        7z x $file1 -o. -P$password
#    else
#        echo "I couldn't find either a unzip/zip pair of commands or 7zip, but you can unpack the files yourself"
#    fi
#fi
#if [ -e $file_final ]; then
#    temp=`$md5command $file_final | sed 's/\<\([0-9a-f]\{32\}\)\>/\4/'`
#    if [ $temp != $hash_final ]; then
#        echo "The file didn't unpack correctly! Please delete $file_final and figure out what went wrong!"
#    else
#        echo "Now double-click on the OVA file to import!"
#    fi
#else
#    echo "I misplaced the ova file! Put it in the current directory, please."
#fi
