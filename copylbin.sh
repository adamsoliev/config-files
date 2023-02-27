#!/bin/bash

# set source and destination directories
src_dir=/home/adam/bin/
dest_dir=/home/adam/dev/config_files/local_bin/

# copy files from source to destination directory
cp -r $src_dir/* $dest_dir/
find $dest_dir/ -type l -delete
