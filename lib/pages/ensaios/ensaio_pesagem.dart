import 'package:cachapuz_2/customlayouts/custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controlers/controladores.dart';

class EnsaioPesagem extends StatefulWidget {
  const EnsaioPesagem({Key? key, required this.controladores})
      : super(key: key);
  final EnsaioPesagemControllers controladores;

  @override
  State<EnsaioPesagem> createState() => _EnsaioPesagemState();
}

int numPontosApoio = 0;

class _EnsaioPesagemState extends State<EnsaioPesagem> {
  @override
  Widget build(BuildContext context) {
    EnsaioPesagemControllers controladores =
        Provider.of<EnsaioPesagemControllers>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Tooltip(
          message: '(n = 3 para Max > 100kg e n = 5 para Max < 100 kg)',
          child: Text(
            " Ensaio de Pesagem e Repetibilidade",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Abreviaturas dos Pesos Padrão (mN)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.0),
            child: Divider(
              height: 30,
              color: Colors.grey,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], numPontosApoio >= 1),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], numPontosApoio >= 1),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], numPontosApoio >= 1),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], numPontosApoio >= 1),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], numPontosApoio >= 1),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: Column(
                      children: [
                        Container(width: 80),
                        SizedBox(
                          width: 50,
                          child: TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                              hintText: "",
                              border: OutlineInputBorder(),
                            ),
                            textAlign: TextAlign.center,
                            controller: controladores.aPesoPadrao1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: Column(
                      children: [
                        Container(width: 80),
                        SizedBox(
                          width: 50,
                          child: TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                              hintText: "",
                              border: OutlineInputBorder(),
                            ),
                            textAlign: TextAlign.center,
                            controller: controladores.aPesoPadrao1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                        const SizedBox(height: 10),
                        pesoPad(controladores.aPesoPadrao1,
                            [controladores.aPesoPadrao1F], false),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: Column(
                      children: [
                        Container(width: 80),
                        SizedBox(
                          width: 50,
                          child: TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                              hintText: "",
                              border: OutlineInputBorder(),
                            ),
                            textAlign: TextAlign.center,
                            controller: controladores.aPesoPadrao1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Divider(),
        const Divider(
          color: Colors.transparent,
          height: 30,
        ),
      ],
    );
  }
}
