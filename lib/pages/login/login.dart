// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:cachapuz_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../api.dart';
import '../../controlers/tracker.dart';
import '../../controlers/time.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
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
              child: Image.asset('assets/images/logo2.png', width: 100),
            ),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Utilizador",
                        border: OutlineInputBorder(),
                      ),
                      controller: _user,
                      textAlign: TextAlign.center,
                    ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  child: SizedBox(
                    width: 250,
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
                ),
                const Spacer(),
              ],
            ),
            const Divider(
              height: 5,
              color: Colors.transparent,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [],
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
                  final result = await loginUser(_user.text, _password.text);
                  final success = result['success'];
                  final user = result['user'];
                  if (success) {
                    // Coletar as informações do cliente
                    final clientInfo = await getClientInfo();
                    clientInfo['user'] = user;
                    final response = await http.post(
                      Uri.parse('http://127.0.0.1:5000/save_info'),
                      headers: {'Content-Type': 'application/json'},
                      body: jsonEncode(clientInfo),
                    );

                    if (response.statusCode == 200) {
                      print('Info saved successfully');
                    } else {
                      print('Error saving info: ${response.statusCode}');
                    }

                    Provider.of<TimerManager>(context, listen: false)
                        .startTimer();

                    final userDetails = await getUserDetails(user);
                    print('User Details: $userDetails');
                    final firstName = userDetails['first_name'];
                    final lastName = userDetails['last_name'];

                    await setLoggedIn(true,
                        user: user, firstName: firstName, lastName: lastName);
                    print('Usuário logado: $user');
                    if (!kIsWeb) {
                      WindowManager.instance.maximize();
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          username: user,
                          firstName: firstName,
                          lastName: lastName,
                        ),
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
