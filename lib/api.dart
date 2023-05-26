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
