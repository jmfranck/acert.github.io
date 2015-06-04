$download_success = 1
export PATH=$PATH:/c/Program\ Files/Oracle/VirtualBox:/c/Program\ Files/7-Zip
if ! command -v md5sum >/dev/null 2>&1; then
    echo "I can't find the md5sum command and I need it!"
    exit 1
fi
if ! command -v curl >/dev/null 2>&1; then
    echo "I can't find the curl command and I need it!"
    exit 1
fi
# do the following for each of the files
if [ -e $file1 ]; then
    if [ `md5sum $file1` != $hash1 ]; then
        echo "$file1 didn't download properly"
        $download_success = 0
    fi
else
    curl -O https://cornell.box.com....
    if [ -e $file1 ]; then
        if [ `md5sum $file1` != $hash1 ]; then
            echo "$file1 didn't download properly"
            $download_success = 0
        fi
    else
        echo "I can't download $file1 for some reason"
    fi
fi

if [ $download_success = 1 ]; then
    echo "the download was successful, now it's time to "
    if command -v unzip >/dev/null 2>&1; then
        # do stuff
    elif command -v 7z >/dev/null 2>&1; then
        # do stuff
    else
        echo "I couldn't find either an unzip command or 7zip, but you can unpack the files yourself"
    fi
fi
if command -v VBoxManage >/dev/null 2>&1; then
    VBoxManage import finalname.ova
    VBoxManage startvm thevmname
fi
