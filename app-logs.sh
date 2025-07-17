#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"


SOURCE_DIR=$1
DEST_DIR=$2


USAGE() {
    echo -e "$R Usage: $N $0 sh <source_directory> <destination_directory>"
    exit 1
}

if [ $# -ne 2 ]
then 
    USAGE     
fi

if [ ! -d "$SOURCE_DIR" ]
then 
    echo -e "$SOURCE_DIR does not exist"
    exit 1
end 
if [ ! -d "$DEST_DIR" ]
then 
    echo -e "$DEST_DIR does not exist"
    exit 1
fi

FILE=$( find $SOURCE_DIR -name "*.log" -mtime +14 )
if [ -n "$FILE" ]
then 
    zip_file=$( $DEST_DIR/app-logs-$TIMESTAMP.zip )
    find $SOUCRCE_DIR -name "*.log" -mtime +14 | zip -@ $zip_file 
    if [ -f "$zip_file" ]
    then 
        echo -e "$G Successfully created ZIp file $zip_file"
        while read -r filepath
        do 
            echo "Deleting the $filepath"
            rm -rf $filepath 
        done <<< $FILE
    else
        echo -e "$R Error: Failed to create zip file"
        exit 1
    fi 
else
    echo -e "$R No log files found in $SOUCRCE_DIR "
    exit 0
fi

