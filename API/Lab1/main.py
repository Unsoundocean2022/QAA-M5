from flask import Flask

app = Flask(__name__)

# Return Hello internet

@app.route('/')
def hello_internet():
    return "Hello internet!"

# Return name from variable

@app.route('/greet/string:<name:person_name>')
def greet(person_name):
    return "Hello {}!".format(person_name)

if __name__=='__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)

# http://<Public-IP>:5000/name/Chris

# http://<Public-IP>:5000/name/Brad

# http://<Public-IP>:5000/