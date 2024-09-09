import json
import requests
import json
import jsonpath


#Parse dictionary to json

#trebuie sa fie sub forma de string
odics='{"K1" : "val1","K2" : "val2"}'


json_result = json.loads(odics)
print(json_result)
print(json_result['K1'])


#request api
api_url = "https://reqres.in/api/users?page=2"

# Make a request
response1 = requests.get(api_url)
print(response1.text)

# Validate Status Code
assert response1.status_code == 200


#Parsing the response into json format
json_response = json.loads(response1.text)
print(json_response)


#Validate response by using json path
    #Apply JSON Path

x = jsonpath.jsonpath(json_response,'total')
print(x) #=> 12, pot sa iau valoarea de la total

y = jsonpath.jsonpath(json_response, "data[0].first_name")
print(y) #=> Michael

print(10*('----'))
for val in json_response['data']:
    print(val['first_name'])
