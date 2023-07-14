import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class BalancaWid extends StatefulWidget {
  const BalancaWid({Key? key}) : super(key: key);

  @override
  State<BalancaWid> createState() => _BalancaWidState();
}

class _BalancaWidState extends State<BalancaWid> {
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
                        value: _controladores.switchbalanca,
                        onChanged: (bool newValue) {
                          _controladores.setSwitchValue(newValue);
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
