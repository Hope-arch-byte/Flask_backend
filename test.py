# import flask

from flask import *

# initializing the app

app=Flask(__name__)

# creating routes

@app.route("/api/home")

def home():
    return jsonify ({"message":"Welcome to home API"})

# api for products

@app.route("/api/products")

def products():
    return jsonify ({"message":"Welcome to products API"})

@app.route("/api/services")
def services():
    return jsonify ({"message":"Welcome to services API"})

# endpoint to calculate two numbers
@app.route("/api/calc",methods=["POST"])

def calc():
    num1=request.form["num1"]
    num2=request.form["num2"]
    sum=int(num1)+int(num2)
    return jsonify ({"The sum is":sum})

@app.route("/api/calculate",methods=["POST"])

def calculate():
    p=request.form["p"]
    r=request.form["r"]
    t=request.form["t"]
    simple_interest=int(p)*int(r)*int(t)/int(100)
    return jsonify ({"The simple interest is":simple_interest})


































































# running the app
app.run(debug=True)


