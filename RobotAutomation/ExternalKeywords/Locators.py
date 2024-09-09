import json
import jsonpath

def read_locator_from_json(locatorname):
    f = open('/Users/Robot_framework_projects/RobotAutomation/JsonWork/Elements.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorname)
    return value[0]