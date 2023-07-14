import 'package:cachapuz_2/controlers/controladores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../customlayouts/custom.dart';

class EnsaioExcentrico extends StatefulWidget {
  const EnsaioExcentrico({Key? key, required this.controladores})
      : super(key: key);
  final EnsaioExcentricoControllers controladores;

  @override
  State<EnsaioExcentrico> createState() => _EnsaioExcentricoState();
}

class _EnsaioExcentricoState extends State<EnsaioExcentrico> {
  late EnsaioExcentricoControllers _controladores;

  @override
  void initState() {
    super.initState();
    _controladores = widget.controladores;
    _controladores.pontosApoioController.addListener(_updateCampos);
  }

  @override
  void dispose() {
    for (int i = 1; i <= _controladores.controladoresPontosApoio.length; i++) {
      _controladores.disposePontoApoioController(i);
    }
    super.dispose();
  }

  void _updateCampos() {
    int numPontosApoio;
    try {
      numPontosApoio = int.parse(_controladores.pontosApoioController.text);
    } catch (e) {
      numPontosApoio = 0;
    }

    Provider.of<EnsaioState>(context, listen: false).numPontosApoio =
        numPontosApoio;
    for (int i = 1; i <= numPontosApoio; i++) {
      _controladores.getPontoApoioController(i);
    }
    setState(() {}); // Notifica o Flutter para reconstruir o widget
  }

  List<Widget> _gerarCampos(int quantidade) {
    List<Widget> lista = [];
    int limit = 12;
    if (quantidade > limit) {
      quantidade = limit;
    }
    for (int i = 1; i <= quantidade; i++) {
      var controller =
          _controladores.getPontoApoioController(i) ?? TextEditingController();
      lista.add(
        Column(
          children: [
            customTextField2('$i', controller),
            customTextField2('', controller),
          ],
        ),
      );
      if (i < quantidade) {
        lista.add(const SizedBox(width: 20));
      }
    }

    return lista;
  }

  @override
  Widget build(BuildContext context) {
    int numPontosApoio;
    try {
      numPontosApoio = int.parse(_controladores.pontosApoioController.text);
    } catch (e) {
      numPontosApoio = 0;
    }
    List<Widget> campos = _gerarCampos(numPontosApoio);

    return Column(
      children: [
        const Row(
          children: [
            Tooltip(
              message: 'Insira o numero de pontos de apoio de 1 a 11',
              child: Text(
                " Ensaio Excentricidade",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  customTextField1('N.º Pontos de Apoio:',
                      _controladores.pontosApoioController),
                  customTextField1(
                      'Carga utilizada (Lexc):', _controladores.cargaUti),
                ],
              ),
            ),
            numPontosApoio == 0
                ? const Text(
                    "Insira o numero de pontos de apoio.",
                    style: TextStyle(fontSize: 20),
                  )
                : Expanded(
                    flex: 0,
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
                      controller: _controladores.cargaUti,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(height: 10),
      ],
    );
  }
}
