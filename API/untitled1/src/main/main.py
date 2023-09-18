from flask import Flask, request, jsonify, send_file
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
import os
import webbrowser
from pathlib import Path
from flask import Response
from reportlab.lib.pagesizes import letter, A4





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
            modelo VARCHAR(100),
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
            temp_init VARCHAR(6),
            temp_final VARCHAR(6),
            hora_init VARCHAR(6),
            hora_final VARCHAR(6),
            pontos_cali VARCHAR(20),
            pontos_cali2 VARCHAR(20),
            indica_balanca VARCHAR(20),
            indica_balanca2 VARCHAR(20),
            carga_ajuste VARCHAR(100),
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
            result1 VARCHAR(30),
            result2 VARCHAR(30),
            result3 VARCHAR(30),
            result4 VARCHAR(30),
            result5 VARCHAR(30),
            result6 VARCHAR(30),
            result7 VARCHAR(30),
            result8 VARCHAR(30),
            result9 VARCHAR(30),
            result10 VARCHAR(30),
            result11 VARCHAR(30),
            result12 VARCHAR(30),
            PRIMARY KEY(id)
    )
''')

conn.commit()


cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS mapas(
            id INT AUTO_INCREMENT,
            mapa VARCHAR(50),
            mapa2 VARCHAR(50),
            mapa3 VARCHAR(50),
            mapa4 VARCHAR(50),
            mapa5 VARCHAR(50),
            mapa6 VARCHAR(50),
            mapa7 VARCHAR(50),
            mapa8 VARCHAR(50),
            mapa9 VARCHAR(50),
            mapa10 VARCHAR(50),
            mapa11 VARCHAR(50),
            mapa12 VARCHAR(50),
            mapa13 VARCHAR(50),
            mapa14 VARCHAR(50),
            mapa15 VARCHAR(50),
            mapa16 VARCHAR(50),
            mapa17 VARCHAR(50),
            mapa18 VARCHAR(50),
            mapa19 VARCHAR(50),
            mapa20 VARCHAR(50),
            mapa21 VARCHAR(50),
            mapa22 VARCHAR(50),
            mapa23 VARCHAR(50),
            mapa24 VARCHAR(50),
            mapa25 VARCHAR(50),
            mapa26 VARCHAR(50),
            mapa27 VARCHAR(50),
            mapa28 VARCHAR(50),
            mapa29 VARCHAR(50),
            mapa30 VARCHAR(50),
            mapa31 VARCHAR(50),
            mapa32 VARCHAR(50),
            mapa33 VARCHAR(50),
            mapa34 VARCHAR(50),
            mapa35 VARCHAR(50),
            mapa36 VARCHAR(50),
            mapa37 VARCHAR(50),
            mapa38 VARCHAR(50),
            mapa39 VARCHAR(50),
            mapa40 VARCHAR(50),
            mapa41 VARCHAR(50),
            mapa42 VARCHAR(50),
            mapa43 VARCHAR(50),
            mapa44 VARCHAR(50),
            mapa45 VARCHAR(50),
            mapa46 VARCHAR(50),
            mapa47 VARCHAR(50),
            mapa48 VARCHAR(50),
            mapa49 VARCHAR(50),
            mapa50 VARCHAR(50),
            mapa51 VARCHAR(50),
            mapa52 VARCHAR(50),
            mapa53 VARCHAR(50),
            mapa54 VARCHAR(50),
            mapa55 VARCHAR(50),
            mapa56 VARCHAR(50),
            mapa57 VARCHAR(50),
            mapa58 VARCHAR(50),
            mapa59 VARCHAR(50),
            mapa60 VARCHAR(50),
            mapa61 VARCHAR(50),
            mapa62 VARCHAR(50),
            mapa63 VARCHAR(50),
            mapa64 VARCHAR(50),
            mapa65 VARCHAR(50),
            mapa66 VARCHAR(50),
            mapa67 VARCHAR(50),
            mapa68 VARCHAR(50),
            mapa69 VARCHAR(50),
            mapa70 VARCHAR(50),
            mapa71 VARCHAR(50),
            mapa72 VARCHAR(50),
            mapa73 VARCHAR(50),
            mapa74 VARCHAR(50),
            mapa75 VARCHAR(50),
            mapa76 VARCHAR(50),
            mapa77 VARCHAR(50),
            mapa78 VARCHAR(50),
            mapa79 VARCHAR(50),
            mapa80 VARCHAR(50),
            mapa81 VARCHAR(50),
            mapa82 VARCHAR(50),
            mapa83 VARCHAR(50),
            mapa84 VARCHAR(50),
            mapa85 VARCHAR(50),
            mapa86 VARCHAR(50),
            mapa87 VARCHAR(50),
            mapa88 VARCHAR(50),
            mapa89 VARCHAR(50),
            mapa90 VARCHAR(50),
            mapa91 VARCHAR(50),
            mapa92 VARCHAR(50),
            mapa93 VARCHAR(50),
            mapa94 VARCHAR(50),
            mapa95 VARCHAR(50),
            mapa96 VARCHAR(50),
            mapa97 VARCHAR(50),
            mapa98 VARCHAR(50),
            mapa99 VARCHAR(50),
            mapa100 VARCHAR(50),
            mapa101 VARCHAR(50),
            mapa102 VARCHAR(50),
            mapa103 VARCHAR(50),
            mapa104 VARCHAR(50),
            mapa105 VARCHAR(50),
            mapa106 VARCHAR(50),
            mapa107 VARCHAR(50),
            mapa108 VARCHAR(50),
            mapa109 VARCHAR(50),
            mapa110 VARCHAR(50),
            mapa111 VARCHAR(50),
            mapa112 VARCHAR(50),
            mapa113 VARCHAR(50),
            mapa114 VARCHAR(50),
            mapa115 VARCHAR(50),
            mapa116 VARCHAR(50),
            mapa117 VARCHAR(50),
            mapa118 VARCHAR(50),
            mapa119 VARCHAR(50),
            mapa120 VARCHAR(50),
            mapa121 VARCHAR(50),
            mapa122 VARCHAR(50),
            mapa123 VARCHAR(50),
            mapa124 VARCHAR(50),
            mapa125 VARCHAR(50),
            mapa126 VARCHAR(50),
            mapa127 VARCHAR(50),
            mapa128 VARCHAR(50),
            mapa129 VARCHAR(50),
            mapa130 VARCHAR(50),
            mapa131 VARCHAR(50),
            mapa132 VARCHAR(50),
            mapa133 VARCHAR(50),
            mapa134 VARCHAR(50),
            mapa135 VARCHAR(50),
            mapa136 VARCHAR(50),
            mapa137 VARCHAR(50),
            mapa138 VARCHAR(50),
            mapa139 VARCHAR(50),
            mapa140 VARCHAR(50),
            mapa141 VARCHAR(50),
            mapa142 VARCHAR(50),
            mapa143 VARCHAR(50),
            mapa144 VARCHAR(50),
            mapa145 VARCHAR(50),
            mapa146 VARCHAR(50),
            mapa147 VARCHAR(50),
            mapa148 VARCHAR(50),
            mapa149 VARCHAR(50),
            mapa150 VARCHAR(50),
            mapa151 VARCHAR(50),
            mapa152 VARCHAR(50),
            mapa153 VARCHAR(50),
            mapa154 VARCHAR(50),
            mapa155 VARCHAR(50),
            mapa156 VARCHAR(50),
            idMapas1 VARCHAR(50),
            idMapas2 VARCHAR(50),
            idMapas3 VARCHAR(50),
            idMapas4 VARCHAR(50),
            idMapas5 VARCHAR(50),
            idMapas6 VARCHAR(50),
            idMapas7 VARCHAR(50),
            idMapas8 VARCHAR(50),
            idMapas9 VARCHAR(50),
            idMapas10 VARCHAR(50),
            idMapas11 VARCHAR(50),
            idMapas12 VARCHAR(50),
            idMapas13 VARCHAR(50),
            idMapas1desc VARCHAR(300),
            idMapas2desc VARCHAR(300),
            idMapas3desc VARCHAR(300),
            idMapas4desc VARCHAR(300),
            idMapas5desc VARCHAR(300),
            idMapas6desc VARCHAR(300),
            idMapas7desc VARCHAR(300),
            idMapas8desc VARCHAR(300),
            idMapas9desc VARCHAR(300),
            idMapas10desc VARCHAR(300),
            idMapas11desc VARCHAR(300),
            idMapas12desc VARCHAR(300),
            idMapas13desc VARCHAR(300),
            
            PRIMARY KEY(id)
    )
''')

