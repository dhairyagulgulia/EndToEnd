import json
import os

current_script_path = os.path.abspath(__file__)
parent_folder_path = os.path.dirname(current_script_path)
grandparent_folder_path = os.path.dirname(parent_folder_path)
Project_Path = os.path.dirname(grandparent_folder_path)
Contact_Data_file = os.path.join(Project_Path, 'DataFiles', 'Contact_Data.json')


def userdata_extraction(filename=Contact_Data_file):
    with open(filename,"r") as filedata:
        return(json.load(filedata))



