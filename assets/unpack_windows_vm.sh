#!/bin/bash
# started upload at 6:50pm

hash1="a0430392fee91458749ed6abb83db903"
file1="Windown7_final.zip.001"
hash2="f6045f8e8ecb31bda250c695012b42ad"
file2="Windown7_final.zip.002"
hash3="8d5abee08bea963d3b33bc1c92ff7766"
file3="Windown7_final.zip.003"
hash4="da073079c5f7cd6ca40648073b5305ab"
file4="Windown7_final.zip.004"
hash_final="8b67bddb7b0af3c90eb431912dbfb2ea"
file_final="Windown7_final.ova"

download_success=1
export PATH="$PATH:/c/Program\ Files/Oracle/VirtualBox:/c/Program\ Files/7-Zip"

read -p "please enter the zip password that you received via email:" password

echo "I'm going to verify the checksums on the files that you downloaded into this directory. This will take a couple minutes..."
echo " "
echo " "

opencmd=""
if command -v start >/dev/null 2>&1; then
    opencmd="start"
elif command -v open >/dev/null 2>&1; then
    opencmd="open"
fi
if command -v md5sum >/dev/null 2>&1; then
    md5command="md5sum"
    trailcommand=""
elif command -v md5sum >/dev/null 2>&1; then
    md5command="md5"
    trailcommand= "| egrep "[0-9a-f]{32}" |sed 's/.*\<\([0-9a-fA-F]\{32\}\)\>.*/\1/'"
else
    echo "I can't find the md5sum or md5 command and I need it!"
    exit 1
fi
# do the following for each of the files
if [ -e $file1 ]; then
    temp=`$md5command $file1 $trailcommand`
    if [ ${temp:0:32} = $hash1 ]; then
        echo "$file1 downloaded OK"
    else
        echo "$file1 didn't download properly!!!!!!!"
        echo "hash is ${temp:0:32}"
        download_success=0
    fi
else
    echo "I can't find $file1 in this directory"
    download_success=0
fi
if [ -e $file2 ]; then
    temp=`$md5command $file2 $trailcommand`
    if [ ${temp:0:32} = $hash2 ]; then
        echo "$file2 downloaded OK"
    else
        echo "$file2 didn't download properly!!!!!!!"
        echo "hash is ${temp:0:32}"
        download_success=0
    fi
else
    echo "I can't find $file2 in this directory"
    download_success=0
fi
if [ -e $file3 ]; then
    temp=`$md5command $file3 $trailcommand`
    if [ ${temp:0:32} = $hash3 ]; then
        echo "$file3 downloaded OK"
    else
        echo "$file3 didn't download properly!!!!!!!"
        echo "hash is ${temp:0:32}"
        download_success=0
    fi
else
    echo "I can't find $file3 in this directory"
    download_success=0
fi
if [ -e $file4 ]; then
    temp=`$md5command $file4 $trailcommand`
    if [ ${temp:0:32} = $hash4 ]; then
        echo "$file4 downloaded OK"
    else
        echo "$file4 didn't download properly!!!!!!!"
        echo "hash is ${temp:0:32}"
        download_success=0
    fi
else
    echo "I can't find $file4 in this directory"
    download_success=0
fi

if [ $download_success = 1 ]; then
    echo "the download was successful, now it's time to unzip"
    if [ command -v unzip >/dev/null 2>&1 && command -v unzip >/dev/null 2>&1 ]; then
        cat $file1 $file2 $file3 $file4 > combined_archive.zip
        zip -FF combined_archive.zip --out combined_archive_fixed.zip
        rm combined_archive.zip
        unzip -P $password combined_archive_fixed.zip -d .
        allfiles="$file1 $file2 $file3 $file4  combined_archive_fixed.zip"
    elif command -v 7z >/dev/null 2>&1; then
        7z x $file1 -o. -P$password
    else
        echo "I couldn't find either a unzip/zip pair of commands or 7zip, but you can unpack the files yourself"
    fi
    if [ -e $file_final ]; then
        temp=`$md5command $file1_final $trailcommand`
        if [ ${temp:0:32} != $hash_final ]; then
            echo "The file didn't unpack correctly! Please delete $file_final and figure out what went wrong!"
            echo "bad hash ${temp:0:32}"
        else
            if [ $opencmd = "" ]; then
                echo "You are ready to double-click on the ova to import!!"
            else
                echo "You are ready to double-click on the ova to import!!\nI'm going to try to open it for you -- if this doesn't work, just open the .ova file (from within Virtual Box, or by double-clicking yourself."
                $opencmd $file1_final
            fi
            echo "You are ready to double-click on the ova to import!!\nI'm going to try to open it for you -- if this doesn't work, just open the .ova file (from within Virtual Box, or by double-clicking yourself."
        fi
    else
        echo "I misplaced the ova file! Put it in the current directory, please."
    fi
else
    echo "the download was not a success -- please fix the issues noted above and then re-run"
fi