conn.commit()

def save_value():
    value_to_save = request.json.get('value', None)
    
    if value_to_save:
        # Salvar value_to_save no banco de dados
        # ...
        return {"status": "success"}, 200
    else:
        return {"status": "value not provided"}, 400

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
    #################################################
    #################################################
    #################################################
    result1 = request.form.get('result1')
    result2 = request.form.get('result2')
    result3 = request.form.get('result3')
    result4 = request.form.get('result4')
    result5 = request.form.get('result5')
    result6 = request.form.get('result6')
    result7 = request.form.get('result7')
    result8 = request.form.get('result8')
    result9 = request.form.get('result9')
    result10 = request.form.get('result10')
    result11 = request.form.get('result11')
    result12 = request.form.get('result12')
   

    cursor = conn.cursor()
    cursor.execute(
        'INSERT INTO calibration(registro_calibracao, data, numero_certificado, '
        'cliente, morada, objeto, marca ,modelo ,'
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
        'peso_padrao59, peso_padrao60, peso_padrao61, peso_padrao62, result1,'
        'result2, result3, result4, result5, result6, result7, result8, result9,'
        'result10, result11, result12)'
        'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)',
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
         peso_padrao61, peso_padrao62,  result1,result2, result3, result4, result5,
         result6, result7, result8, result9, result10, result11, result12)
    )
    conn.commit()

    return {"success": True}

