// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, dynamic>> loginUser(String user, String password) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/login'),
    body: {'user': user, 'password': password},
  );

  final jsonResponse = jsonDecode(response.body);
  return {'success': jsonResponse['success'], 'user': user};
}

Future<Map<String, String>> getUserDetails(String user) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/get_user_details'),
    body: {'user': user},
  );

  final jsonResponse = jsonDecode(response.body);

  if (jsonResponse['success']) {
    return {
      'user': jsonResponse['user'] ?? '',
      'first_name': jsonResponse['first_name'] ?? '',
      'last_name': jsonResponse['last_name'] ?? '',
    };
  } else {
    return {'user': '', 'first_name': '', 'last_name': ''};
  }
}

Future<void> setLoggedIn(bool isLoggedIn,
    {String? user, String? firstName, String? lastName}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('loggedIn', isLoggedIn);

  if (user != null) {
    await prefs.setString('user', user);
  }
  if (firstName != null) {
    await prefs.setString('first_name', firstName);
  }
  if (lastName != null) {
    await prefs.setString('last_name', lastName);
  }
}

Future<String?> getFirstName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('first_name');
}

Future<String?> getLastName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('last_name');
}

Future<bool> isLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('loggedIn') ?? false;
}

Future<String?> getUsername() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('user');
}

