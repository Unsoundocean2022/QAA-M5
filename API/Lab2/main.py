# Create a unique route for each type of request (GET, POST, PUT, DELETE) that
# returns text saying what type of route it is.

# Stretch goal - Create a single route that can take in any of the methods. Depending
# on the method sent, it should return different text.

from flask import Flask, request

app = Flask(__name__)

# Get route
@app.route('/get', methods=['GET'])
def get():
    return "This is a GET route!"

# Post route
@app.route('/post', methods=['POST'])
def post():
    return "This is a POST route!"

# Put route
@app.route('/put', methods=['PUT'])
def put():
    return "This is a PUT route!"

# Delete route
@app.route('/delete', methods=['DELETE'])
def delete():
    return "This is a DELETE route!"

# Stretch goal route
@app.route('/stretch', methods=['GET', 'POST', 'PUT', 'DELETE'])
def stretch():
    if request.method == 'GET':
        return "This is a GET route!"
    if request.method == 'POST':
        return "This is a POST route!"
    if request.method == 'PUT':
        return "This is a PUT route!"
    if request.method == 'DELETE':
        return "This is a DELETE route!"
    return None

if __name__=='__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)

# http://<Public-IP>:5000/get

# http://<Public-IP>:5000/post

# http://<Public-IP>:5000/put

# http://<Public-IP>:5000/delete

# http://<Public-IP>:5000/stretch
