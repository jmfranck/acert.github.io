# started upload at 6:50pm

$hash1 = "9a0941dc08fd8b692cd650e66ea59e26"
$file1 = "CentOS_final.zip.001"
$hash2 = "d69faa0250d19ddb2440a821a579b304"
$file2 = "CentOS_final.zip.002"
$hash3 = "32e07ba6e6aaddf9d2036c63875556fc"
$file3 = "CentOS_final.zip.003"
$hash4 = "434a43eb9c497f3739ebe1c7245d8ac5"
$file4 = "CentOS_final.zip.004"
$hash_final = "b436e96942700b2420c057cb702d234f"
$file_final = "CentOS_final.ova"

$download_success = 1
export PATH=$PATH:/c/Program\ Files/Oracle/VirtualBox:/c/Program\ Files/7-Zip

if 
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
    if [ ${`md5sum $file1`:0:32} != $hash1 ]; then
        echo "$file1 didn't download properly"
        $download_success = 0
    fi
else
    curl -O "https://cornell.box.com/s/o47ptx9wr21ui15zbugjizjanz24jk6c/$file1"
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
    echo "the download was successful, now it's time to unzip"
    if command -v unzip >/dev/null 2>&1; then
        cat $file1 $file2 $file3 $file4 > combined_archive.zip
	zip -FF combined_archive.zip --out combined_archive_fixed.zip
	rm combined_archive.zip
	unzip combined_archive_fixed.zip -d .
	$allfiles = "$file1 $file2 $file3 $file4  combined_archive_fixed.zip"
    elif command -v 7z >/dev/null 2>&1; then
        7z x $file1 -o.
    else
        echo "I couldn't find either an unzip command or 7zip, but you can unpack the files yourself"
    fi
fi
if [ -e $file_final]; then
    if ${`md5sum $file_final`:0:32} != $hash_final ]; then
        echo "The file didn't unpack correctly! Delete the .ova file and figure out what went wrong!"
    else
        if command -v VBoxManage >/dev/null 2>&1; then
            VBoxManage import finalname.ova
            VBoxManage startvm thevmname
        else
            echo "I couldn't find VBoxManage, so you will have to import it manually"
        fi
    fi
else
    echo "I misplaced the ova file! Put it in the current directory, please."
fi
