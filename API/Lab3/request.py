import requests

url = "http://3.8.205.250:5000/record"

headers = {
    'Content-Type': 'application/json'
}

data = {
    "id": 1,
    "name": "John Doe",
    "email": "johndoe@example.com"
}

response = requests.post(url, headers=headers, json=data)

print(response.json())
