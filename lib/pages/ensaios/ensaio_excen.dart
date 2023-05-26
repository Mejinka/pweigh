import 'package:cachapuz_2/controlers/controladores.dart';
import 'package:flutter/material.dart';

import '../../customlayouts/custom.dart';

class EnsaioExcentrico extends StatefulWidget {
  const EnsaioExcentrico({super.key});

  @override
  State<EnsaioExcentrico> createState() => _EnsaioExcentricoState();
}

class _EnsaioExcentricoState extends State<EnsaioExcentrico> {
  final Controllers _controladores = Controllers();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              " Ensaio Excentricidade",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  customTextField1(
                      'N.º Pontos de Apoio:', _controladores.regCali),
                  customTextField1(
                      'Carga utilizada (Lexc):', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 20),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('1', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('2', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('3', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('4', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('5', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('6', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('7', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('8', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('9', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('10', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Container(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customTextField2('11', _controladores.regCali),
                  customTextField2('', _controladores.regCali),
                ],
              ),
            ),
            Column(
              children: [
                const Text('Erro de '),
                const Text('Excentricidade'),
                const Text('máx. |∆Iexc,i|max:'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.regCali,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(height: 1),
      ],
    );
  }
}
