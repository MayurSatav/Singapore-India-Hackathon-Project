#!flask/bin/python
from flask import abort, jsonify, request, Flask, make_response
import os

app = Flask(__name__)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8888,debug=True)
