import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class EnsaioPr1evio extends StatefulWidget {
  const EnsaioPr1evio({super.key});

  @override
  State<EnsaioPr1evio> createState() => _EnsaioPrevioState();
}

bool _switchbalanca = false;

class _EnsaioPrevioState extends State<EnsaioPr1evio> {
  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Ensaio Previo",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Pontos de Calibração',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ponto de Calibração",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ponto de Calibração",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Peso(s) Padrão (mc)',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Peso(s) Padrão (mc)",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Peso(s) Padrão (mc)",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Indicação na Balança',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Indicação na Balança',
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Indicação na Balança',
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Indicação na Balança',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "----------",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "----------",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 15),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Erro',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "Erro"),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Erro",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text('Ajuste?'),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  const Text("Não"),
                  Switch(
                    value: _switchbalanca,
                    onChanged: (bool newValue) {
                      setState(() {
                        _switchbalanca = newValue;
                      });
                    },
                  ),
                  const Text("Sim"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Tooltip(
                    message: 'Peso Padrão:',
                    child: Text(
                      'Carga de Ajuste',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Carga de Ajuste/ Peso Padrão:',
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Ref.ª:',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ref.ª:',
                      ),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
