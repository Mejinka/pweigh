from flask import Flask, request, jsonify
from flask_mysqldb import MySQL
from flask_cors import CORS
from datetime import datetime

import json

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Vof09325'
app.config['MYSQL_DB'] = 'labtest'

mysql = MySQL(app)
CORS(app)


@app.before_request
def create_tables():
    cursor = mysql.connection.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS calibration(
            id INT AUTO_INCREMENT,
            registro_calibracao VARCHAR(255),
            data DATE,
            numero_certificado VARCHAR(255),
            cliente VARCHAR(255),
            morada VARCHAR(255),
            objeto VARCHAR(255),
            marca VARCHAR(255),
            modelo VARCHAR(255),
            nserie VARCHAR(255),
            id_interna VARCHAR(255),
            cep_controller VARCHAR(255),
            morada2 VARCHAR(255),
            cep_controller2 VARCHAR(255),
            altitude VARCHAR(255),
            latitude VARCHAR(255),
            ci_max VARCHAR(255),
            dropdown_controller VARCHAR(255),
            d VARCHAR(255),
            dt VARCHAR(255),
            temp_init VARCHAR(255),
            temp_final VARCHAR(255),
            hora_init VARCHAR(255),
            hora_final VARCHAR(255),
            PRIMARY KEY(id)
        )
    ''')
    mysql.connection.commit()


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


@app.route('/post_calibration_data', methods=['POST'])
def post_calibration_data():
    registro_calibracao = request.form.get('registro_calibracao')
    data = try_parsing_date(request.form.get('data'))
    numero_certificado = request.form.get('numero_certificado')
    cliente = request.form.get('cliente')
    morada = request.form.get('morada')
    objeto = request.form.get('objeto')
    marca = request.form.get('marca')
    modelo = request.form.get('modelo')
    nserie = request.form.get('nserie')
    id_interna = request.form.get('id_interna')
    cep_controller = request.form.get('cep_controller')
    ###################################################
    morada2 = request.form.get('morada2')
    cep_controller2 = request.form.get('cep_controller2')
    ###################################################
    altitude = request.form.get('altitude')
    latitude = request.form.get('latitude')
    ###################################################
    ci_max = request.form.get('ci_max')
    dropdown_controller = request.form.get('dropdown_controller')
    d = request.form.get('d')
    dt = request.form.get('dt')
    ###################################################
    temp_init = request.form.get('temp_init')
    temp_final = request.form.get('temp_final')
    hora_init = request.form.get('hora_init')
    hora_final = request.form.get('hora_final')

    cursor = mysql.connection.cursor()
    cursor.execute(
        'INSERT INTO calibration(registro_calibracao, data, numero_certificado, cliente, morada, objeto,marca ,modelo ,'
        'nserie ,id_interna ,cep_controller , morada2 ,cep_controller2 ,'
        'altitude ,latitude ,ci_max ,dropdown_controller ,'
        'd ,dt ,temp_init ,temp_final ,hora_init ,hora_final) '
        'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)',
        (registro_calibracao, data, numero_certificado, cliente, morada, objeto,
         marca, modelo, nserie, id_interna, cep_controller, morada2, cep_controller2,
         altitude, latitude, ci_max, dropdown_controller, d, dt, temp_init,
         temp_final, hora_init, hora_final)
    )
    mysql.connection.commit()
    print(f"registro_calibracao: {registro_calibracao}")

    return {"success": True}


def try_parsing_date(text):
    for fmt in ('%Y-%m-%d', '%d/%m/%Y'):
        try:
            return datetime.strptime(text, fmt).date()
        except ValueError:
            pass
    raise ValueError('No valid date format found')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