@app.route('/mapas', methods=['POST'])
def mapas():
    mapa = request.form.get('mapa')
    mapa2 = request.form.get('mapa2')
    mapa3 = request.form.get('mapa3')
    mapa4 = request.form.get('mapa4')
    mapa5 = request.form.get('mapa5')
    mapa6 = request.form.get('mapa6')
    mapa7 = request.form.get('mapa7')
    mapa8 = request.form.get('mapa8')
    mapa9 = request.form.get('mapa9')
    mapa10 = request.form.get('mapa10')
    mapa11 = request.form.get('mapa11')
    mapa12 = request.form.get('mapa12')
    mapa13 = request.form.get('mapa13')
    mapa14 = request.form.get('mapa14')
    mapa15 = request.form.get('mapa15')
    mapa16 = request.form.get('mapa16')
    mapa17 = request.form.get('mapa17')
    mapa18 = request.form.get('mapa18')
    mapa19 = request.form.get('mapa19')
    mapa20 = request.form.get('mapa20')
    mapa21 = request.form.get('mapa21')
    mapa22 = request.form.get('mapa22')
    mapa23 = request.form.get('mapa23')
    mapa24 = request.form.get('mapa24')
    mapa25 = request.form.get('mapa25')
    mapa26 = request.form.get('mapa26')
    mapa27 = request.form.get('mapa27')
    mapa28 = request.form.get('mapa28')
    mapa29 = request.form.get('mapa29')
    mapa30 = request.form.get('mapa30')
    mapa31 = request.form.get('mapa31')
    mapa32 = request.form.get('mapa32')
    mapa33 = request.form.get('mapa33')
    mapa34 = request.form.get('mapa34')
    mapa35 = request.form.get('mapa35')
    mapa36 = request.form.get('mapa36')
    mapa37 = request.form.get('mapa37')
    mapa38 = request.form.get('mapa38')
    mapa39 = request.form.get('mapa39')
    mapa40 = request.form.get('mapa40')
    mapa41 = request.form.get('mapa41')
    mapa42 = request.form.get('mapa42')
    mapa43 = request.form.get('mapa43')
    mapa44 = request.form.get('mapa44')
    mapa45 = request.form.get('mapa45')
    mapa46 = request.form.get('mapa46')
    mapa47 = request.form.get('mapa47')
    mapa48 = request.form.get('mapa48')
    mapa49 = request.form.get('mapa49')
    mapa50 = request.form.get('mapa50')
    mapa51 = request.form.get('mapa51')
    mapa52 = request.form.get('mapa52')
    mapa53 = request.form.get('mapa53')
    mapa54 = request.form.get('mapa54')
    mapa55 = request.form.get('mapa55')
    mapa56 = request.form.get('mapa56')
    mapa57 = request.form.get('mapa57')
    mapa58 = request.form.get('mapa58')
    mapa59 = request.form.get('mapa59')
    mapa60 = request.form.get('mapa60')
    mapa61 = request.form.get('mapa61')
    mapa62 = request.form.get('mapa62')
    mapa63 = request.form.get('mapa63')
    mapa64 = request.form.get('mapa64')
    mapa65 = request.form.get('mapa65')
    mapa66 = request.form.get('mapa66')
    mapa67 = request.form.get('mapa67')
    mapa68 = request.form.get('mapa68')
    mapa69 = request.form.get('mapa69')
    mapa70 = request.form.get('mapa70')
    mapa71 = request.form.get('mapa71')
    mapa72 = request.form.get('mapa72')
    mapa73 = request.form.get('mapa73')
    mapa74 = request.form.get('mapa74')
    mapa75 = request.form.get('mapa75')
    mapa76 = request.form.get('mapa76')
    mapa77 = request.form.get('mapa77')
    mapa78 = request.form.get('mapa78')
    mapa79 = request.form.get('mapa79')
    mapa80 = request.form.get('mapa80')
    mapa81 = request.form.get('mapa81')
    mapa82 = request.form.get('mapa82')
    mapa83 = request.form.get('mapa83')
    mapa84 = request.form.get('mapa84')
    mapa85 = request.form.get('mapa85')
    mapa86 = request.form.get('mapa86')
    mapa87 = request.form.get('mapa87')
    mapa88 = request.form.get('mapa88')
    mapa89 = request.form.get('mapa89')
    mapa90 = request.form.get('mapa90')
    mapa91 = request.form.get('mapa91')
    mapa92 = request.form.get('mapa92')
    mapa93 = request.form.get('mapa93')
    mapa94 = request.form.get('mapa94')
    mapa95 = request.form.get('mapa95')
    mapa96 = request.form.get('mapa96')
    mapa97 = request.form.get('mapa97')
    mapa98 = request.form.get('mapa98')
    mapa99 = request.form.get('mapa99')
    mapa100 = request.form.get('mapa100')
    mapa101 = request.form.get('mapa101')
    mapa102 = request.form.get('mapa102')
    mapa103 = request.form.get('mapa103')
    mapa104 = request.form.get('mapa104')
    mapa105 = request.form.get('mapa105')
    mapa106 = request.form.get('mapa106')
    mapa107 = request.form.get('mapa107')
    mapa108 = request.form.get('mapa108')
    mapa109 = request.form.get('mapa109')
    mapa110 = request.form.get('mapa110')
    mapa111 = request.form.get('mapa111')
    mapa112 = request.form.get('mapa112')
    mapa113 = request.form.get('mapa113')
    mapa114 = request.form.get('mapa114')
    mapa115 = request.form.get('mapa115')
    mapa116 = request.form.get('mapa116')
    mapa117 = request.form.get('mapa117')
    mapa118 = request.form.get('mapa118')
    mapa119 = request.form.get('mapa119')
    mapa120 = request.form.get('mapa120')
    mapa121 = request.form.get('mapa121')
    mapa122 = request.form.get('mapa122')
    mapa123 = request.form.get('mapa123')
    mapa124 = request.form.get('mapa124')
    mapa125 = request.form.get('mapa125')
    mapa126 = request.form.get('mapa126')
    mapa127 = request.form.get('mapa127')
    mapa128 = request.form.get('mapa128')
    mapa129 = request.form.get('mapa129')
    mapa130 = request.form.get('mapa130')
    mapa131 = request.form.get('mapa131')
    mapa132 = request.form.get('mapa132')
    mapa133 = request.form.get('mapa133')
    mapa134 = request.form.get('mapa134')
    mapa135 = request.form.get('mapa135')
    mapa136 = request.form.get('mapa136')
    mapa137 = request.form.get('mapa137')
    mapa138 = request.form.get('mapa138')
    mapa139 = request.form.get('mapa139')
    mapa140 = request.form.get('mapa140')
    mapa141 = request.form.get('mapa141')
    mapa142 = request.form.get('mapa142')
    mapa143 = request.form.get('mapa143')
    mapa144 = request.form.get('mapa144')
    mapa145 = request.form.get('mapa145')
    mapa146 = request.form.get('mapa146')
    mapa147 = request.form.get('mapa147')
    mapa148 = request.form.get('mapa148')
    mapa149 = request.form.get('mapa149')
    mapa150 = request.form.get('mapa150')
    mapa151 = request.form.get('mapa151')
    mapa152 = request.form.get('mapa152')
    mapa153 = request.form.get('mapa153')
    mapa154 = request.form.get('mapa154')
    mapa155 = request.form.get('mapa155')
    mapa156 = request.form.get('mapa156')
    idMapas1 = request.form.get('idMapas1')
    idMapas2 = request.form.get('idMapas2')
    idMapas3 = request.form.get('idMapas3')
    idMapas4 = request.form.get('idMapas4')
    idMapas5 = request.form.get('idMapas5')
    idMapas6 = request.form.get('idMapas6')
    idMapas7 = request.form.get('idMapas7')
    idMapas8 = request.form.get('idMapas8')
    idMapas9 = request.form.get('idMapas9')
    idMapas10 = request.form.get('idMapas10')
    idMapas11 = request.form.get('idMapas11')
    idMapas12 = request.form.get('idMapas12')
    idMapas13 = request.form.get('idMapas13')
    idMapas1desc = request.form.get('idMapas1desc')
    idMapas2desc = request.form.get('idMapas2desc')
    idMapas3desc = request.form.get('idMapas3desc')
    idMapas4desc = request.form.get('idMapas4desc')
    idMapas5desc = request.form.get('idMapas5desc')
    idMapas6desc = request.form.get('idMapas6desc')
    idMapas7desc = request.form.get('idMapas7desc')
    idMapas8desc = request.form.get('idMapas8desc')
    idMapas9desc = request.form.get('idMapas9desc')
    idMapas10desc = request.form.get('idMapas10desc')
    idMapas11desc = request.form.get('idMapas11desc')
    idMapas12desc = request.form.get('idMapas12desc')
    idMapas13desc = request.form.get('idMapas13desc')


    cursor = conn.cursor()
    cursor.execute(
        'INSERT INTO mapas(mapa, mapa2, mapa3, mapa4, mapa5, mapa6,' 
        'mapa7, mapa8, mapa9, mapa10, mapa11, mapa12, mapa13, mapa14, mapa15, mapa16,'
        'mapa17, mapa18, mapa19, mapa20, mapa21, mapa22, mapa23, mapa24, mapa25,'
        'mapa26, mapa27, mapa28, mapa29, mapa30, mapa31, mapa32, mapa33, mapa34,'
        'mapa35, mapa36, mapa37, mapa38, mapa39, mapa40, mapa41, mapa42, mapa43,'
        'mapa44, mapa45, mapa46, mapa47, mapa48, mapa49, mapa50, mapa51, mapa52,'
        'mapa53, mapa54, mapa55, mapa56, mapa57, mapa58, mapa59, mapa60, mapa61,'
        'mapa62, mapa63, mapa64, mapa65, mapa66, mapa67, mapa68, mapa69, mapa70,'
        'mapa71, mapa72, mapa73, mapa74, mapa75, mapa76, mapa77, mapa78, mapa79,'
        'mapa80, mapa81, mapa82, mapa83, mapa84, mapa85, mapa86, mapa87, mapa88,'
        'mapa89, mapa90, mapa91, mapa92, mapa93, mapa94, mapa95, mapa96, mapa97,'
        'mapa98, mapa99, mapa100, mapa101, mapa102, mapa103, mapa104, mapa105, mapa106,'
        'mapa107, mapa108, mapa109, mapa110, mapa111, mapa112, mapa113, mapa114, mapa115,'
        'mapa116, mapa117, mapa118, mapa119, mapa120, mapa121, mapa122, mapa123, mapa124,'
        'mapa125, mapa126, mapa127, mapa128, mapa129, mapa130, mapa131, mapa132, mapa133,'
        'mapa134, mapa135, mapa136, mapa137, mapa138, mapa139, mapa140, mapa141, mapa142,'
        'mapa143, mapa144, mapa145, mapa146, mapa147, mapa148, mapa149, mapa150, mapa151,'
        'mapa152, mapa153, mapa154, mapa155, mapa156, idMapas1, idMapas2, idMapas3,'
        'idMapas4, idMapas5, idMapas6, idMapas7, idMapas8, idMapas9, idMapas10, idMapas11,'
        'idMapas12, idMapas13, idMapas1desc, idMapas2desc, idMapas3desc, idMapas4desc,'
        'idMapas5desc, idMapas6desc, idMapas7desc, idMapas8desc, idMapas9desc, idMapas10desc,'
        'idMapas11desc, idMapas12desc, idMapas13desc)'
        'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, '
            '%s, %s)',
        (mapa, mapa2, mapa3, mapa4, mapa5, mapa6,mapa7, mapa8, mapa9, mapa10, mapa11, 
         mapa12, mapa13, mapa14, mapa15, mapa16, mapa17, mapa18, mapa19, mapa20,
         mapa21, mapa22, mapa23, mapa24, mapa25, mapa26, mapa27, mapa28, mapa29,
         mapa30, mapa31, mapa32, mapa33, mapa34, mapa35, mapa36, mapa37, mapa38,
         mapa39, mapa40, mapa41, mapa42, mapa43, mapa44, mapa45, mapa46, mapa47,
         mapa48, mapa49, mapa50, mapa51, mapa52, mapa53, mapa54, mapa55, mapa56,
         mapa57, mapa58, mapa59, mapa60, mapa61, mapa62, mapa63, mapa64, mapa65,
         mapa66, mapa67, mapa68, mapa69, mapa70, mapa71, mapa72, mapa73, mapa74,
         mapa75, mapa76, mapa77, mapa78, mapa79, mapa80, mapa81, mapa82, mapa83,
         mapa84, mapa85, mapa86, mapa87, mapa88, mapa89, mapa90, mapa91, mapa92,
         mapa93, mapa94, mapa95, mapa96, mapa97, mapa98, mapa99, mapa100, mapa101,
         mapa102, mapa103, mapa104, mapa105, mapa106, mapa107, mapa108, mapa109,
         mapa110, mapa111, mapa112, mapa113, mapa114, mapa115, mapa116, mapa117,
         mapa118, mapa119, mapa120, mapa121, mapa122, mapa123, mapa124, mapa125,
         mapa126, mapa127, mapa128, mapa129, mapa130, mapa131, mapa132, mapa133,
         mapa134, mapa135, mapa136, mapa137, mapa138, mapa139, mapa140, mapa141,
         mapa142, mapa143, mapa144, mapa145, mapa146, mapa147, mapa148, mapa149,
         mapa150, mapa151, mapa152, mapa153, mapa154, mapa155, mapa156, idMapas1,
         idMapas2, idMapas3, idMapas4, idMapas5, idMapas6, idMapas7, idMapas8,
         idMapas9, idMapas10, idMapas11, idMapas12, idMapas13, idMapas1desc, idMapas2desc,
         idMapas3desc, idMapas4desc, idMapas5desc, idMapas6desc, idMapas7desc,
         idMapas8desc, idMapas9desc, idMapas10desc, idMapas11desc, idMapas12desc,
         idMapas13desc)
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
    
    cursor.execute('SELECT * FROM usuarios ORDER BY id DESC')
    data = cursor.fetchall()
    
    column_headers_users = [i[0] for i in cursor.description]
    first_name_index = column_headers_users.index("first_name")
    last_name_index = column_headers_users.index("last_name")
    
    first_name = data[0][first_name_index]
    last_name = data[0][last_name_index]

    
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
    
    cursor.execute('SELECT * FROM mapas ORDER BY id DESC')
    data_mapas = cursor.fetchall()
    if not data_mapas:
        return {"success": False, "message": "No data found for mapas"}

    column_headers_mapas = [i[0] for i in cursor.description]
    idMapas1_index = column_headers_mapas .index('idMapas1')
    idMapas2_index = column_headers_mapas .index('idMapas2')
    idMapas3_index = column_headers_mapas .index('idMapas3')
    idMapas4_index = column_headers_mapas .index('idMapas4')
    idMapas5_index = column_headers_mapas .index('idMapas5')
    idMapas6_index = column_headers_mapas .index('idMapas6')
    idMapas7_index = column_headers_mapas .index('idMapas7')
    idMapas8_index = column_headers_mapas .index('idMapas8')
    idMapas9_index = column_headers_mapas .index('idMapas9')
    idMapas10_index = column_headers_mapas .index('idMapas10')
    idMapas11_index = column_headers_mapas .index('idMapas11')
    idMapas12_index = column_headers_mapas .index('idMapas12')
    idMapas13_index = column_headers_mapas .index('idMapas13')

    idMapas1desc_index = column_headers_mapas .index('idMapas1desc')
    idMapas2desc_index = column_headers_mapas .index('idMapas2desc')
    idMapas3desc_index = column_headers_mapas .index('idMapas3desc')
    idMapas4desc_index = column_headers_mapas .index('idMapas4desc')
    idMapas5desc_index = column_headers_mapas .index('idMapas5desc')
    idMapas6desc_index = column_headers_mapas .index('idMapas6desc')
    idMapas7desc_index = column_headers_mapas .index('idMapas7desc')
    idMapas8desc_index = column_headers_mapas .index('idMapas8desc')
    idMapas9desc_index = column_headers_mapas .index('idMapas9desc')
    idMapas10desc_index = column_headers_mapas .index('idMapas10desc')
    idMapas11desc_index = column_headers_mapas .index('idMapas11desc')
    idMapas12desc_index = column_headers_mapas .index('idMapas12desc')
    idMapas13desc_index = column_headers_mapas .index('idMapas13desc')


    idMapas1 = data_mapas[0][idMapas1_index]
    idMapas2 = data_mapas[0][idMapas2_index]
    idMapas3 = data_mapas[0][idMapas3_index]
    idMapas4 = data_mapas[0][idMapas4_index]
    idMapas5 = data_mapas[0][idMapas5_index]
    idMapas6 = data_mapas[0][idMapas6_index]
    idMapas7 = data_mapas[0][idMapas7_index]
    idMapas8 = data_mapas[0][idMapas8_index]
    idMapas9 = data_mapas[0][idMapas9_index]
    idMapas10 = data_mapas[0][idMapas10_index]
    idMapas11 = data_mapas[0][idMapas11_index]
    idMapas12 = data_mapas[0][idMapas12_index]
    idMapas13 = data_mapas[0][idMapas13_index]

    idMapas1desc = data_mapas[0][idMapas1desc_index]
    idMapas2desc = data_mapas[0][idMapas2desc_index]
    idMapas3desc = data_mapas[0][idMapas3desc_index]
    idMapas4desc = data_mapas[0][idMapas4desc_index]
    idMapas5desc = data_mapas[0][idMapas5desc_index]
    idMapas6desc = data_mapas[0][idMapas6desc_index]
    idMapas7desc = data_mapas[0][idMapas7desc_index]
    idMapas8desc = data_mapas[0][idMapas8desc_index]
    idMapas9desc = data_mapas[0][idMapas9desc_index]
    idMapas10desc = data_mapas[0][idMapas10desc_index]
    idMapas11desc = data_mapas[0][idMapas11desc_index]
    idMapas12desc = data_mapas[0][idMapas12desc_index]
    idMapas13desc = data_mapas[0][idMapas13desc_index]


    documents_path = Path.home() / "Documents"
    folder_path = documents_path / "Certificados de Calibração"
    current_datetime = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    pdf_filename = f"Certificado de Calibração - {first_name} {last_name} {current_datetime}.pdf"
    file_path = folder_path / pdf_filename
    os.makedirs(folder_path, exist_ok=True)

    scale_factor = 0.8
    page_width = 595.28
    # Suponho que a maior largura do conteúdo seja a soma da margem esquerda da imagem e da largura da imagem.
    # Se isso não for preciso, ajuste o valor de content_width.
    content_width = (340 + 200) * scale_factor
    x_start = (page_width - content_width) / 2.3

    c = canvas.Canvas(str(file_path), pagesize=(595.28, 841.89))

    c.setFillColor(black)
    c.setFont("Arial-Bold", 14 * scale_factor)
    c.drawString(x_start, 1020 * scale_factor, "CERTIFICADO DE CALIBRAÇÃO")

    c.setFont("Arial-Italic", 12 * scale_factor)
    c.drawString(x_start, 1008 * scale_factor, "Certificate of Calibration")

    c.setFont("Arial-Bold", 12 * scale_factor)
    c.drawString(x_start, 994 * scale_factor, "NÚMERO")
    c.drawString(x_start + 80 * scale_factor, 994 * scale_factor, f"{numero_certificado}")

    c.setFont("Arial-Italic", 10 * scale_factor)
    c.drawString(x_start, 984 * scale_factor, "Number")

    c.setFont("Arial-Bold", 12 * scale_factor)
    c.drawString(x_start, 972 * scale_factor, "DATA")
    c.drawString(x_start + 100 * scale_factor, 972 * scale_factor, f"{data_para_exibir}")

    c.setFont("Arial-Italic", 10 * scale_factor)
    c.drawString(x_start, 962 * scale_factor, "Date ")

    c.drawImage("assets/images/labweigh.png", x_start + 240 * scale_factor, 970 * scale_factor, 200 * scale_factor, 60 * scale_factor) 
    
    c.drawImage("assets/images/ipac.png", x_start + 470 * scale_factor, 960 * scale_factor, 80 * scale_factor, 70 * scale_factor)  
    increase_length = 10  # Aumento em cada lado
    c.line(x_start - increase_length, 930 * scale_factor, (x_start + 600 + increase_length) * scale_factor, 930 * scale_factor)    ###################################
    
    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 905 * scale_factor, f"Objecto")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 892 * scale_factor, f"Item")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 905 * scale_factor, f"{objeto}")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 878 * scale_factor, f"Marca")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 867 * scale_factor, f"Mark")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 878 * scale_factor, f"{marca}")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 853 * scale_factor, f"Modelo")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 842 * scale_factor, f"Model")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 853 * scale_factor, f"{modelo}")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 828 * scale_factor, f"N.º Série")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 816 * scale_factor, f"Serial Number")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 828 * scale_factor, f"{nserie}")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 802 * scale_factor, f"Identificação")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 791 * scale_factor, f"Identification")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 802 * scale_factor, f"{id_interna}")

    increase_length = 12  # Aumento em cada lado
    c.line(x_start - increase_length, 785 * scale_factor, (x_start + 600 + increase_length) * scale_factor, 785 * scale_factor)    ###################################

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 760 * scale_factor, f"Solicitante")
    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 750 * scale_factor, f"Applicant")
    c.setFont("Arial", 10)
    c.drawString(x_start + 140 * scale_factor, 760 * scale_factor, f"{cliente}")
    c.drawString(x_start + 140 * scale_factor, 740 * scale_factor, f"{morada}")
    c.drawString(x_start + 140 * scale_factor, 720 * scale_factor, f"{cep}")

    increase_length = 10  # Aumento em cada lado
    c.line(x_start - increase_length, 700 * scale_factor, (x_start + 600 + increase_length) * scale_factor, 700 * scale_factor)    ###################################
    
    c.setFont("Arial-Bold", 12)
    c.drawString(x_start, 680 * scale_factor, f"Condições de calibração:")

    c.setFont("Arial-Italic", 10)
    c.drawString(x_start, 668 * scale_factor, f"Calibration conditions:")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 652 * scale_factor, f"Procedimento")

    c.setFont("Arial", 8)
    c.drawString(x_start + 140 * scale_factor, 652 * scale_factor, f"PT 05 01, Rev.4")

    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 642 * scale_factor, f"Procedure")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 628 * scale_factor, f"Data de Calibração")

    c.setFont("Arial", 8)
    c.drawString(x_start + 140 * scale_factor, 628 * scale_factor, f"{data_para_exibir}")

    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 619 * scale_factor, f"Date of Calibration")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start, 605 * scale_factor, f"Rastreabilidade")

    c.setFont("Arial-Italic", 8)
    c.drawString(x_start, 595 * scale_factor, f"Traceability")

    c.setFont("Arial", 9)   
    c.drawString(x_start + 140 * scale_factor, 505 * scale_factor, f"Calibração com rastreabilidade ao Sistema Internacional de Unidades (SI) por")
    c.drawString(x_start + 140 * scale_factor, 493 * scale_factor, f"intermédio do(s) seguinte(s) peso(s) padrão:")
    ######################################

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start + 300 , 652 * scale_factor, f"Temperatura (˚C):")

    c.rect(x_start + 486 * scale_factor, 648 * scale_factor, 50 * scale_factor, 14 * scale_factor, fill=0)
    c.rect(x_start + 546 * scale_factor, 648 * scale_factor, 50 * scale_factor, 14 * scale_factor, fill=0)

    c.drawString(x_start + 273, 628 * scale_factor, f"Humidade Relativa (%):")
    c.rect(x_start + 486 * scale_factor, 626 * scale_factor, 50 * scale_factor, 14 * scale_factor, fill=0)
    c.rect(x_start + 546 * scale_factor, 626 * scale_factor, 50 * scale_factor, 14 * scale_factor, fill=0)

    c.drawString(x_start + 494 * scale_factor, 668 * scale_factor, f"Inicial")

    c.setFont("Arial", 9)
    c.drawString(x_start + 490 * scale_factor, 651 * scale_factor, f"{temp_init} ± 1")
    c.drawString(x_start + 490 * scale_factor, 628 * scale_factor, f"{hora_init} ± 1")

    c.setFont("Arial-Bold", 10)
    c.drawString(x_start + 554 * scale_factor, 668 * scale_factor, f"Final")

    c.setFont("Arial", 9)
    c.drawString(x_start + 550 * scale_factor, 651 * scale_factor, f"{temp_final} ± 1")
    c.drawString(x_start + 550 * scale_factor, 628 * scale_factor, f"{hora_final} ± 1")
    #######################################
    c.setFillColorRGB(0.7, 0.7, 0.7)
    c.setStrokeColorRGB(0.7, 0.7, 0.7) 
    c.rect(160, 365, 420, 20, fill=1)
    c.setFont("Arial-Bold", 12)
    c.setFillColorRGB(0, 0, 0)
    c.drawString(220, 360 + 20 / 2, "Código")
    c.drawString(360, 360 + 20 / 2,"Peso(s) Padrão")
    c.setFont("Arial", 10)
    idMapas_values = [
        (idMapas1, idMapas1desc),
        (idMapas2, idMapas2desc),
        (idMapas3, idMapas3desc),
        (idMapas4, idMapas4desc),
        (idMapas5, idMapas5desc),
        (idMapas6, idMapas6desc),
        (idMapas7, idMapas7desc),
        (idMapas8, idMapas8desc),
        (idMapas9, idMapas9desc),
        (idMapas10, idMapas10desc),
        (idMapas11, idMapas11desc)
    ]
    # 2. Adicione os valores à lista apenas se eles não estiverem vazios.
    non_empty_values = [(id_val, desc_val) for id_val, desc_val in idMapas_values if id_val and desc_val]

