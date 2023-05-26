import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class Teste3 extends StatefulWidget {
  const Teste3({super.key});

  @override
  State<Teste3> createState() => _Teste3State();
}

bool switchbalanca = false;

class _Teste3State extends State<Teste3> {
  @override
  Widget build(BuildContext context) {
    Controllers _controladores = Provider.of<Controllers>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Balança com aprovação de modelo?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(height: 100),
                      const Text("Não"),
                      Switch(
                        value: switchbalanca,
                        onChanged: (bool newValue) {
                          setState(() {
                            switchbalanca = newValue;
                          });
                        },
                      ),
                      const Text("Sim"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