Future<bool> postCalibrationData(
  String regCali,
  String data,
  String certificado,
  String cliente,
  String morada,
  String objeto,
  String marca,
  String modelo,
  String nserie,
  String idinterna,
  String cepController,
  //localização diferente
  String morada2,
  String cepController2,
  //compensação de gravidade
  String altitude,
  String latitude,
  //caracteristicas dos instrumentos
  String cimax,
  String dropdownController,
  String d,
  String dT,
  //condiçoes ambientais
  String tempInit,
  String tempFinal,
  String horaInit,
  String horaFinal,
  String pontosCali,
  String pontosCali2,
  String indicaBalanca,
  String indicaBalanca2,
  String cargaAjuste,
  String ref,
  String pontosApoioController,
  String cargaUti,
  String ponto1,
  String ponto2,
  String ponto3,
  String ponto4,
  String ponto5,
  String ponto6,
  String ponto7,
  String ponto8,
  String ponto9,
  String ponto10,
  String ponto11,
  String ponto12,
  String aPesoPadrao1,
  String aPesoPadrao2,
  String aPesoPadrao3,
  String aPesoPadrao4,
  String aPesoPadrao5,
  String aPesoPadrao6,
  String aPesoPadrao7,
  String aPesoPadrao8,
  String aPesoPadrao9,
  String aPesoPadrao10,
  String aPesoPadrao11,
  String aPesoPadrao12,
  String aPesoPadrao13,
  String aPesoPadrao14,
  String aPesoPadrao15,
  String aPesoPadrao16,
  String aPesoPadrao17,
  String aPesoPadrao18,
  String aPesoPadrao19,
  String aPesoPadrao20,
  String aPesoPadrao21,
  String aPesoPadrao22,
  String aPesoPadrao23,
  String aPesoPadrao24,
  String aPesoPadrao25,
  String aPesoPadrao26,
  String aPesoPadrao27,
  String aPesoPadrao28,
  String aPesoPadrao29,
  String aPesoPadrao30,
  String aPesoPadrao31,
  String aPesoPadrao32,
  String aPesoPadrao33,
  String aPesoPadrao34,
  String aPesoPadrao35,
  String aPesoPadrao36,
  String aPesoPadrao37,
  String aPesoPadrao38,
  String aPesoPadrao39,
  String aPesoPadrao40,
  String aPesoPadrao41,
  String aPesoPadrao42,
  String aPesoPadrao43,
  String aPesoPadrao44,
  String aPesoPadrao45,
  String aPesoPadrao46,
  String aPesoPadrao47,
  String aPesoPadrao48,
  String aPesoPadrao49,
  String aPesoPadrao50,
  String aPesoPadrao51,
  String aPesoPadrao52,
  String aPesoPadrao53,
  String aPesoPadrao54,
  String aPesoPadrao55,
  String aPesoPadrao56,
  String aPesoPadrao57,
  String aPesoPadrao58,
  String aPesoPadrao59,
  String aPesoPadrao60,
  String aPesoPadrao61,
  String aPesoPadrao62,
  String aPesoPadrao63,
  String aPesoPadrao64,
  String aPesoPadrao65,
  String aPesoPadrao66,
  String aPesoPadrao67,
  String aPesoPadrao68,
  String aPesoPadrao69,
  String aPesoPadrao70,
  String aPesoPadrao71,
  String aPesoPadrao72,
  String aPesoPadrao73,
  String aPesoPadrao74,
  String aPesoPadrao75,
  String aPesoPadrao76,
  String aPesoPadrao77,
  String aPesoPadrao78,
  String aPesoPadrao79,
  String aPesoPadrao80,
  String aPesoPadrao81,
  String aPesoPadrao82,
  String aPesoPadrao83,
  String aPesoPadrao84,
  String aPesoPadrao85,
  String aPesoPadrao86,
  String aPesoPadrao87,
  String aPesoPadrao88,
  String aPesoPadrao89,
  String aPesoPadrao90,
  String aPesoPadrao91,
  String aPesoPadrao92,
  String aPesoPadrao93,
  String aPesoPadrao94,
  String aPesoPadrao95,
  String aPesoPadrao96,
  String aPesoPadrao97,
  String aPesoPadrao98,
  String aPesoPadrao99,
  String aPesoPadrao100,
  String aPesoPadrao101,
  String aPesoPadrao102,
  String aPesoPadrao103,
  String aPesoPadrao104,
  String aPesoPadrao105,
  String aPesoPadrao106,
  String aPesoPadrao107,
  String aPesoPadrao108,
  String aPesoPadrao109,
  String aPesoPadrao110,
  String aPesoPadrao111,
  String aPesoPadrao112,
  String aPesoPadrao113,
  String aPesoPadrao114,
  String aPesoPadrao115,
  String aPesoPadrao116,
  String aPesoPadrao117,
  String aPesoPadrao118,
  String aPesoPadrao119,
  String aPesoPadrao120,
) async {
  final body = {
    'registro_calibracao': regCali,
    'data': data,
    'numero_certificado': certificado,
    'cliente': cliente,
    'morada': morada,
    'objeto': objeto,
    'marca': marca,
    'modelo': modelo,
    'nserie': nserie,
    'id_interna': idinterna,
    'cep_controller': cepController,
    //localização diferente
    'morada2': morada2,
    'cep_controller2': cepController2,
    //compensação de gravidade
    'altitude': altitude,
    'latitude': latitude,
    //caracteristicas dos instrumentos
    'ci_max': cimax,
    'dropdown_controller': dropdownController,
    'd': d,
    'dt': dT,
    //condiçoes ambientais
    'temp_init': tempInit,
    'temp_final': tempFinal,
    'hora_init': horaInit,
    'hora_final': horaFinal,
    //Pagina 2
    'pontos_cali': pontosCali,
    'pontos_cali2': pontosCali2,
    'indica_balanca': indicaBalanca,
    'indica_balanca2': indicaBalanca2,
    'carga_ajuste': cargaAjuste,
    'ref': ref,
    'pontos_apoio_controller': pontosApoioController,
    'carga_uti': cargaUti,
    'ponto1': ponto1,
    'ponto2': ponto2,
    'ponto3': ponto3,
    'ponto4': ponto4,
    'ponto5': ponto5,
    'ponto6': ponto6,
    'ponto7': ponto7,
    'ponto8': ponto8,
    'ponto9': ponto9,
    'ponto10': ponto10,
    'ponto11': ponto11,
    'ponto12': ponto12,
    'peso_padrao1': aPesoPadrao1,
    'peso_padrao2': aPesoPadrao2,
    'peso_padrao3': aPesoPadrao3,
    'peso_padrao4': aPesoPadrao4,
    'peso_padrao5': aPesoPadrao5,
    'peso_padrao6': aPesoPadrao6,
    'peso_padrao7': aPesoPadrao7,
    'peso_padrao8': aPesoPadrao8,
    'peso_padrao9': aPesoPadrao9,
    'peso_padrao10': aPesoPadrao10,
    'peso_padrao11': aPesoPadrao11,
    'peso_padrao12': aPesoPadrao12,
    'peso_padrao13': aPesoPadrao13,
    'peso_padrao14': aPesoPadrao14,
    'peso_padrao15': aPesoPadrao15,
    'peso_padrao16': aPesoPadrao16,
    'peso_padrao17': aPesoPadrao17,
    'peso_padrao18': aPesoPadrao18,
    'peso_padrao19': aPesoPadrao19,
    'peso_padrao20': aPesoPadrao20,
    'peso_padrao21': aPesoPadrao21,
    'peso_padrao22': aPesoPadrao22,
    'peso_padrao23': aPesoPadrao23,
    'peso_padrao24': aPesoPadrao24,
    'peso_padrao25': aPesoPadrao25,
    'peso_padrao26': aPesoPadrao26,
    'peso_padrao27': aPesoPadrao27,
    'peso_padrao28': aPesoPadrao28,
    'peso_padrao29': aPesoPadrao29,
    'peso_padrao30': aPesoPadrao30,
    'peso_padrao31': aPesoPadrao31,
    'peso_padrao32': aPesoPadrao32,
    'peso_padrao33': aPesoPadrao33,
    'peso_padrao34': aPesoPadrao34,
    'peso_padrao35': aPesoPadrao35,
    'peso_padrao36': aPesoPadrao36,
    'peso_padrao37': aPesoPadrao37,
    'peso_padrao38': aPesoPadrao38,
    'peso_padrao39': aPesoPadrao39,
    'peso_padrao40': aPesoPadrao40,
    'peso_padrao41': aPesoPadrao41,
    'peso_padrao42': aPesoPadrao42,
    'peso_padrao43': aPesoPadrao43,
    'peso_padrao44': aPesoPadrao44,
    'peso_padrao45': aPesoPadrao45,
    'peso_padrao46': aPesoPadrao46,
    'peso_padrao47': aPesoPadrao47,
    'peso_padrao48': aPesoPadrao48,
    'peso_padrao49': aPesoPadrao49,
    'peso_padrao50': aPesoPadrao50,
    'peso_padrao51': aPesoPadrao51,
    'peso_padrao52': aPesoPadrao52,
    'peso_padrao53': aPesoPadrao53,
    'peso_padrao54': aPesoPadrao54,
    'peso_padrao55': aPesoPadrao55,
    'peso_padrao56': aPesoPadrao56,
    'peso_padrao57': aPesoPadrao57,
    'peso_padrao58': aPesoPadrao58,
    'peso_padrao59': aPesoPadrao59,
    'peso_padrao60': aPesoPadrao60,
    'peso_padrao61': aPesoPadrao61,
    'peso_padrao62': aPesoPadrao62,
    'peso_padrao63': aPesoPadrao63,
    'peso_padrao64': aPesoPadrao64,
    'peso_padrao65': aPesoPadrao65,
    'peso_padrao66': aPesoPadrao66,
    'peso_padrao67': aPesoPadrao67,
    'peso_padrao68': aPesoPadrao68,
    'peso_padrao69': aPesoPadrao69,
    'peso_padrao70': aPesoPadrao70,
    'peso_padrao71': aPesoPadrao71,
    'peso_padrao72': aPesoPadrao72,
    'peso_padrao73': aPesoPadrao73,
    'peso_padrao74': aPesoPadrao74,
    'peso_padrao75': aPesoPadrao75,
    'peso_padrao76': aPesoPadrao76,
    'peso_padrao77': aPesoPadrao77,
    'peso_padrao78': aPesoPadrao78,
    'peso_padrao79': aPesoPadrao79,
    'peso_padrao80': aPesoPadrao80,
    'peso_padrao81': aPesoPadrao81,
    'peso_padrao82': aPesoPadrao82,
    'peso_padrao83': aPesoPadrao83,
    'peso_padrao84': aPesoPadrao84,
    'peso_padrao85': aPesoPadrao85,
    'peso_padrao86': aPesoPadrao86,
    'peso_padrao87': aPesoPadrao87,
    'peso_padrao88': aPesoPadrao88,
    'peso_padrao89': aPesoPadrao89,
    'peso_padrao90': aPesoPadrao90,
    'peso_padrao91': aPesoPadrao91,
    'peso_padrao92': aPesoPadrao92,
    'peso_padrao93': aPesoPadrao93,
    'peso_padrao94': aPesoPadrao94,
    'peso_padrao95': aPesoPadrao95,
    'peso_padrao96': aPesoPadrao96,
    'peso_padrao97': aPesoPadrao97,
    'peso_padrao98': aPesoPadrao98,
    'peso_padrao99': aPesoPadrao99,
    'peso_padrao100': aPesoPadrao100,
    'peso_padrao101': aPesoPadrao101,
    'peso_padrao102': aPesoPadrao102,
    'peso_padrao103': aPesoPadrao103,
    'peso_padrao104': aPesoPadrao104,
    'peso_padrao105': aPesoPadrao105,
    'peso_padrao106': aPesoPadrao106,
    'peso_padrao107': aPesoPadrao107,
    'peso_padrao108': aPesoPadrao108,
    'peso_padrao109': aPesoPadrao109,
    'peso_padrao110': aPesoPadrao110,
    'peso_padrao111': aPesoPadrao111,
    'peso_padrao112': aPesoPadrao112,
    'peso_padrao113': aPesoPadrao113,
    'peso_padrao114': aPesoPadrao114,
    'peso_padrao115': aPesoPadrao115,
    'peso_padrao116': aPesoPadrao116,
    'peso_padrao117': aPesoPadrao117,
    'peso_padrao118': aPesoPadrao118,
    'peso_padrao119': aPesoPadrao119,
    'peso_padrao120': aPesoPadrao120,
  };

  print('REQ: $body');

  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/post_calibration_data'),
    body: body,
  );

  print('RES: ${response.body}');

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

class PDFService {
  Future<void> callPDFGeneration() async {
    try {
      var response =
          await http.get(Uri.parse('http://localhost:5000/generate_pdf'));
      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        if (result['success']) {
          print(result['message']);
        } else {
          print('Falha ao gerar PDF!');
        }
      } else {
        print('Falha na requisição HTTP');
      }
    } catch (e) {
      print('Erro ao chamar o serviço PDF: $e');
    }
  }
}
