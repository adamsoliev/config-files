#!/usr/bin/python3

import os

"""
Removes '.' & ',' from file names in current directory, and  
replaces '-' & ' ' with '_'.
e.g., 'josh k. watskin - 2015.pdf' => 'josh_k_watskin_2015.pdf'
"""

# TODO: directory should be passed as arg. If not,
# default should be the current directory.
for f in os.listdir("."):
    fname, fext = os.path.splitext(f) 
    r = fname.replace(",", "").replace(".", "").replace("-", "_").replace(" ", "_").replace("___", "_").replace("__",
    "_").replace("(", "").replace(")", "").replace("'", "") + fext
    if (r != fname):
        os.rename(f, r)
