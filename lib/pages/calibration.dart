import 'package:flutter/material.dart';

import '../controlers/controladores.dart';
import 'package:flutter/foundation.dart';

import '../customlayouts/custom.dart';

class Calibration extends StatefulWidget {
  final PageController pageController;
  const Calibration({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Calibration> createState() => _CalibrationState();
}

class _CalibrationState extends State<Calibration> {
  final Controllers _controladores = Controllers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Registro De Calibração",
                      controller: _controladores.user,
                      onChanged: (value) {
                        setState(() {
                          _controladores.certificado.text =
                              generateCertificado();
                        });
                      },
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Data",
                      controller: _controladores.data,
                      enabled: false,
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Nº do Certificado de Calibração",
                      controller: _controladores.certificado,
                      enabled: false,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
            ),
            //ROW FVCKING TWO
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Cliente",
                      controller: _controladores.cliente,
                      onChanged: (value) {
                        setState(() {
                          _controladores.certificado.text =
                              generateCertificado();
                        });
                      },
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Morada",
                      controller: _controladores.morada,
                      enabled: true,
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        const Text("Codigo Postal"),
                        TextField(
                          controller: _controladores.cepController,
                          decoration: const InputDecoration(
                            hintText: "Codigo Postal",
                            border: OutlineInputBorder(),
                          ),
                          inputFormatters: [_controladores.cepF],
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //////////////////////////////FVCKING ROW 3//////////////////////////////////////
            const Divider(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Objeto",
                      controller: _controladores.objeto,
                      enabled: true,
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Marca",
                      controller: _controladores.marca,
                      enabled: true,
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Modelo",
                      controller: _controladores.modelo,
                      enabled: true,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
            ),

            ///QUARTA FUVCKING ROWWWWWWWWWWW///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Numero de Serie",
                      controller: _controladores.nserie,
                      enabled: true,
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 150)),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: customTextField(
                      labelText: "Identificação Interna",
                      controller: _controladores.idinterna,
                      enabled: true,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
            ),
            /////////////////////////////////
            ///////THIS SHIT A 4 ROW/////////
            /////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: customCheckbox(
                    label: "Localização diferente da morada da sede?",
                    checkboxValue: _showExtraWidget,
                    onChanged: (bool? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _showExtraWidget = newValue;
                        });
                      }
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: customCheckbox(
                    label:
                        'Calibração nas instalações permanentes do laboratório?',
                    checkboxValue: _isSwitchOn,
                    onChanged: (bool? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _isSwitchOn = newValue;
                        });
                      }
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: customCheckbox(
                    label: 'Compensação da gravidade (Dm)?',
                    checkboxValue: _showExtraWidget1,
                    onChanged: (bool? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _showExtraWidget1 = newValue;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),

            if (_showExtraWidget) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 20),
                  const Divider(height: 80),
                  buildAddressRow('Morada', _controladores.morada2, null),
                  Container(width: 100),
                  buildAddressRow("Codigo Postal",
                      _controladores.cepController2, [_controladores.cepF2]),
                ],
              ),
            ],

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(height: 10),
                if (_showExtraWidget1) ...[
                  Container(width: 20),
                  const Divider(height: 80),
                  buildAddressRow("Inserir Latitude Destino",
                      _controladores.latitude, [_controladores.latitudeF]),
                  Container(width: 100),
                  buildAddressRow("Inserir Altitude Destino",
                      _controladores.altitude, [_controladores.altitudeF]),
                ],
              ],
            ),
            const Divider(height: 1),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Divider(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 20,
                        ),
                        const Text(
                          'Caracteristicas do Instrumento',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(width: 20),
                        const Divider(height: 150),
                        Column(
                          children: [
                            buildTextField('Max:', _controladores.cimax,
                                [_controladores.cimaxF]),
                            SizedBox(width: 100),
                            buildTextField(
                                'd:', _controladores.d, [_controladores.dF]),
                          ],
                        ),
                        Container(width: 100),
                        Column(
                          children: [
                            buildDropdownButton('Unidade:', dropdownValue, [
                              'kg',
                              'g',
                              'mg',
                              'mN',
                              'cN',
                              'N',
                              'daN',
                              'kn',
                              'lbf',
                              'oZ',
                              'glm2'
                            ], (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            }),
                            SizedBox(width: 100),
                            buildTextField2(
                                'dT:', _controladores.dT, [_controladores.dTF]),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(width: 15),
                Container(
                  height: 100,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Column(
                  children: [
                    const Divider(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 20,
                        ),
                        const Text(
                          'Balança com aprovação de modelo?',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(width: 20),
                      const Divider(height: 150),
                      SizedBox(
                        child: Row(
                          children: [
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
                    ]),
                  ],
                ),
                Container(width: 15),
                Container(
                  height: 100,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Column(
                  children: [
                    const Divider(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 20,
                        ),
                        const Text(
                          'Caracteristicas do Instrumento',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 20),
                        Column(
                          children: const [
                            Text('Temperatura [ ºC ]:'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  const Text('Inicial:'),
                                  TextField(
                                    enabled: true,
                                    decoration: const InputDecoration(
                                      hintText: "Inicial:",
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: _controladores.tempInit,
                                    inputFormatters: [_controladores.tempInitF],
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(width: 100),
                            SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  const Text("Final:"),
                                  TextField(
                                    enabled: true,
                                    decoration: const InputDecoration(
                                      hintText: "Final:",
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: _controladores.tempFinal,
                                    inputFormatters: [
                                      _controladores.tempFinalF
                                    ],
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 80),
                        const Text('HR [ % ]:'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  const Divider(
                                    height: 20,
                                    color: Colors.transparent,
                                  ),
                                  TextField(
                                    enabled: true,
                                    decoration: const InputDecoration(
                                      hintText: "Inicial:",
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: _controladores.objeto,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(width: 100),
                            SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  const Divider(
                                    height: 20,
                                    color: Colors.transparent,
                                  ),
                                  TextField(
                                    enabled: true,
                                    decoration: const InputDecoration(
                                      hintText: "Final:",
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: _controladores.marca,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              height: 40,
              color: Colors.transparent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Limpar'),
                    onPressed: () {
                      clearAllFields(_controladores);

                      setState(() {
                        _showExtraWidget = false;
                        _showExtraWidget1 = false;
                        _isSwitchOn = false;
                        _switchbalanca = false;
                      });
                    },
                  ),
                ),
                Container(width: 10),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Próximo'),
                    onPressed: () {
                      widget.pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                  ),
                ),
                const Divider(
                  height: 70,
                  color: Colors.transparent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool _showExtraWidget = false;
  bool _showExtraWidget1 = false;
  bool _isSwitchOn = false;
  bool _switchbalanca = false;

  String dropdownValue = 'kg'; // valor padrão

  String generateCertificado() {
    String user = _controladores.user.text;
    String year = _controladores.year.text.replaceAll('/', '');
    return '$year-$user';
  }
}
