// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:cachapuz_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

Future<bool> loginUser(String user, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost:5000/login'),
    body: {'user': user, 'password': password},
  );

  final jsonResponse = jsonDecode(response.body);
  return jsonResponse['success'];
}

Future<Map<String, String>> getUserDetails(String user) async {
  final response = await http.post(
    Uri.parse('http://localhost:5000/get_user_details'),
    body: {'user': user},
  );

  final jsonResponse = jsonDecode(response.body);
  if (jsonResponse['success']) {
    return {
      'first_name': jsonResponse['first_name'],
      'last_name': jsonResponse['last_name'],
    };
  } else {
    return {'first_name': '', 'last_name': ''};
  }
}

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
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
  return prefs.getString('username');
}

class _InitialState extends State<Initial> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void checkLoginStatus(BuildContext context) async {
    bool loggedIn = await isLoggedIn();
    if (loggedIn) {
      String? username = await getUsername();
      String? firstName = await getFirstName();
      String? lastName = await getLastName();
      print('Usuário logado: $username');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
              username: username, firstName: firstName, lastName: lastName),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Image.asset(
                'assets/images/logo2.png',
                width: MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  flex: 1,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Utilizador",
                      border: OutlineInputBorder(),
                    ),
                    controller: _user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  flex: 1,
                  child: TextField(
                    controller: _password,
                    decoration: const InputDecoration(
                      hintText: 'Palavra-Passe',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [],
            ),
            const Divider(
              height: 10,
              color: Colors.transparent,
            ),
            SizedBox(
              width: 80,
              height: 50,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () async {
                  final success = await loginUser(_user.text, _password.text);
                  if (success) {
                    final userDetails = await getUserDetails(_user.text);
                    final firstName = userDetails['first_name'];
                    final lastName = userDetails['last_name'];
                    await setLoggedIn(true,
                        user: _user.text,
                        firstName: firstName,
                        lastName: lastName);
                    print('Usuário logado: ${_user.text}');
                    checkLoginStatus(context);
                    if (!kIsWeb) {
                      WindowManager.instance.maximize();
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(username: _user.text),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Erro no login"),
                          content: const Text("Usuário ou senha incorretos."),
                          actions: [
                            TextButton(
                              child: const Text("Fechar"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text("Entrar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
