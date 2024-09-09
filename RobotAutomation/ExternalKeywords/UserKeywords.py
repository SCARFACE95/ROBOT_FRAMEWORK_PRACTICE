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
    os.mkdir(f"D:/Proiecte_Python/GIT_ROBOT_AUTOMATION/created/{foldername}")

def create_sub_folder(subfoldername):
     os.mkdir(f"D:/Proiecte_Python/GIT_ROBOT_AUTOMATION/created/folder_subfolder/{subfoldername}")

def concatenate_two_values(val1,val2):
    val3 = val1 + " " + val2
    return val3