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
List<Widget> gerarConjuntos(int numConjuntos, Controllers controladores) {
  List<Widget> conjuntos = [];
  List<Widget> linhaAtual = [];
  int limit = 12;
  if (numConjuntos > limit) {
    numConjuntos = limit;
  }
  for (int i = 0; i < numConjuntos; i++) {
    linhaAtual.add(
      Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
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
            ),
            Container(width: 10),
            Flexible(
              child: Column(
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
            ),
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
                      controller: controladores.cimax,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

    if ((i + 1) % 6 == 0 || i == numConjuntos - 1) {
      conjuntos.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: linhaAtual,
        ),
      );
      if (i != numConjuntos - 1) {
        conjuntos.add(
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                height: 30,
                color: Colors.grey,
              ),
            ),
          ),
        );
      }
      linhaAtual = [];
    }
  }

  return conjuntos;
}

class _EnsaioPesagemState extends State<EnsaioPesagem> {
  @override
  Widget build(BuildContext context) {
    Controllers controladores = Provider.of<Controllers>(context);
    EnsaioState ensaioState = Provider.of<EnsaioState>(context);

    List<Widget> conjuntos =
        gerarConjuntos(ensaioState.numPontosApoio, controladores);

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
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: conjuntos),
            ),
          ],
        ),
        const Divider(
          color: Colors.transparent,
          height: 30,
        ),
      ],
    );
  }
}
