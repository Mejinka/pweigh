from flask import Flask, request, jsonify
from flask_mysqldb import MySQL
from flask_cors import CORS
from datetime import datetime
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.lib.colors import black, white, HexColor
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont

arial_font_path = "C:/Windows/Fonts/arial.ttf" 
pdfmetrics.registerFont(TTFont("Arial", arial_font_path))

arial_bold_font_path = "assets/fonts/arialbd.ttf"  
pdfmetrics.registerFont(TTFont("Arial-Bold", arial_bold_font_path))

arial_italic_font_path = "assets/fonts/ariali.ttf"  
pdfmetrics.registerFont(TTFont("Arial-Italic", arial_italic_font_path))

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

cursor = conn.cursor()

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

conn.close()

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Vof09325',
    database='labtest'
)

cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS calibration(
            id INT AUTO_INCREMENT,
            registro_calibracao VARCHAR(100),
            data DATE,
            numero_certificado VARCHAR(100),
            cliente VARCHAR(255),
            morada VARCHAR(255),
            objeto VARCHAR(255),
            marca VARCHAR(200),
            modelo VARCHAR(200),
            nserie VARCHAR(50),
            id_interna VARCHAR(50),
            cep_controller VARCHAR(30),
            morada2 VARCHAR(255),
            cep_controller2 VARCHAR(30),
            altitude VARCHAR(50),
            latitude VARCHAR(50),
            ci_max VARCHAR(50),
            dropdown_controller VARCHAR(255),
            d VARCHAR(30),
            dt VARCHAR(30),
            temp_init VARCHAR(30),
            temp_final VARCHAR(30),
            hora_init VARCHAR(30),
            hora_final VARCHAR(30),
            pontos_cali VARCHAR(30),
            pontos_cali2 VARCHAR(30),
            indica_balanca VARCHAR(30),
            indica_balanca2 VARCHAR(30),
            carga_ajuste VARCHAR(255),
            ref VARCHAR(100),
            ponto1 VARCHAR(30),
            ponto2 VARCHAR(30),
            ponto3 VARCHAR(30),
            ponto4 VARCHAR(30),
            ponto5 VARCHAR(30),
            ponto6 VARCHAR(30),
            ponto7 VARCHAR(30),
            ponto8 VARCHAR(30),
            ponto9 VARCHAR(30),
            ponto10 VARCHAR(30),
            ponto11 VARCHAR(30),
            ponto12 VARCHAR(30),
            peso_padrao1 VARCHAR(30),
            peso_padrao2 VARCHAR(30),
            peso_padrao3 VARCHAR(30),
            peso_padrao4 VARCHAR(30),
            peso_padrao5 VARCHAR(30),
            peso_padrao6 VARCHAR(30),
            peso_padrao7 VARCHAR(30),
            peso_padrao8 VARCHAR(30),
            peso_padrao9 VARCHAR(30),
            peso_padrao10 VARCHAR(30),
            peso_padrao11 VARCHAR(30),
            peso_padrao12 VARCHAR(30),
            peso_padrao13 VARCHAR(30),
            peso_padrao14 VARCHAR(30),
            peso_padrao15 VARCHAR(30),
            peso_padrao16 VARCHAR(30),
            peso_padrao17 VARCHAR(30),
            peso_padrao18 VARCHAR(30),
            peso_padrao19 VARCHAR(30),
            peso_padrao20 VARCHAR(30),
            peso_padrao21 VARCHAR(30),
            peso_padrao22 VARCHAR(30),
            peso_padrao23 VARCHAR(30),
            peso_padrao24 VARCHAR(30),
            peso_padrao25 VARCHAR(30),
            peso_padrao26 VARCHAR(30),
            peso_padrao27 VARCHAR(30),
            peso_padrao28 VARCHAR(30),
            peso_padrao29 VARCHAR(30),
            peso_padrao30 VARCHAR(30),
            peso_padrao31 VARCHAR(30),
            peso_padrao32 VARCHAR(30),
            peso_padrao33 VARCHAR(30),
            peso_padrao34 VARCHAR(30),
            peso_padrao35 VARCHAR(30),
            peso_padrao36 VARCHAR(30),
            peso_padrao37 VARCHAR(30),
            peso_padrao38 VARCHAR(30),
            peso_padrao39 VARCHAR(30),
            peso_padrao40 VARCHAR(30),
            peso_padrao41 VARCHAR(30),
            peso_padrao42 VARCHAR(30),
            peso_padrao43 VARCHAR(30),
            peso_padrao44 VARCHAR(30),
            peso_padrao45 VARCHAR(30),
            peso_padrao46 VARCHAR(30),
            peso_padrao47 VARCHAR(30),
            peso_padrao48 VARCHAR(30),
            peso_padrao49 VARCHAR(30),
            peso_padrao50 VARCHAR(30),
            peso_padrao51 VARCHAR(30),
            peso_padrao52 VARCHAR(30),
            peso_padrao53 VARCHAR(30),
            peso_padrao54 VARCHAR(30),
            peso_padrao55 VARCHAR(30),
            peso_padrao56 VARCHAR(30),
            peso_padrao57 VARCHAR(30),
            peso_padrao58 VARCHAR(30),
            peso_padrao59 VARCHAR(30),
            peso_padrao60 VARCHAR(30),
            peso_padrao61 VARCHAR(30),
            peso_padrao62 VARCHAR(30),
            peso_padrao63 VARCHAR(30),
            peso_padrao64 VARCHAR(30),
            peso_padrao65 VARCHAR(30),
            peso_padrao66 VARCHAR(30),
            peso_padrao67 VARCHAR(30),
            peso_padrao68 VARCHAR(30),
            peso_padrao69 VARCHAR(30),
            peso_padrao70 VARCHAR(30),
            peso_padrao71 VARCHAR(30),
            peso_padrao72 VARCHAR(30),
            peso_padrao73 VARCHAR(30),
            peso_padrao74 VARCHAR(30),
            peso_padrao75 VARCHAR(30),
            peso_padrao76 VARCHAR(30),
            peso_padrao77 VARCHAR(30),
            peso_padrao78 VARCHAR(30),
            peso_padrao79 VARCHAR(30),
            peso_padrao80 VARCHAR(30),
            peso_padrao81 VARCHAR(30),
            peso_padrao82 VARCHAR(30),
            peso_padrao83 VARCHAR(30),
            peso_padrao84 VARCHAR(30),
            peso_padrao85 VARCHAR(30),
            peso_padrao86 VARCHAR(30),
            peso_padrao87 VARCHAR(30),
            peso_padrao88 VARCHAR(30),
            peso_padrao89 VARCHAR(30),
            peso_padrao90 VARCHAR(30),
            peso_padrao91 VARCHAR(30),
            peso_padrao92 VARCHAR(30),
            peso_padrao93 VARCHAR(30),
            peso_padrao94 VARCHAR(30),
            peso_padrao95 VARCHAR(30),
            peso_padrao96 VARCHAR(30),
            peso_padrao97 VARCHAR(30),
            peso_padrao98 VARCHAR(30),
            peso_padrao99 VARCHAR(30),
            peso_padrao100 VARCHAR(30),
            peso_padrao101 VARCHAR(30),
            peso_padrao102 VARCHAR(30),
            peso_padrao103 VARCHAR(30),
            peso_padrao104 VARCHAR(30),
            peso_padrao105 VARCHAR(30),
            peso_padrao106 VARCHAR(30),
            peso_padrao107 VARCHAR(30),
            peso_padrao108 VARCHAR(30),
            peso_padrao109 VARCHAR(30),
            peso_padrao110 VARCHAR(30),
            peso_padrao111 VARCHAR(30),
            peso_padrao112 VARCHAR(30),
            peso_padrao113 VARCHAR(30),
            peso_padrao114 VARCHAR(30),
            peso_padrao115 VARCHAR(30),
            peso_padrao116 VARCHAR(30),
            peso_padrao117 VARCHAR(30),
            peso_padrao118 VARCHAR(30),
            peso_padrao119 VARCHAR(30),
            peso_padrao120 VARCHAR(30),
            result1 VARCHAR(30),
            PRIMARY KEY(id)
    )
