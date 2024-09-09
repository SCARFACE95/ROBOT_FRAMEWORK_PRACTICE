#Import package

import openpyxl

# Load Workbook

vk = openpyxl.load_workbook("/Users/Robot_framework_projects/RobotAutomation/TesData.xlsx")

print(vk.sheetnames) #['Sheet1', 'Sheet2', 'Sheet3', 'hello']

#Check active sheet
print(f"Active sheet is {vk.active.title}")


# Create Object of Any sheet on which you want to work
sh=vk['Sheet1']
print(sh.title)