#Import package

import openpyxl

# Load Workbook

vk = openpyxl.load_workbook("/Users/Robot_framework_projects/RobotAutomation/TesData.xlsx")

sh = vk["Sheet1"] # Object for sheet
print(sh['A3'].value)
print(sh['B4'].value)
print(10*'---')

c1 = sh.cell(3, 1)
print(c1.value)

