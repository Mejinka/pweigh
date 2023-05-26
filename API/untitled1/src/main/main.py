from flask import Flask, request, jsonify
from flask_mysqldb import MySQL
from flask_cors import CORS
import json

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Vof09325'
app.config['MYSQL_DB'] = 'labtest'

mysql = MySQL(app)
CORS(app)


@app.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        user = request.form.get('user')
        password = request.form.get('password')

        cursor = mysql.connection.cursor()
        cursor.execute('SELECT * FROM usuarios WHERE user = %s AND password = %s', (user, password))
        result = cursor.fetchone()

        if result:
            return jsonify({"success": True})
        else:
            return jsonify({"success": False})

@app.route('/get_user_details', methods=['POST'])
def get_user_details():
    user = request.form.get('user')

    cursor = mysql.connection.cursor()
    cursor.execute('SELECT first_name, last_name FROM usuarios WHERE user = %s', (user,))
    result = cursor.fetchone()

    if result:
        return jsonify({"success": True, "first_name": result[0], "last_name": result[1]})
    else:
        return jsonify({"success": False})


@app.route('/save_info', methods=['POST'])
def save_info():
    data = request.get_json()

    with open('client_info.txt', 'a') as file:
        file.write(json.dumps(data, indent=4))
        file.write("\n")

    return {"success": True}


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
