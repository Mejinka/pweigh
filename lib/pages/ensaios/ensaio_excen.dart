import 'package:cachapuz_2/controlers/controladores.dart';
import 'package:flutter/material.dart';

import '../../customlayouts/custom.dart';

class EnsaioExcentrico extends StatefulWidget {
  const EnsaioExcentrico({super.key});

  @override
  State<EnsaioExcentrico> createState() => _EnsaioExcentricoState();
}

class _EnsaioExcentricoState extends State<EnsaioExcentrico> {
  final Controllers _controladores = Controllers();
  final TextEditingController _pontosApoioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _pontosApoioController.addListener(_updateCampos);
  }

  @override
  void dispose() {
    _pontosApoioController.dispose();
    super.dispose();
  }

  void _updateCampos() {
    setState(() {});
  }

  List<Widget> _gerarCampos(int quantidade) {
    List<Widget> lista = [];
    int limit = 11;
    if (quantidade > limit) {
      quantidade = limit;
    }
    for (int i = 1; i <= quantidade; i++) {
      lista.add(
        Column(
          children: [
            customTextField2('$i', _controladores.regCali),
            customTextField2('', _controladores.regCali),
          ],
        ),
      );
      if (i < quantidade) {
        lista.add(SizedBox(
            width: 20)); // Add some space between each point of support
      }
    }
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    int numPontosApoio;
    try {
      numPontosApoio = int.parse(_pontosApoioController.text);
    } catch (e) {
      numPontosApoio = 0;
    }
    List<Widget> campos = _gerarCampos(numPontosApoio);

    return Column(
      children: [
        const Row(
          children: [
            Text(
              " Ensaio Excentricidade",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  customTextField1(
                      'N.º Pontos de Apoio:', _pontosApoioController),
                  customTextField1(
                      'Carga utilizada (Lexc):', _controladores.regCali),
                ],
              ),
            ),
            numPontosApoio == 0
                ? const Text(
                    "Insira o numero de pontos de apoio.",
                    style: TextStyle(fontSize: 20),
                  )
                : Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: campos,
                    ),
                  ),
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  const Text('Erro de '),
                  const Text('Excentricidade'),
                  const Text('máx. |∆Iexc,i|max:'),
                  const Divider(height: 10),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      enabled: true,
                      decoration: const InputDecoration(
                        hintText: "",
                        border: OutlineInputBorder(),
                      ),
                      controller: _controladores.regCali,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(height: 1),
      ],
    );
  }
}
