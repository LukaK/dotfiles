#!/bin/bash

DIRECTORY=/home/luka/.tmux/resurrect
for f in $DIRECTORY/*txt;
do
        last_filename="$DIRECTORY/`ls -l $DIRECTORY/last | awk '{print $11}'`"
        echo "last filename: $last_filename"
        echo "current file: $f"
        if [ "$f" == "$last_filename" ];
        then
                echo "preserving file"
                echo "========================"
                continue
        fi
        echo "removing file"
        echo "========================"
        /usr/bin/rm $f
done
