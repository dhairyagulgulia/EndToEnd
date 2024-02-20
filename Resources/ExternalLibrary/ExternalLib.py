import json
def userdata_extraction(filename):
    with open(filename,"r") as filedata:
        return(json.load(filedata))



