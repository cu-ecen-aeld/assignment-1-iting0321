#!/bin/bash

filesdir=$1
searchstr=$2

if [ $? -ne 3 ]
then 
    echo "it must to be 3 arguments"
fi

if [ -d "$filesdir" ]
then 
    echo "$filesdir does not represent a directory on the filesystem" 
    exit 1
fi

cd $filesdir

Y=$(grep -R  $searchstr  | wc -l)
X=$(find ./ -type f |wc -l)

echo "The number of files are $X and the number of matching lines are $Y"