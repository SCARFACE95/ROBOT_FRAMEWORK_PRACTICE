import json
import jsonpath

def read_locator_from_json(locatorname):
    f = open('D:\Proiecte_Python\GIT_ROBOT_AUTOMATION\RobotAutomation\JsonWork\Elements.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorname)
    return value[0]