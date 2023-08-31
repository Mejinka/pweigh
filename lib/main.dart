import 'package:cachapuz_2/controlers/controladores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//import 'pages/page1.txt';
import 'controlers/time.dart';
import 'splash.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TimerManager>(
          create: (context) => TimerManager(),
        ),
        ChangeNotifierProvider<Controllers>(
          create: (context) => Controllers(),
        ),
        ChangeNotifierProvider<ControllersEnsarioPrevio>(
          create: (context) => ControllersEnsarioPrevio(),
        ),
        ChangeNotifierProvider<EnsaioState>(
          create: (context) => EnsaioState(),
        ),
        ChangeNotifierProvider<EnsaioExcentricoControllers>(
          create: (context) => EnsaioExcentricoControllers(),
        ),
        ChangeNotifierProvider<EnsaioPesagemControllers>(
          create: (context) => EnsaioPesagemControllers(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LabWeigh',
      home: SplashScreen(),
    );
  }
}
