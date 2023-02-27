#!/usr/bin/python3

import sys
import time
import tkinter as tk
from tkinter import messagebox 

def main(argv):

    argument = argv[0] # e.g., 4s | 15m | 2h
    if (argument[-1] == 's' or argument[-1] == 'S'):
        seconds = int(argument[:-1])
        time.sleep(seconds)
    elif (argument[-1] == 'm' or argument[-1] == 'M'):
        minutes = int(argument[:-1])
        time.sleep(minutes * 60)
    elif (argument[-1] == 'h' or argument[-1] == 'H'):
        hours = int(argument[:-1])
        time.sleep(hours * 60 * 60)
 
    root = tk.Tk()
    root.withdraw()

    messagebox.showwarning('Timer', '\nTime is up!\n')

if __name__ == "__main__":
    main(sys.argv[1:])

