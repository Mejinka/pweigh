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
  String result1,
  String result2,
  String result3,
  String result4,
  String result5,
  String result6,
  String result7,
  String result8,
  String result9,
  String result10,
  String result11,
  String result12,
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
    //////////
    'result1': result1,
    'result2': result2,
    'result3': result3,
    'result4': result4,
    'result5': result5,
    'result6': result6,
    'result7': result7,
    'result8': result8,
    'result9': result9,
    'result10': result10,
    'result11': result11,
    'result12': result12,
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

Future<bool> mapas(
  String mapa,
  String mapa2,
  String mapa3,
  String mapa4,
  String mapa5,
  String mapa6,
  String mapa7,
  String mapa8,
  String mapa9,
  String mapa10,
  String mapa11,
  String mapa12,
  String mapa13,
  String mapa14,
  String mapa15,
  String mapa16,
  String mapa17,
  String mapa18,
  String mapa19,
  String mapa20,
  String mapa21,
  String mapa22,
  String mapa23,
  String mapa24,
  String mapa25,
  String mapa26,
  String mapa27,
  String mapa28,
  String mapa29,
  String mapa30,
  String mapa31,
  String mapa32,
  String mapa33,
  String mapa34,
  String mapa35,
  String mapa36,
  String mapa37,
  String mapa38,
  String mapa39,
  String mapa40,
  String mapa41,
  String mapa42,
  String mapa43,
  String mapa44,
  String mapa45,
  String mapa46,
  String mapa47,
  String mapa48,
  String mapa49,
  String mapa50,
  String mapa51,
  String mapa52,
  String mapa53,
  String mapa54,
  String mapa55,
  String mapa56,
  String mapa57,
  String mapa58,
  String mapa59,
  String mapa60,
  String mapa61,
  String mapa62,
  String mapa63,
  String mapa64,
  String mapa65,
  String mapa66,
  String mapa67,
  String mapa68,
  String mapa69,
  String mapa70,
  String mapa71,
  String mapa72,
  String mapa73,
  String mapa74,
  String mapa75,
  String mapa76,
  String mapa77,
  String mapa78,
  String mapa79,
  String mapa80,
  String mapa81,
  String mapa82,
  String mapa83,
  String mapa84,
  String mapa85,
  String mapa86,
  String mapa87,
  String mapa88,
  String mapa89,
  String mapa90,
  String mapa91,
  String mapa92,
  String mapa93,
  String mapa94,
  String mapa95,
  String mapa96,
  String mapa97,
  String mapa98,
  String mapa99,
  String mapa100,
  String mapa101,
  String mapa102,
  String mapa103,
  String mapa104,
  String mapa105,
  String mapa106,
  String mapa107,
  String mapa108,
  String mapa109,
  String mapa110,
  String mapa111,
  String mapa112,
  String mapa113,
  String mapa114,
  String mapa115,
  String mapa116,
  String mapa117,
  String mapa118,
  String mapa119,
  String mapa120,
  String mapa121,
  String mapa122,
  String mapa123,
  String mapa124,
  String mapa125,
  String mapa126,
  String mapa127,
  String mapa128,
  String mapa129,
  String mapa130,
  String mapa131,
  String mapa132,
  String mapa133,
  String mapa134,
  String mapa135,
  String mapa136,
  String mapa137,
  String mapa138,
  String mapa139,
  String mapa140,
  String mapa141,
  String mapa142,
  String mapa143,
  String mapa144,
  String mapa145,
  String mapa146,
  String mapa147,
  String mapa148,
  String mapa149,
  String mapa150,
  String mapa151,
  String mapa152,
  String mapa153,
  String mapa154,
  String mapa155,
  String mapa156,
  String idMapas1,
  String idMapas2,
  String idMapas3,
  String idMapas4,
  String idMapas5,
  String idMapas6,
  String idMapas7,
  String idMapas8,
  String idMapas9,
  String idMapas10,
  String idMapas11,
  String idMapas12,
  String idMapas13,
  String idMapas1desc,
  String idMapas2desc,
  String idMapas3desc,
  String idMapas4desc,
  String idMapas5desc,
  String idMapas6desc,
  String idMapas7desc,
  String idMapas8desc,
  String idMapas9desc,
  String idMapas10desc,
  String idMapas11desc,
  String idMapas12desc,
  String idMapas13desc,
) async {
  final body = {
    'mapa': mapa,
    'mapa2': mapa2,
    'mapa3': mapa3,
    'mapa4': mapa4,
    'mapa5': mapa5,
    'mapa6': mapa6,
    'mapa7': mapa7,
    'mapa8': mapa8,
    'mapa9': mapa9,
    'mapa10': mapa10,
    'mapa11': mapa11,
    'mapa12': mapa12,
    'mapa13': mapa13,
    'mapa14': mapa14,
    'mapa15': mapa15,
    'mapa16': mapa16,
    'mapa17': mapa17,
    'mapa18': mapa18,
    'mapa19': mapa19,
    'mapa20': mapa20,
    'mapa21': mapa21,
    'mapa22': mapa22,
    'mapa23': mapa23,
    'mapa24': mapa24,
    'mapa25': mapa25,
    'mapa26': mapa26,
    'mapa27': mapa27,
    'mapa28': mapa28,
    'mapa29': mapa29,
    'mapa30': mapa30,
    'mapa31': mapa31,
    'mapa32': mapa32,
    'mapa33': mapa33,
    'mapa34': mapa34,
    'mapa35': mapa35,
    'mapa36': mapa36,
    'mapa37': mapa37,
    'mapa38': mapa38,
    'mapa39': mapa39,
    'mapa40': mapa40,
    'mapa41': mapa41,
    'mapa42': mapa42,
    'mapa43': mapa43,
    'mapa44': mapa44,
    'mapa45': mapa45,
    'mapa46': mapa46,
    'mapa47': mapa47,
    'mapa48': mapa48,
    'mapa49': mapa49,
    'mapa50': mapa50,
    'mapa51': mapa51,
    'mapa52': mapa52,
    'mapa53': mapa53,
    'mapa54': mapa54,
    'mapa55': mapa55,
    'mapa56': mapa56,
    'mapa57': mapa57,
    'mapa58': mapa58,
    'mapa59': mapa59,
    'mapa60': mapa60,
    'mapa61': mapa61,
    'mapa62': mapa62,
    'mapa63': mapa63,
    'mapa64': mapa64,
    'mapa65': mapa65,
    'mapa66': mapa66,
    'mapa67': mapa67,
    'mapa68': mapa68,
    'mapa69': mapa69,
    'mapa70': mapa70,
    'mapa71': mapa71,
    'mapa72': mapa72,
    'mapa73': mapa73,
    'mapa74': mapa74,
    'mapa75': mapa75,
    'mapa76': mapa76,
    'mapa77': mapa77,
    'mapa78': mapa78,
    'mapa79': mapa79,
    'mapa80': mapa80,
    'mapa81': mapa81,
    'mapa82': mapa82,
    'mapa83': mapa83,
    'mapa84': mapa84,
    'mapa85': mapa85,
    'mapa86': mapa86,
    'mapa87': mapa87,
    'mapa88': mapa88,
    'mapa89': mapa89,
    'mapa90': mapa90,
    'mapa91': mapa91,
    'mapa92': mapa92,
    'mapa93': mapa93,
    'mapa94': mapa94,
    'mapa95': mapa95,
    'mapa96': mapa96,
    'mapa97': mapa97,
    'mapa98': mapa98,
    'mapa99': mapa99,
    'mapa100': mapa100,
    'mapa101': mapa101,
    'mapa102': mapa102,
    'mapa103': mapa103,
    'mapa104': mapa104,
    'mapa105': mapa105,
    'mapa106': mapa106,
    'mapa107': mapa107,
    'mapa108': mapa108,
    'mapa109': mapa109,
    'mapa110': mapa110,
    'mapa111': mapa111,
    'mapa112': mapa112,
    'mapa113': mapa113,
    'mapa114': mapa114,
    'mapa115': mapa115,
    'mapa116': mapa116,
    'mapa117': mapa117,
    'mapa118': mapa118,
    'mapa119': mapa119,
    'mapa120': mapa120,
    'mapa121': mapa121,
    'mapa122': mapa122,
    'mapa123': mapa123,
    'mapa124': mapa124,
    'mapa125': mapa125,
    'mapa126': mapa126,
    'mapa127': mapa127,
    'mapa128': mapa128,
    'mapa129': mapa129,
    'mapa130': mapa130,
    'mapa131': mapa131,
    'mapa132': mapa132,
    'mapa133': mapa133,
    'mapa134': mapa134,
    'mapa135': mapa135,
    'mapa136': mapa136,
    'mapa137': mapa137,
    'mapa138': mapa138,
    'mapa139': mapa139,
    'mapa140': mapa140,
    'mapa141': mapa141,
    'mapa142': mapa142,
    'mapa143': mapa143,
    'mapa144': mapa144,
    'mapa145': mapa145,
    'mapa146': mapa146,
    'mapa147': mapa147,
    'mapa148': mapa148,
    'mapa149': mapa149,
    'mapa150': mapa150,
    'mapa151': mapa151,
    'mapa152': mapa152,
    'mapa153': mapa153,
    'mapa154': mapa154,
    'mapa155': mapa155,
    'mapa156': mapa156,
    'idMapas1': idMapas1,
    'idMapas2': idMapas2,
    'idMapas3': idMapas3,
    'idMapas4': idMapas4,
    'idMapas5': idMapas5,
    'idMapas6': idMapas6,
    'idMapas7': idMapas7,
    'idMapas8': idMapas8,
    'idMapas9': idMapas9,
    'idMapas10': idMapas10,
    'idMapas11': idMapas11,
    'idMapas12': idMapas12,
    'idMapas13': idMapas13,
    'idMapas1desc': idMapas1desc,
    'idMapas2desc': idMapas2desc,
    'idMapas3desc': idMapas3desc,
    'idMapas4desc': idMapas4desc,
    'idMapas5desc': idMapas5desc,
    'idMapas6desc': idMapas6desc,
    'idMapas7desc': idMapas7desc,
    'idMapas8desc': idMapas8desc,
    'idMapas9desc': idMapas9desc,
    'idMapas10desc': idMapas10desc,
    'idMapas11desc': idMapas11desc,
    'idMapas12desc': idMapas12desc,
    'idMapas13desc': idMapas13desc,
  };

  print('REQ: $body');

  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/mapas'),
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
