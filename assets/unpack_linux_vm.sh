# started upload at 6:50pm

$hash1 = "e48bc26a8717747be1327fa5ccdcfa30"
$file1 = "CentOS_final.zip.001"
$hash2 = "c6906ad40272c6e4a6fa0d06a3d6f4d2"
$file2 = "CentOS_final.zip.002"
$hash3 = "e3969d997b73c28856f1644b542212f7"
$file3 = "CentOS_final.zip.003"
$hash4 = "cafbb83a5032cc750c53adea266f915f"
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
    echo "I can't find $file1 in this directory"
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
