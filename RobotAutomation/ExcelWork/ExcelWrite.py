#Import package

import openpyxl

# Load Workbook

vk = openpyxl.Workbook()

print(vk.active.title)

#change name of sheet
sh = vk.active
sh.title = "HelloTestingWorld"

print(sh.title)

#adaug valoare in A4
sh['A4'].value = 'www.theTestingWorld.com'



#Creating new Sheet (2d sheet is created)
vk.create_sheet(title="Testingw")
#Enter data in 2d sheet
sh1=vk["Testingw"] #creating obj to second sheet
sh1['A3']= "+407539561843"


#Remove first Sheet
vk.remove(vk["HelloTestingWorld"])

#am salvat fisierul nou in cararea asta + numele fisierului
vk.save("/Users/Robot_framework_projects/RobotAutomation/PySheet.xlsx")


