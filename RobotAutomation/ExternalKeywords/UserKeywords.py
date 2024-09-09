import os



#Fara argumente
# def create_folder():
#     os.mkdir("/Users/andrei/test_folder/new_file")
#
#     #Reminder: aici am dat cararea unde vreau sa creez un fisier + new_file fiind numele noului fisier
#
# def create_sub_folder():
#     os.mkdir("/Users/andrei/test_folder/new_file/Romania")


#Rescris cu argumente
def create_folder(foldername):
    os.mkdir(f"/Users/andrei/test_folder/{foldername}")

def create_sub_folder(subfoldername):
     os.mkdir(f"/Users/andrei/test_folder/{subfoldername}")

def concatenate_two_values(val1,val2):
    val3 = val1 + " " + val2
    return val3