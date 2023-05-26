import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'pages/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const Initial(),
          ),
        );
      },
    );
    if (!kIsWeb) {
      WidgetsFlutterBinding.ensureInitialized();
      windowManager.ensureInitialized();

      WindowOptions windowOptions = const WindowOptions(
        size: Size(1000, 600),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.normal,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () {
        windowManager.show();
        windowManager.focus();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Flexible(
          fit: FlexFit.loose,
          child: Image.asset('assets/images/logo2.png', width: 100),
        ),
        const Divider(
          color: Colors.transparent,
          height: 10,
        ),
        const Center(
            child: SizedBox(
          child: Text('Por favor, use sempre com ecrã completo!!!',
              style: TextStyle(fontSize: 20)),
        )),
        const Divider(
          color: Colors.transparent,
          height: 30,
        ),
        const CircularProgressIndicator(
          color: Colors.red,
        )
      ]),
    );
  }
}
