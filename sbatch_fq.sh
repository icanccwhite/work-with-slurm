#!/bin/bash

#####Deal with R1&R2 fq files#######
#Pls Just put the R1 and R2 of the same sample in one subdir, the name of subdir is the same prefix of fq file.

path=$1
batch=$2

for i in $(ls -d $path/*)
do
#       echo $i
        if [ -d $i ]
        then              
                sbatch -A project_name bash_file $i $batch
                echo "sbatch -A project_name bash_file $i $batch"
        fi
done
