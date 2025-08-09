#!/bin/python3

# This script is in charge of copying stuff

# -U --> ~/.config -> .../dotfiles/
# -S --> .../dotfiles/ --> ~/.config

# -N {folder name} --> /dotfiles/{folder name} --> ~/.config/{folder name} 

# -A {folder name} --> Add a .config folder to the list
# -R {folder name} -->  Remove a .config folder from the list


import json
from pathlib import Path

# Folders
CONFIG = "/home/chozix/.config"
BACKUP = "~/dotfiles"

TEST = "/home/chozix/pyprojects/"



class FileManager:

    def printFolders(self, org: str) -> None:
        p = Path(org)
 
        if not p.exists():
            print(f"The origin '{org}' does not exist")
            raise ValueError()

        for folder in p.iterdir():
            if folder.is_dir():
                print(folder.name)
                

    def copy_folders(self, org: str, dst: str):
        p = Path(org)
 
        if not p.exists():
            print(f"The origin '{org}' does not exist")
            raise ValueError()
        
            

        # do something
        pass


class ListManager:

    def add_to_list(self, name: str):
        # do something
        pass

    def remove_from_list(self, name: str):
        # do something
        pass



fManager = FileManager()

fManager.printFolders(TEST)




