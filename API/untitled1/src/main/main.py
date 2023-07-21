from flask import Flask, request, jsonify
from flask_mysqldb import MySQL
from flask_cors import CORS
from datetime import datetime

import mysql.connector
import json

app = Flask(__name__)

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Vof09325'
)

cursor = conn.cursor()
cursor.execute('CREATE DATABASE IF NOT EXISTS labtest')

conn.close()

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Vof09325',
    database='labtest'
)

# Get a new cursor
cursor = conn.cursor()

# Create 'usuarios' table if it doesn't exist
cursor.execute('''
    CREATE TABLE IF NOT EXISTS usuarios (
        id INT AUTO_INCREMENT,
        user VARCHAR(255),
        password VARCHAR(255),
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        PRIMARY KEY(id)
    )
''')

# Close connection
conn.close()


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
            pontos_cali VARCHAR(255),
            pontos_cali2 VARCHAR(255),
            indica_balanca VARCHAR(255),
            indica_balanca2 VARCHAR(255),
            carga_ajuste VARCHAR(255),
            ref VARCHAR(255),
            ponto1 VARCHAR(255),
            ponto2 VARCHAR(255),
            ponto3 VARCHAR(255),
            ponto4 VARCHAR(255),
            ponto5 VARCHAR(255),
            ponto6 VARCHAR(255),
            ponto7 VARCHAR(255),
            ponto8 VARCHAR(255),
            ponto9 VARCHAR(255),
            ponto10 VARCHAR(255),
            ponto11 VARCHAR(255),
            ponto12 VARCHAR(255),
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
    ###################################################
    ################### Pagina 2 ######################
    ###################################################
    pontos_cali = request.form.get('pontos_cali')
    pontos_cali2 = request.form.get('pontos_cali2')
    indica_balanca = request.form.get('indica_balanca')
    indica_balanca2 = request.form.get('indica_balanca2')
    carga_ajuste = request.form.get('carga_ajuste')
    ref = request.form.get('ref')
    ponto1 = request.form.get('ponto1')
    ponto2 = request.form.get('ponto2')
    ponto3 = request.form.get('ponto3')
    ponto4 = request.form.get('ponto4')
    ponto5 = request.form.get('ponto5')
    ponto6 = request.form.get('ponto6')
    ponto7 = request.form.get('ponto7')
    ponto8 = request.form.get('ponto8')
    ponto9 = request.form.get('ponto9')
    ponto10 = request.form.get('ponto10')
    ponto11 = request.form.get('ponto11')
    ponto12 = request.form.get('ponto12')

    cursor = mysql.connection.cursor()
    cursor.execute(
        'INSERT INTO calibration(registro_calibracao, data, numero_certificado, '
        'cliente, morada, objeto,marca ,modelo ,'
        'nserie ,id_interna ,cep_controller , morada2 ,cep_controller2 ,'
        'altitude ,latitude ,ci_max ,dropdown_controller ,'
        'd ,dt ,temp_init ,temp_final ,hora_init ,hora_final ,pontos_cali, '
        'pontos_cali2, indica_balanca, indica_balanca2, carga_ajuste, ref,'
        'ponto1, ponto2, ponto3, ponto4, ponto5, ponto6, ponto7, ponto8, ponto9,'
        ' ponto10, ponto11, ponto12) '
        'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)',
        (registro_calibracao, data, numero_certificado, cliente, morada, objeto,
         marca, modelo, nserie, id_interna, cep_controller, morada2, cep_controller2,
         altitude, latitude, ci_max, dropdown_controller, d, dt, temp_init,
         temp_final, hora_init, hora_final, pontos_cali, pontos_cali2,
         indica_balanca, indica_balanca2, carga_ajuste, ref, ponto1, ponto2, ponto3,
         ponto4, ponto5, ponto6, ponto7, ponto8, ponto9, ponto10, ponto11, ponto12)
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
