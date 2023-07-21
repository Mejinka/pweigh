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
  int numPontosApoio = 0;
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _controladores = widget.controladores;
    _controladores.pontosApoioController.addListener(_updateCampos);
  }

  @override
  void dispose() {
    for (int i = 1; i <= _controladores.controladoresPontosApoio.length; i++) {
      _controladores.disposePontoApoioControllers(i);
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

    setState(() {
      this.numPontosApoio = numPontosApoio;
    });

    Provider.of<EnsaioState>(context, listen: numPontosApoio >= 2)
        .numPontosApoio = numPontosApoio;
    for (int i = 1; i <= numPontosApoio; i++) {
      _controladores.getPontoApoioControllers(i);
    }
    setState(() {});
  }

  List<TextEditingController> controladoresPontoApoio =
      List.generate(12, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    EnsaioPesagemControllers controladores =
        Provider.of<EnsaioPesagemControllers>(context);
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
            //Expanded(
            //  flex: 0,
            //  child: SingleChildScrollView(
            //    scrollDirection: Axis.horizontal,
            //    child: Row(
            //      crossAxisAlignment: CrossAxisAlignment.center,
            //      mainAxisAlignment: MainAxisAlignment.center,
            //      children: [
            //        for (int i = 0; i < 12; i++)
            //          Padding(
            //            padding: EdgeInsets.only(right: i < 11 ? 10.0 : 0.0),
            //            child: Column(
            //              children: [
            //                customPontosApoio(
            //                    '${i + 1}', controladoresPontoApoio[i]),
            //                customPontosApoio(
            //                    '',
            //                    controladoresPontoApoio[
            //                        i]), // Se você precisa de um segundo controlador por campo, considere criar outra lista
            //              ],
            //            ),
            //          ),
            //      ],
            //    ),
            //  ),
            //),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('1', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 1),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 1),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('2', _controladores.ponto2,
                          [_controladores.ponto2F], numPontosApoio >= 2),
                      customPontosApoio(' ', _controladores.ponto2,
                          [_controladores.ponto2F], numPontosApoio >= 2),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('3', _controladores.ponto3,
                          [_controladores.ponto3F], numPontosApoio >= 3),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 3),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('4', _controladores.ponto4,
                          [_controladores.ponto4F], numPontosApoio >= 4),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 4),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('5', _controladores.ponto5,
                          [_controladores.ponto5F], numPontosApoio >= 5),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 5),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('6', _controladores.ponto6,
                          [_controladores.ponto6F], numPontosApoio >= 6),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 6),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('7', _controladores.ponto7,
                          [_controladores.ponto7F], numPontosApoio >= 7),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 7),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('8', _controladores.ponto8,
                          [_controladores.ponto8F], numPontosApoio >= 8),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 8),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('9', _controladores.ponto9,
                          [_controladores.ponto9F], numPontosApoio >= 9),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 9),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('10', _controladores.ponto10,
                          [_controladores.ponto10F], numPontosApoio >= 10),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('11', _controladores.ponto11,
                          [_controladores.ponto11F], numPontosApoio >= 11),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 11),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('12', _controladores.ponto12,
                          [_controladores.ponto12F], numPontosApoio >= 12),
                      customPontosApoio(' ', _controladores.ponto1,
                          [_controladores.ponto1F], numPontosApoio >= 12),
                    ],
                  ),
                ),
              ],
            )),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Tooltip(
              message: '(n = 3 para Max > 100kg e n = 5 para Max < 100 kg)',
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Ensaio de Pesagem e Repetibilidade",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      const Text('Mais Campos?'),
                      Checkbox(
                        value: _isSelected,
                        onChanged: (bool? value) {
                          setState(() {
                            _isSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            pesoPad(
                                controladores.aPesoPadrao1,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao2,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao3,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao4,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao5,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao6,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao7,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao8,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao9,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao10,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao11,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao12,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao13,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao14,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao15,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao16,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao17,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao18,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao19,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao20,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao21,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao22,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao23,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao24,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao25,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao26,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao27,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao28,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao29,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao30,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao31,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao32,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao33,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao34,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao35,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao36,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao37,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao38,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao39,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao40,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao41,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao42,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao43,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao44,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao45,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao46,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao47,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao48,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao49,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao50,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao51,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao52,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao53,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao54,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao55,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao56,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao57,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao58,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao59,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao60,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                            ],
                          ),
                        ),
                      ],
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            pesoPad(
                                controladores.aPesoPadrao61,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao62,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao63,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao64,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao65,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao66,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao67,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao68,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao69,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao70,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao71,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao72,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao73,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao74,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao75,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao76,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao77,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao78,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao79,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao80,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao81,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao82,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao83,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao84,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao85,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao86,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao87,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao88,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao89,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao90,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao91,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao92,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao93,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao94,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao95,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao96,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao97,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao98,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao99,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao100,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao101,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao102,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao103,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao104,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao105,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao106,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao107,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao108,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao109,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao110,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                            ],
                          ),
                        ),
                      ],
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
                            pesoPad(
                                controladores.aPesoPadrao111,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao112,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao113,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao114,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladores.aPesoPadrao115,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                          ],
                        ),
                      ),
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  controladores.aPesoPadrao116,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao117,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao118,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao119,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  controladores.aPesoPadrao120,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                            ],
                          ),
                        ),
                      ],
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
        )
      ],
    );
  }
}
