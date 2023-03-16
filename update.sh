#!/bin/bash

# set source and destination directories
src_dir=/home/adam/
dest_dir=/home/adam/dev/config_files/

# copy files from source to destination directory
cp -r $src_dir/.vimrc $dest_dir/.vimrc
cp -r $src_dir/.ideavimrc $dest_dir/.ideavimrc
cp -r $src_dir/.tmux.conf $dest_dir/.tmux.conf
cp -r $src_dir/.bashrc $dest_dir/.bashrc

