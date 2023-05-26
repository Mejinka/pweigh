import 'package:flutter/material.dart';
import 'package:cachapuz_2/pages/calibration.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class Teste2 extends StatefulWidget {
  const Teste2({super.key});

  @override
  State<Teste2> createState() => _Teste2State();
}

class _Teste2State extends State<Teste2> {
  String dropdownValue = 'kg'; // valor padrão

  @override
  Widget build(BuildContext context) {
    Controllers _controladores = Provider.of<Controllers>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Condições ambientais',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('Temperatura [ ºC ]:'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Inicial',
                  ),
                  textAlign: TextAlign.center,
                  controller: _controladores.tempInit,
                  inputFormatters: [_controladores.tempInitF],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Final',
                  ),
                  textAlign: TextAlign.center,
                  controller: _controladores.tempFinal,
                  inputFormatters: [_controladores.tempFinalF],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 115, child: const Text('HR [ % ]:')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Inicial',
                  ),
                  textAlign: TextAlign.center,
                  controller: _controladores.horaInit,
                  inputFormatters: [_controladores.horaInitF],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Final',
                  ),
                  textAlign: TextAlign.center,
                  controller: _controladores.horaFinal,
                  inputFormatters: [_controladores.horaFinalF],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
