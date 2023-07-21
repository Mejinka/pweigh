import 'package:flutter/material.dart';
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
    Controllers controladores = Provider.of<Controllers>(context);

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
                  controller: controladores.tempInit,
                  inputFormatters: [controladores.tempInitF],
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
                  controller: controladores.tempFinal,
                  inputFormatters: [controladores.tempFinalF],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 115, child: Text('HR [ % ]:')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Inicial',
                  ),
                  textAlign: TextAlign.center,
                  controller: controladores.horaInit,
                  inputFormatters: [controladores.horaInitF],
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
                  controller: controladores.horaFinal,
                  inputFormatters: [controladores.horaFinalF],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
