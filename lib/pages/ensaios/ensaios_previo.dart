import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class EnsaioPrevio extends StatefulWidget {
  const EnsaioPrevio({super.key});

  @override
  State<EnsaioPrevio> createState() => _EnsaioPrevioState();
}

bool _switchbalanca = false;

class _EnsaioPrevioState extends State<EnsaioPrevio> {
  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text(
          " Ensaio Previo",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Pontos de Calibração',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Peso(s) Padrão (mc)',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Indicação na Balança',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Erro',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ajuste?'),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
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
                  Container(height: 10),
                  SizedBox(
                    width: 200,
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
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
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
                  Container(height: 10),
                  SizedBox(
                    width: 200,
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
            Container(width: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
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
                        Container(height: 10),
                        SizedBox(
                          width: 100,
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
                        SizedBox(
                          width: 100,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "---------",
                            ),
                            textAlign: TextAlign.center,
                            controller: controladores.cimax,
                            inputFormatters: [controladores.cimaxF],
                          ),
                        ),
                        Container(height: 10),
                        SizedBox(
                          width: 100,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "---------",
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
            ),
            Container(width: 10),
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "Erro"),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Container(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "Erro"),
                      textAlign: TextAlign.center,
                      controller: controladores.cimax,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                ],
              ),
            ),
            Container(width: 10),
            Expanded(
              child: Checkbox(
                value: _switchbalanca,
                onChanged: (bool? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _switchbalanca = newValue;
                    });
                  }
                },
              ),
            ),
            if (_switchbalanca) ...[
              Expanded(
                child: Column(
                  children: [
                    Tooltip(
                      message: 'Peso Padrão:',
                      child: Text(
                        'Carga de Ajuste',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 200,
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
              Container(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Text('data'),
                    SizedBox(
                      width: 100,
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
            Container(width: 10),
          ],
        ),
      ],
    );
  }
}
