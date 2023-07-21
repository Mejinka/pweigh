import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class EnsaioPrevio extends StatefulWidget {
  const EnsaioPrevio({super.key});

  @override
  State<EnsaioPrevio> createState() => _EnsaioPrevioState();
}

bool checkboxAjuste = false;

class _EnsaioPrevioState extends State<EnsaioPrevio> {
  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);
    ControllersEnsarioPrevio controladoresExcen =
        Provider.of<ControllersEnsarioPrevio>(context);

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Pontos de Calibração',
                    textAlign: TextAlign.center,
                  ),
                  if (checkboxAjuste) ...[
                    const SizedBox(height: 18),
                  ] else ...[
                    const SizedBox(height: 18),
                  ],
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ponto de Calibração",
                      ),
                      textAlign: TextAlign.center,
                      controller: controladoresExcen.pontosCali,
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
                      controller: controladoresExcen.pontosCali2,
                      inputFormatters: [controladores.cimaxF],
                    ),
                  ),
                  Container(height: 10),
                ],
              ),
            ),
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Peso(s) Padrão (mc)',
                    textAlign: TextAlign.center,
                  ),
                  if (checkboxAjuste) ...[
                    const SizedBox(height: 18),
                  ] else ...[
                    const SizedBox(height: 18),
                  ],
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
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
                      enabled: false,
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
              child: Column(
                children: [
                  const Text(
                    'Indicação na Balança',
                    textAlign: TextAlign.center,
                  ),
                  if (checkboxAjuste) ...[
                    const SizedBox(height: 18),
                  ] else ...[
                    const SizedBox(height: 18),
                  ],
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '---------',
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
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '---------',
                                ),
                                textAlign: TextAlign.center,
                                controller: controladores.cimax,
                                inputFormatters: [controladores.cimaxF],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 110),
                      if (checkboxAjuste) ...[
                        const SizedBox(width: 10),
                      ],
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Indicação na Balança",
                                ),
                                textAlign: TextAlign.center,
                                controller: controladoresExcen.indicaBalanca,
                                inputFormatters: [controladores.cimaxF],
                              ),
                            ),
                            Container(height: 10),
                            SizedBox(
                              width: 100,
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Indicação na Balança",
                                ),
                                textAlign: TextAlign.center,
                                controller: controladoresExcen.indicaBalanca2,
                                inputFormatters: [controladores.cimaxF],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(width: 10),
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Erro',
                    textAlign: TextAlign.center,
                  ),
                  if (checkboxAjuste) ...[
                    const SizedBox(height: 18),
                  ] else ...[
                    const SizedBox(height: 18),
                  ],
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
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
                      enabled: false,
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
              child: Column(
                children: [
                  const Text('Ajuste?'),
                  if (checkboxAjuste) ...[
                    const SizedBox(height: 18),
                  ] else ...[
                    const SizedBox(height: 18),
                  ],
                  Checkbox(
                    value: checkboxAjuste,
                    onChanged: (bool? newValue) {
                      if (newValue != null) {
                        setState(() {
                          checkboxAjuste = newValue;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            if (checkboxAjuste) ...[
              Expanded(
                child: Column(
                  children: [
                    const Tooltip(
                      message: 'Peso Padrão:',
                      child: Text(
                        'Carga de Ajuste',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (checkboxAjuste) ...[
                      const SizedBox(height: 18),
                    ] else ...[
                      const SizedBox(height: 18),
                    ],
                    SizedBox(
                      width: 200,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Carga de Ajuste/ Peso Padrão:',
                        ),
                        textAlign: TextAlign.center,
                        controller: controladoresExcen.cargaAjuste,
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
                    const Text('Ref.ª'),
                    if (checkboxAjuste) ...[
                      const SizedBox(height: 18),
                    ] else ...[
                      const SizedBox(height: 18),
                    ],
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Ref.ª',
                        ),
                        textAlign: TextAlign.center,
                        controller: controladoresExcen.ref,
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
