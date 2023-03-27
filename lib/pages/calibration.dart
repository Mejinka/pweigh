import 'package:flutter/material.dart';

import '../controlers/controladores.dart';
import 'calibration_ensaios.dart';

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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width: 20),
            const Divider(height: 80),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text(
                    "Registro De Calibração",
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        _controladores.certificado.text = generateCertificado();
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Registro De Calibração",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Data'),
                  TextField(
                    enabled: false,
                    decoration: const InputDecoration(
                      hintText: "Data",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.data,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text("Numero do Certificado de Calibração"),
                  TextField(
                    enabled: false,
                    decoration: const InputDecoration(
                      hintText: "Numero do Certificado de Calibração",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.certificado,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
          const Divider(
            height: 10,
          ),
          //ROW FVCKING TWO
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width: 20),
            const Divider(height: 80),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text(
                    "Cliente",
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        _controladores.certificado.text = generateCertificado();
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Cliente",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.cliente,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Morada'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Morada",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.morada,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
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
          ]),
          //FVCKING ROW 3
          const Divider(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width: 20),
            const Divider(height: 80),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Objeto'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Objeto",
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
              width: 300,
              child: Column(
                children: [
                  const Text('Marca'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Marca",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.marca,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Modelo'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Modelo",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.modelo,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width: 20),
            const Divider(height: 80),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Numero de Serie'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Numero de Serie",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.nserie,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Identificação Interna'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Identificação Interna",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.idinterna,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
          const Divider(
            height: 10,
          ),
          /////////////////////////////////
          ///////THIS SHIT A 4 ROW/////////
          /////////////////////////////////
          Row(
            children: [
              Container(
                width: 20,
              ),
              const Text("Localização diferente da morada da sede?"),
              Container(
                width: 5,
              ),
              const Text("Não"),
              Switch(
                value: _showExtraWidget,
                onChanged: (bool? newValue) {
                  setState(() {
                    _showExtraWidget = newValue!;
                  });
                },
              ),
              const Text("Sim"), Container(width: 15),
              //////////////
              /////////////
              Container(
                height: 20,
                width: 1.0,
                color: Colors.grey.withOpacity(0.5),
              ),
              Container(
                width: 20,
              ),
              const Text(
                  'Calibração nas instalações permanentes do laboratório?'),
              Container(
                width: 5,
              ),
              const Text("Não"),
              Switch(
                value: _isSwitchOn,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSwitchOn = newValue;
                  });
                },
              ),
              const Text("Sim"),
              Container(
                width: 15,
              ),
              Container(
                height: 20,
                width: 1.0,
                color: Colors.grey.withOpacity(0.5),
              ),
              Container(
                width: 15,
              ),
              //////////////////////////
              //////////////////////////
              const Text('Compensação da gravidade (Dm)?'),
              Container(
                width: 5,
              ),
              const Text("Não"),
              Switch(
                value: _showExtraWidget1,
                onChanged: (bool? newValue1) {
                  setState(() {
                    _showExtraWidget1 = newValue1!;
                  });
                },
              ),
              const Text("Sim"),
            ],
          ),
          if (_showExtraWidget) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 20),
                const Divider(height: 80),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const Text('Morada'),
                      TextField(
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: "Morada",
                          border: OutlineInputBorder(),
                        ),
                        controller: _controladores.morada2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(width: 100),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const Text("Codigo Postal"),
                      TextField(
                        controller: _controladores.cepController2,
                        decoration: const InputDecoration(
                          hintText: "Codigo Postal",
                          border: OutlineInputBorder(),
                        ),
                        inputFormatters: [_controladores.cepF2],
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          const Text('Inserir Latitude Destino'),
                          TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                              hintText: "Inserir Latitude Destino",
                              border: OutlineInputBorder(),
                            ),
                            controller: _controladores.latitude,
                            inputFormatters: [_controladores.latitudeF],
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(width: 100),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          const Text("Inserir Altitude Destino"),
                          TextField(
                            controller: _controladores.altitude,
                            decoration: const InputDecoration(
                              hintText: "Inserir Altitude Destino",
                              border: OutlineInputBorder(),
                            ),
                            inputFormatters: [_controladores.altitudeF],
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                          SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                const Text('Max:'),
                                TextField(
                                  controller: _controladores.cimax,
                                  decoration: const InputDecoration(
                                    hintText: "Max",
                                    border: OutlineInputBorder(),
                                  ),
                                  inputFormatters: [_controladores.cimaxF],
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
                                const Text('d:'),
                                TextField(
                                  enabled: true,
                                  decoration: const InputDecoration(
                                    hintText: "d:",
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: _controladores.d,
                                  inputFormatters: [_controladores.dF],
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(width: 100),
                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                const Text('Unidade:'),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
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
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    dropdownColor: Colors.white,
                                    elevation: 2,
                                    underline: Container(),
                                    focusColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                const Text('dT:'),
                                TextField(
                                  enabled: true,
                                  decoration: const InputDecoration(
                                    hintText: "dT:",
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: _controladores.dT,
                                  inputFormatters: [_controladores.dTF],
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(width: 100),
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
                                  inputFormatters: [_controladores.tempFinalF],
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
                    setState(() {});
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
