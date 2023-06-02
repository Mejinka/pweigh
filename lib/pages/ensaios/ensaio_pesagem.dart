import 'package:cachapuz_2/customlayouts/custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class EnsaioPesagem extends StatefulWidget {
  const EnsaioPesagem({super.key});

  @override
  State<EnsaioPesagem> createState() => _EnsaioPesagemState();
}

bool checkboxAj = false;

class _EnsaioPesagemState extends State<EnsaioPesagem> {
  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);
    ControllersEnsarioPrevio controladoresExcen =
        Provider.of<ControllersEnsarioPrevio>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Tooltip(
          message: '(n = 3 para Max > 100kg e n = 5 para Max < 100 kg)',
          child: Text(
            " Ensaio de Pesagem e Repetibilidade",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
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
                  child: Column(
                    children: [
                      const Text('Abreviaturas'),
                      const Text('dos '),
                      const Text('Pesos Padrão (mN)'),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                            ],
                          ),
                          Container(width: 10),
                          Column(
                            children: [
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                              const SizedBox(height: 10),
                              pesoPad(controladores.cimax),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            abrevPesos(controladores.cimax),
            Container(width: 10),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                        ],
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                          const SizedBox(height: 10),
                          pesoPad(controladores.cimax),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Erro',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                        enabled: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: "Erro"),
                        textAlign: TextAlign.center,
                        controller: controladores.cimax),
                  ),
                  Container(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextField(
                        enabled: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: "Erro"),
                        textAlign: TextAlign.center,
                        controller: controladores.cimax),
                  ),
                ],
              ),
            ),
            Container(width: 10),
            Container(width: 10),
          ],
        ),
      ],
    );
  }
}
