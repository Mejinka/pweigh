import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Calibration extends StatefulWidget {
  const Calibration({super.key});

  @override
  State<Calibration> createState() => _CalibrationState();
}

class _CalibrationState extends State<Calibration> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _data = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(DateTime.now()));
  final TextEditingController _certificado = TextEditingController();
  final TextEditingController _year =
      TextEditingController(text: DateFormat('yyyy').format(DateTime.now()));

  final TextEditingController _cliente = TextEditingController();
  final TextEditingController _morada = TextEditingController();
  final TextEditingController _morada2 = TextEditingController();
  //
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _cepController2 = TextEditingController();
  //
  final TextEditingController _objeto = TextEditingController();
  final TextEditingController _marca = TextEditingController();
  final TextEditingController _modelo = TextEditingController();
  final TextEditingController _nserie = TextEditingController();
  final TextEditingController _idinterna = TextEditingController();
  final TextEditingController _altitude = TextEditingController();
  final TextEditingController _latitude = TextEditingController();

  final MaskTextInputFormatter _cep =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});
  final MaskTextInputFormatter _cep2 =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scale Calibration'),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
      ),
      body: body(),
    );
  }

  body() {
    return SafeArea(
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
                        _certificado.text = generateCertificado();
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Registro De Calibração",
                      border: OutlineInputBorder(),
                    ),
                    controller: _user,
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
                    controller: _data,
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
                    controller: _certificado,
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
                        _certificado.text = generateCertificado();
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Cliente",
                      border: OutlineInputBorder(),
                    ),
                    controller: _cliente,
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
                    controller: _morada,
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
                    controller: _cepController,
                    decoration: const InputDecoration(
                      hintText: "Codigo Postal",
                      border: OutlineInputBorder(),
                    ),
                    inputFormatters: [_cep],
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
                    controller: _objeto,
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
                    controller: _marca,
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
                    controller: _modelo,
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
                    controller: _nserie,
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
                    controller: _idinterna,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
          const Divider(
            height: 10,
          ),
          //THIS SHIT A 4 ROW
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
              ), //////////////
              /////////////
              const Text("Sim"),
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
                width: 40,
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
                        controller: _morada2,
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
                        controller: _cepController2,
                        decoration: const InputDecoration(
                          hintText: "Codigo Postal",
                          border: OutlineInputBorder(),
                        ),
                        inputFormatters: [_cep2],
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
            )
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
                            controller: _latitude,
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
                            controller: _altitude,
                            decoration: const InputDecoration(
                              hintText: "Inserir Altitude Destino",
                              border: OutlineInputBorder(),
                            ),
                            inputFormatters: [_cep],
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(width: 20),
                const Divider(height: 120),
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
                        controller: _objeto,
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
                        controller: _marca,
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
                        controller: _modelo,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }

  bool _showExtraWidget = false;
  bool _showExtraWidget1 = false;
  bool _isSwitchOn = false;

  String generateCertificado() {
    String user = _user.text;
    String year = _year.text.replaceAll('/', '');
    return '$year-$user';
  }
}
