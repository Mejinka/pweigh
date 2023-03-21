import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'pages/page1.txt';
import 'splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LabWeigh',
        home: SplashScreen());
  }
}
