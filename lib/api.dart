import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../controlers/controladores.dart';

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

Controllers _controladores = Controllers();

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
    'tempo_final': tempFinal,
    'hora_init': horaInit,
    'hora_final': horaFinal,
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