# 3. Itere sobre a lista para adicionar os valores ao PDF.
    y_position = 345
    for id_val, desc_val in non_empty_values:
        c.drawString(230, y_position, f"{id_val}")
        c.drawString(310, y_position, f"{desc_val}")
        y_position -= 20


    c.setFont("Arial-Bold", 12)
    c.drawString(20, 125, f"Observações")
    c.setFont("Arial-Italic", 10)
    c.drawString(20, 115, f"Observations")
    c.setFont("Arial", 12)
    c.drawString(160, 123, f"A incerteza expandida de medição apresentada, é indicada como a incerteza")
    c.drawString(160, 110, f"padrão da medição, multiplicada por um fator de cobertura 'k' tal, que a")
    c.drawString(160, 97, f"probabilidade de cobertura corresponde a aproximadamente 95%.")
    c.drawString(160, 84, f"A incerteza foi calculada de acordo com o Doc. EA-4/02.")
    c.setFont("Arial-Italic", 8)
    c.drawString(20, 70, f"O IPAC é um dos signatários do Acordo de Reconhecimento Mútuo (MLA) da European Cooperation for Accreditation (EA) e da International")
    c.drawString(20, 58, f"Laboratory Accreditation Cooperation (ILAC) para a calibração.")
    c.setFont("Arial", 12)
    c.drawString(20, 30, f" Técnico:")
    c.line(60, 30, 50, 30)

    c.showPage()
    c.save()
    webbrowser.open(str(file_path))
    with open(file_path, "rb") as pdf_file:
        content = pdf_file.read()

    response = Response(content, content_type="application/pdf")
    response.headers["Content-Disposition"] = f"inline; filename={pdf_filename}"

    return response   



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
