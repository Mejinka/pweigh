import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class Teste1 extends StatefulWidget {
  const Teste1({super.key});

  @override
  State<Teste1> createState() => _Teste1State();
}

class _Teste1State extends State<Teste1> {
  String dropdownValue = 'Selecione a medida';

  final List<String> dropdownItems = [
    'kg',
    'g',
    'mg',
    'mN',
    'cN',
    'N',
    'daN',
    'kn',
    'oZ',
    'glm2'
  ];

  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Caracteristicas do Instrumento',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Max',
                  ),
                  textAlign: TextAlign.center,
                  controller: controladores.cimax,
                  inputFormatters: [controladores.cimaxF],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.4),
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        alignment: Alignment.center,
                        dropdownColor: Colors.white,
                        elevation: 2,
                        underline: Container(),
                        hint: Text("Selecione a medida"),
                        focusColor: Colors.transparent,
                        value: dropdownValue == 'Selecione a medida'
                            ? null
                            : dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                            controladores.dropdownController.text =
                                dropdownValue;
                          });
                        },
                        items: dropdownItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            alignment: Alignment.center,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'd',
                  ),
                  textAlign: TextAlign.center,
                  controller: controladores.d,
                  inputFormatters: [controladores.dF],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'dT',
                  ),
                  textAlign: TextAlign.center,
                  controller: controladores.dT,
                  inputFormatters: [controladores.dTF],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
