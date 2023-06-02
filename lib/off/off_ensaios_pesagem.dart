import 'package:flutter/material.dart';

import '../../controlers/controladores.dart';

class EnsaioPesagem extends StatefulWidget {
  const EnsaioPesagem({super.key});

  @override
  State<EnsaioPesagem> createState() => _EnsaioPesagemState();
}

class _EnsaioPesagemState extends State<EnsaioPesagem> {
  final Controllers controladores = Controllers();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Tooltip(
              message: '(n = 3 para Max > 100kg e n = 5 para Max < 100 kg)',
              child: Text(
                " Ensaio de Pesagem e Repetibilidade",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        Divider(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(height: 5),
                SizedBox(
                  child: Text('Pontos de Calibração'),
                ),
                SizedBox(
                  child: Text('Peso Padrão'),
                ),
                SizedBox(
                  child: Text('mc'),
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Text('Cargas de Substituição'),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(
                      child: Text('Lsub'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Text('Total Carga Teste'),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(
                      child: Text('Lt'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(height: 5),
                SizedBox(
                  child: Text('Pontos de Calibração'),
                ),
                SizedBox(
                  child: Text('Peso Padrão'),
                ),
                SizedBox(
                  child: Text('mc'),
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Text('Cargas de Substituição'),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(
                      child: Text('Lsub'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Text('Total Carga Teste'),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(
                      child: Text('Lt'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