''')

conn.commit()



@app.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        user = request.form.get('user')
        password = request.form.get('password')

        cursor = conn.cursor()
        cursor.execute(
            'SELECT * FROM usuarios WHERE user = %s AND password = %s', (user, password))
        result = cursor.fetchone()

        if result:
            return jsonify({"success": True})
        else:
            return jsonify({"success": False})


@app.route('/get_user_details', methods=['POST'])
def get_user_details():
    user = request.form.get('user')

    cursor = conn.cursor()
    cursor.execute(
        'SELECT first_name, last_name FROM usuarios WHERE user = %s', (user,))
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
    peso_padrao1 = request.form.get('peso_padrao1')
    peso_padrao2 = request.form.get('peso_padrao2')
    peso_padrao3 = request.form.get('peso_padrao3')
    peso_padrao4 = request.form.get('peso_padrao4')
    peso_padrao5 = request.form.get('peso_padrao5')
    peso_padrao6 = request.form.get('peso_padrao6')
    peso_padrao7 = request.form.get('peso_padrao7')
    peso_padrao8 = request.form.get('peso_padrao8')
    peso_padrao9 = request.form.get('peso_padrao9')
    peso_padrao10 = request.form.get('peso_padrao10')
    peso_padrao11 = request.form.get('peso_padrao11')
    peso_padrao12 = request.form.get('peso_padrao12')
    peso_padrao13 = request.form.get('peso_padrao13')
    peso_padrao14 = request.form.get('peso_padrao14')
    peso_padrao15 = request.form.get('peso_padrao15')
    peso_padrao16 = request.form.get('peso_padrao16')
    peso_padrao17 = request.form.get('peso_padrao17')
    peso_padrao18 = request.form.get('peso_padrao18')
    peso_padrao19 = request.form.get('peso_padrao19')
    peso_padrao20 = request.form.get('peso_padrao20')
    peso_padrao21 = request.form.get('peso_padrao21')
    peso_padrao22 = request.form.get('peso_padrao22')
    peso_padrao23 = request.form.get('peso_padrao23')
    peso_padrao24 = request.form.get('peso_padrao24')
    peso_padrao25 = request.form.get('peso_padrao25')
    peso_padrao26 = request.form.get('peso_padrao26')
    peso_padrao27 = request.form.get('peso_padrao27')
    peso_padrao28 = request.form.get('peso_padrao28')
    peso_padrao29 = request.form.get('peso_padrao29')
    peso_padrao30 = request.form.get('peso_padrao30')
    peso_padrao31 = request.form.get('peso_padrao31')
    peso_padrao32 = request.form.get('peso_padrao32')
    peso_padrao33 = request.form.get('peso_padrao33')
    peso_padrao34 = request.form.get('peso_padrao34')
    peso_padrao35 = request.form.get('peso_padrao35')
    peso_padrao36 = request.form.get('peso_padrao36')
    peso_padrao37 = request.form.get('peso_padrao37')
    peso_padrao38 = request.form.get('peso_padrao38')
    peso_padrao39 = request.form.get('peso_padrao39')
    peso_padrao40 = request.form.get('peso_padrao40')
    peso_padrao41 = request.form.get('peso_padrao41')
    peso_padrao42 = request.form.get('peso_padrao42')
    peso_padrao43 = request.form.get('peso_padrao43')
    peso_padrao44 = request.form.get('peso_padrao44')
    peso_padrao45 = request.form.get('peso_padrao45')
    peso_padrao46 = request.form.get('peso_padrao46')
    peso_padrao47 = request.form.get('peso_padrao47')
    peso_padrao48 = request.form.get('peso_padrao48')
    peso_padrao49 = request.form.get('peso_padrao49')
    peso_padrao50 = request.form.get('peso_padrao50')
    peso_padrao51 = request.form.get('peso_padrao51')
    peso_padrao52 = request.form.get('peso_padrao52')
    peso_padrao53 = request.form.get('peso_padrao53')
    peso_padrao54 = request.form.get('peso_padrao54')
    peso_padrao55 = request.form.get('peso_padrao55')
    peso_padrao56 = request.form.get('peso_padrao56')
    peso_padrao57 = request.form.get('peso_padrao57')
    peso_padrao58 = request.form.get('peso_padrao58')
    peso_padrao59 = request.form.get('peso_padrao59')
    peso_padrao60 = request.form.get('peso_padrao60')
    peso_padrao61 = request.form.get('peso_padrao61')
    peso_padrao62 = request.form.get('peso_padrao62')
    peso_padrao63 = request.form.get('peso_padrao63')
    peso_padrao64 = request.form.get('peso_padrao64')
    peso_padrao65 = request.form.get('peso_padrao65')
    peso_padrao66 = request.form.get('peso_padrao66')
    peso_padrao67 = request.form.get('peso_padrao67')
    peso_padrao68 = request.form.get('peso_padrao68')
    peso_padrao69 = request.form.get('peso_padrao69')
    peso_padrao70 = request.form.get('peso_padrao70')
    peso_padrao71 = request.form.get('peso_padrao71')
    peso_padrao72 = request.form.get('peso_padrao72')
    peso_padrao73 = request.form.get('peso_padrao73')
    peso_padrao74 = request.form.get('peso_padrao74')
    peso_padrao75 = request.form.get('peso_padrao75')
    peso_padrao76 = request.form.get('peso_padrao76')
    peso_padrao77 = request.form.get('peso_padrao77')
    peso_padrao78 = request.form.get('peso_padrao78')
    peso_padrao79 = request.form.get('peso_padrao79')
    peso_padrao80 = request.form.get('peso_padrao80')
    peso_padrao81 = request.form.get('peso_padrao81')
    peso_padrao82 = request.form.get('peso_padrao82')
    peso_padrao83 = request.form.get('peso_padrao83')
    peso_padrao84 = request.form.get('peso_padrao84')
    peso_padrao85 = request.form.get('peso_padrao85')
    peso_padrao86 = request.form.get('peso_padrao86')
    peso_padrao87 = request.form.get('peso_padrao87')
    peso_padrao88 = request.form.get('peso_padrao88')
    peso_padrao89 = request.form.get('peso_padrao89')
    peso_padrao90 = request.form.get('peso_padrao90')
    peso_padrao91 = request.form.get('peso_padrao91')
    peso_padrao92 = request.form.get('peso_padrao92')
    peso_padrao93 = request.form.get('peso_padrao93')
    peso_padrao94 = request.form.get('peso_padrao94')
    peso_padrao95 = request.form.get('peso_padrao95')
    peso_padrao96 = request.form.get('peso_padrao96')
    peso_padrao97 = request.form.get('peso_padrao97')
    peso_padrao98 = request.form.get('peso_padrao98')
    peso_padrao99 = request.form.get('peso_padrao99')
    peso_padrao100 = request.form.get('peso_padrao100')
    peso_padrao101 = request.form.get('peso_padrao101')
    peso_padrao102 = request.form.get('peso_padrao102')
    peso_padrao103 = request.form.get('peso_padrao103')
    peso_padrao104 = request.form.get('peso_padrao104')
    peso_padrao105 = request.form.get('peso_padrao105')
    peso_padrao106 = request.form.get('peso_padrao106')
    peso_padrao107 = request.form.get('peso_padrao107')
    peso_padrao108 = request.form.get('peso_padrao108')
    peso_padrao109 = request.form.get('peso_padrao109')
    peso_padrao110 = request.form.get('peso_padrao110')
    peso_padrao111 = request.form.get('peso_padrao111')
    peso_padrao112 = request.form.get('peso_padrao112')
    peso_padrao113 = request.form.get('peso_padrao113')
    peso_padrao114 = request.form.get('peso_padrao114')
    peso_padrao115 = request.form.get('peso_padrao115')
    peso_padrao116 = request.form.get('peso_padrao116')
    peso_padrao117 = request.form.get('peso_padrao117')
    peso_padrao118 = request.form.get('peso_padrao118')
    peso_padrao119 = request.form.get('peso_padrao119')
    peso_padrao120 = request.form.get('peso_padrao120')
    result1 = request.form.get('result1')

    cursor = conn.cursor()
    cursor.execute(
        'INSERT INTO calibration(registro_calibracao, data, numero_certificado, '
        'cliente, morada, objeto,marca ,modelo ,'
        'nserie ,id_interna ,cep_controller , morada2 ,cep_controller2 ,'
        'altitude ,latitude ,ci_max ,dropdown_controller ,'
        'd ,dt ,temp_init ,temp_final ,hora_init ,hora_final ,pontos_cali, '
        'pontos_cali2, indica_balanca, indica_balanca2, carga_ajuste, ref,'
        'ponto1, ponto2, ponto3, ponto4, ponto5, ponto6, ponto7, ponto8, ponto9,'
        'ponto10, ponto11, ponto12, peso_padrao1, peso_padrao2, peso_padrao3,'
        'peso_padrao4, peso_padrao5, peso_padrao6, peso_padrao7, peso_padrao8,'
        'peso_padrao9, peso_padrao10, peso_padrao11, peso_padrao12, peso_padrao13,'
        'peso_padrao14, peso_padrao15, peso_padrao16, peso_padrao17, peso_padrao18,'
        'peso_padrao19, peso_padrao20, peso_padrao21, peso_padrao22, peso_padrao23,'
        'peso_padrao24, peso_padrao25, peso_padrao26, peso_padrao27, peso_padrao28,'
        'peso_padrao29, peso_padrao30, peso_padrao31, peso_padrao32, peso_padrao33,'
        'peso_padrao34, peso_padrao35, peso_padrao36, peso_padrao37, peso_padrao38,'
        'peso_padrao39, peso_padrao40, peso_padrao41, peso_padrao42, peso_padrao43,'
        'peso_padrao44, peso_padrao45, peso_padrao46, peso_padrao47, peso_padrao48,'
        'peso_padrao49, peso_padrao50, peso_padrao51, peso_padrao52, peso_padrao53,'
        'peso_padrao54, peso_padrao55, peso_padrao56, peso_padrao57, peso_padrao58,'
        'peso_padrao59, peso_padrao60, peso_padrao61, peso_padrao62, peso_padrao63,'
        'peso_padrao64, peso_padrao65, peso_padrao66, peso_padrao67, peso_padrao68,'
        'peso_padrao69, peso_padrao70, peso_padrao71, peso_padrao72, peso_padrao73,'
        'peso_padrao74, peso_padrao75, peso_padrao76, peso_padrao77, peso_padrao78,'
        'peso_padrao79, peso_padrao80, peso_padrao81, peso_padrao82, peso_padrao83,'
        'peso_padrao84, peso_padrao85, peso_padrao86, peso_padrao87, peso_padrao88,'
        'peso_padrao89, peso_padrao90, peso_padrao91, peso_padrao92, peso_padrao93,'
        'peso_padrao94, peso_padrao95, peso_padrao96, peso_padrao97, peso_padrao98,'
        'peso_padrao99, peso_padrao100, peso_padrao101, peso_padrao102, peso_padrao103,'
        'peso_padrao104, peso_padrao105, peso_padrao106, peso_padrao107, peso_padrao108,'
        'peso_padrao109, peso_padrao110, peso_padrao111, peso_padrao112, peso_padrao113,'
        'peso_padrao114, peso_padrao115, peso_padrao116, peso_padrao117, peso_padrao118,'
        'peso_padrao119, peso_padrao120, result1)'
        'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s ,%s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,'
        '%s, %s, %s, %s, %s)',
        (registro_calibracao, data, numero_certificado, cliente, morada, objeto,
         marca, modelo, nserie, id_interna, cep_controller, morada2, cep_controller2,
         altitude, latitude, ci_max, dropdown_controller, d, dt, temp_init,
         temp_final, hora_init, hora_final, pontos_cali, pontos_cali2,
         indica_balanca, indica_balanca2, carga_ajuste, ref, ponto1, ponto2, ponto3,
         ponto4, ponto5, ponto6, ponto7, ponto8, ponto9, ponto10, ponto11, ponto12,
         peso_padrao1, peso_padrao2, peso_padrao3, peso_padrao4, peso_padrao5,
         peso_padrao6, peso_padrao7, peso_padrao8, peso_padrao9, peso_padrao10,
         peso_padrao11, peso_padrao12, peso_padrao13, peso_padrao14, peso_padrao15,
         peso_padrao16, peso_padrao17, peso_padrao18, peso_padrao19, peso_padrao20,
         peso_padrao21, peso_padrao22, peso_padrao23, peso_padrao24, peso_padrao25,
         peso_padrao26, peso_padrao27, peso_padrao28, peso_padrao29, peso_padrao30,
         peso_padrao31, peso_padrao32, peso_padrao33, peso_padrao34, peso_padrao35,
         peso_padrao36, peso_padrao37, peso_padrao38, peso_padrao39, peso_padrao40,
         peso_padrao41, peso_padrao42, peso_padrao43, peso_padrao44, peso_padrao45,
         peso_padrao46, peso_padrao47, peso_padrao48, peso_padrao49, peso_padrao50,
         peso_padrao51, peso_padrao52, peso_padrao53, peso_padrao54, peso_padrao55,
         peso_padrao56, peso_padrao57, peso_padrao58, peso_padrao59, peso_padrao60,
         peso_padrao61, peso_padrao62, peso_padrao63, peso_padrao64, peso_padrao65,
         peso_padrao66, peso_padrao67, peso_padrao68, peso_padrao69, peso_padrao70,
         peso_padrao71, peso_padrao72, peso_padrao73, peso_padrao74, peso_padrao75,
         peso_padrao76, peso_padrao77, peso_padrao78, peso_padrao79, peso_padrao80,
         peso_padrao81, peso_padrao82, peso_padrao83, peso_padrao84, peso_padrao85,
         peso_padrao86, peso_padrao87, peso_padrao88, peso_padrao89, peso_padrao90,
         peso_padrao91, peso_padrao92, peso_padrao93, peso_padrao94, peso_padrao95,
         peso_padrao96, peso_padrao97, peso_padrao98, peso_padrao99, peso_padrao100,
         peso_padrao101, peso_padrao102, peso_padrao103, peso_padrao104, peso_padrao105,
         peso_padrao106, peso_padrao107, peso_padrao108, peso_padrao109, peso_padrao110,
         peso_padrao111, peso_padrao112, peso_padrao113, peso_padrao114, peso_padrao115,
         peso_padrao116, peso_padrao117, peso_padrao118, peso_padrao119, peso_padrao120,
         result1,)
    )
    conn.commit()

    return {"success": True}


def try_parsing_date(text):
    for fmt in ('%Y-%m-%d', '%d/%m/%Y'):
        try:
            return datetime.strptime(text, fmt).date()
        except ValueError:
            pass
    raise ValueError('No valid date format found')




@app.route('/generate_pdf')
def generate_pdf():
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM calibration ORDER BY id DESC')
    data = cursor.fetchall()

    if not data:
        return {"success": False, "message": "No data found"}

    column_headers = [i[0] for i in cursor.description]
    numero_certificado_index = column_headers.index("numero_certificado")
    data_certificado_index = column_headers.index("data")
    objecto_index = column_headers.index("objeto")
    marca_index = column_headers.index("marca")
    modelo_index = column_headers.index("modelo")
    nserie_index = column_headers.index("nserie")
    id_interna_index = column_headers.index("id_interna")
    cliente_index = column_headers.index("cliente")
    morada_index = column_headers.index("morada")
    cep_index = column_headers.index("cep_controller")
    temp_init_index = column_headers.index("temp_init")
    temp_final_index = column_headers.index("temp_final")
    hora_init_index = column_headers.index("hora_init")
    hora_final_index = column_headers.index("hora_final")
    
    numero_certificado = data[0][numero_certificado_index]
    data_banco = data[0][data_certificado_index]
    objeto = data[0][objecto_index]
    marca = data[0][marca_index]
    modelo = data[0][modelo_index]
    nserie = data[0][nserie_index]
    id_interna = data[0][id_interna_index]
    cliente = data[0][cliente_index]
    morada = data[0][morada_index]
    cep = data[0][cep_index]
    temp_init = data[0][temp_init_index]
    temp_final = data[0][temp_final_index]
    hora_init = data[0][hora_init_index]
    hora_final = data[0][hora_final_index]
    
    data_para_exibir = data_banco.strftime('%d/%m/%Y')

    c = canvas.Canvas("certficado de calibração.pdf", pagesize=letter)
    
    c.setFillColor(black)
    c.setFont("Arial-Bold", 14)
    c.drawString(20, 760, "CERTIFICADO DE CALIBRAÇÃO")
    c.setFont("Arial-Italic", 12)
    c.drawString(20, 748, "Certificate of Calibration")
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 734, "NÚMERO")
    c.drawString(100, 734, f"{numero_certificado}")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 724,"Number")
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 712, "DATA")
    c.drawString(120, 712, f"{data_para_exibir}")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 702, "Date ")

    c.drawImage("assets/images/labweigh.png", 260, 710, 200, 60) 
    c.drawImage("assets/images/ipac.png", 500, 700, 80, 70)  
    c.line(20, 660, 590, 660)
    ##############################################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 630, f"Objecto")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 620, f"Item")
    c.setFont("Arial", 10)
    c.drawString(160, 630, f"{objeto}")
    ###################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 606, f"Marca")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 596, f"Mark")
    c.setFont("Arial", 10)
    c.drawString(160, 606, f"{marca}")
    ###################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 582, f"Modelo")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 572, f"Model")
    c.setFont("Arial", 10)
    c.drawString(160, 582, f"{modelo}")
    ##################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 558, f"N.º Série")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 548, f"Serial Number")
    c.setFont("Arial", 10)
    c.drawString(160, 558, f"{nserie}")
    ##################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 534, f"Identificação")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 524, f"Identification")
    c.setFont("Arial", 10)
    c.drawString(160, 534, f"{id_interna}")
    c.line(20, 510, 590, 510)
    ##################################
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 486, f"Solicitante")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 476, f"Applicant")
    c.setFont("Arial", 10)
    c.drawString(160, 486, f"{cliente}")
    c.drawString(160, 466, f"{morada}")
    c.drawString(160, 446, f"{cep}")
    c.line(20, 430, 590, 430)
    ###################################
    c.setFont("Arial-Bold", 14)
    c.drawString(20, 406, f"Condições de calibração:")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 396, f"Calibration conditions:")
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 378, f"Procedimento")
    c.setFont("Arial", 10)
    c.drawString(160, 378, f"PT 05 01, Rev.4")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 368, f"Procedure")
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 354, f"Data de Calibração")
    c.setFont("Arial", 10)
    c.drawString(160, 354, f"{data_para_exibir}")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 344, f"Date of Calibration")
    c.setFont("Arial-Bold", 12)
    c.drawString(20, 330, f"Rastreabilidade")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 320, f"Traceability")
    c.setFont("Arial", 11)   
    c.drawString(160, 330, f"Calibração com rastreabilidade ao Sistema Internacional de Unidades (SI) por")
    c.drawString(160, 318, f"intermédio do(s) seguinte(s) peso(s) padrão:")
    ######################################
    c.setFont("Arial-Bold", 12)
    c.drawString(360, 378, f"Temperatura (˚C):")
    c.rect(464, 374, 50, 14, fill=0)
    c.rect(524, 374, 50, 14, fill=0)
    c.drawString(328, 354, f"Humidade Relativa (%):")
    c.rect(464, 350, 50, 14, fill=0)
    c.rect(524, 350, 50, 14, fill=0)
    c.drawString(472,394,f"Inicial")
    c.setFont("Arial", 11)
    c.drawString(468, 378, f"{temp_init} ± 1")
    c.drawString(468, 354, f"{hora_init} ± 1")
    c.setFont("Arial-Bold", 12)
    c.drawString(532,394,f"Final")
    c.setFont("Arial", 11)
    c.drawString(530, 378, f"{temp_final} ± 1")
    c.drawString(530, 354, f"{hora_final} ± 1")
    #######################################
    c.setFillColorRGB(0.7, 0.7, 0.7)
    c.setStrokeColorRGB(0.7, 0.7, 0.7) 
    c.rect(160, 280, 420, 20, fill=1)
    c.setFont("Arial-Bold", 12)
    c.setFillColorRGB(0, 0, 0)
    c.drawString(220, 275 + 20 / 2, "Código")
    c.drawString(360, 275 + 20 / 2,"Peso(s) Padrão")
    
    
    


    c.save()

    return {"success": True, "message": "PDF generated successfully"}



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
