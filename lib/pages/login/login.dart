import 'package:cachapuz_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

//import '../page1.txt';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
            const Text('Login', style: TextStyle(fontWeight: FontWeight.w500)),
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
                      hintText: "User",
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
                      hintText: 'Password',
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
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  {
                    WindowManager.instance.maximize();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }
                },
                child: const Text("Enter"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
