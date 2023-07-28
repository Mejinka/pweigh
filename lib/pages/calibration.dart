import 'package:cachapuz_2/api.dart';
import 'package:cachapuz_2/pages/first_page_extends/carac_instrument.dart';
import 'package:cachapuz_2/pages/first_page_extends/ambiental_conditions.dart';
import 'package:cachapuz_2/pages/first_page_extends/balanca.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controlers/controladores.dart';

import '../customlayouts/custom.dart';

class Calibration extends StatefulWidget {
  final PageController pageController;
  const Calibration({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Calibration> createState() => _CalibrationState();
}

bool showExtraWidget = false;
bool showExtraWidget1 = false;
bool isSwitchOn = false;

class _CalibrationState extends State<Calibration> {
  final TextEditingController regCali = TextEditingController();

  Controllers _controladores = Controllers();

  @override
  Widget build(BuildContext context) {
    _controladores = Provider.of<Controllers>(context);

    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SingleChildScrollView(
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
                    controller: _controladores.regCali,
                    onChanged: (value) {
                      setState(() {
                        _controladores.certificado.text =
                            _controladores.certificado.text =
                                DateTime.now().year.toString() +
                                    '-' +
                                    _controladores.regCali.text;
                      });
                    },
                  ),
                ),
              ),
              const Flexible(child: SizedBox(width: 150)),
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
              const Flexible(child: SizedBox(width: 150)),
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  width: 300,
                  child: customTextField(
                    labelText: "Cliente",
                    controller: _controladores.cliente,
                  ),
                ),
              ),
              const Flexible(child: SizedBox(width: 150)),
              Flexible(
                child: SizedBox(
                  width: 300,
                  child: customTextField(
                    enabled: !showExtraWidget,
                    labelText: "Morada",
                    controller: _controladores.morada,
                  ),
                ),
              ),
              const Flexible(child: SizedBox(width: 150)),
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
                        enabled: !showExtraWidget,
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
              const Flexible(child: SizedBox(width: 150)),
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
              const Flexible(child: SizedBox(width: 150)),
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
              const Flexible(child: SizedBox(width: 150)),
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
                  checkboxValue: showExtraWidget,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        showExtraWidget = newValue;
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
                  checkboxValue: isSwitchOn,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        isSwitchOn = newValue;
                      });
                    }
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: customCheckbox(
                  label: 'Compensação da gravidade (Dm)?',
                  checkboxValue: showExtraWidget1,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        showExtraWidget1 = newValue;
                      });
                    }
                  },
                ),
              ),
            ],
          ),

          if (showExtraWidget) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 20),
                const Divider(height: 80),
                buildAddressRow('Morada', _controladores.morada2, null),
                Container(width: 100),
                buildAddressRow("Codigo Postal", _controladores.cepController2,
                    [_controladores.cepF2]),
              ],
            ),
          ],

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Divider(height: 10),
              if (showExtraWidget1) ...[
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return const SizedBox(child: Teste1());
                  },
                ),
              ),
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return const SizedBox(child: BalancaWid());
                  },
                ),
              ),
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return const SizedBox(child: Teste2());
                  },
                ),
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
              Flexible(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Limpar'),
                    onPressed: () {
                      print('${_controladores.cliente.text}');

                      _controladores.clearAllFields();

                      setState(() {
                        showExtraWidget = false;
                        showExtraWidget1 = false;
                        isSwitchOn = false;
                        _controladores.switchbalanca = false;
                      });
                    },
                  ),
                ),
              ),
              // Container(width: 10),
              // Flexible(
              //   child: SizedBox(
              //     width: 100,
              //     height: 50,
              //     child: ElevatedButton(
              //       style: ButtonStyle(
              //         overlayColor:
              //             MaterialStatePropertyAll(Colors.red.shade600),
              //         backgroundColor:
              //             const MaterialStatePropertyAll(Colors.red),
              //       ),
              //       child: const Text('Enviar'),
              //       onPressed: () async {
              //         print(
              //             'Registro de Calibração: ${_controladores.dT.text}');
//
              //         // bool success = await postCalibrationData(
              //         //     _controladores.regCali.text,
              //         //     _controladores.data.text,
              //         //     _controladores.certificado.text,
              //         //     _controladores.cliente.text,
              //         //     _controladores.morada.text,
              //         //     _controladores.objeto.text,
              //         //     _controladores.marca.text,
              //         //     _controladores.modelo.text,
              //         //     _controladores.nserie.text,
              //         //     _controladores.idinterna.text,
              //         //     _controladores.cepController.text,
              //         //     //localização diferente
              //         //     _controladores.morada2.text,
              //         //     _controladores.cepController2.text,
              //         //     //compensação de gravidade
              //         //     _controladores.altitude.text,
              //         //     _controladores.latitude.text,
              //         //     //caracteristicas dos instrumentos
              //         //     _controladores.cimax.text,
              //         //     _controladores.dropdownController.text,
              //         //     _controladores.d.text,
              //         //     _controladores.dT.text,
              //         //     //condiçoes ambientais
              //         //     _controladores.tempInit.text,
              //         //     _controladores.tempFinal.text,
              //         //     _controladores.horaInit.text,
              //         //     _controladores.horaFinal.text);
//
              //         // if (success) {
              //         //   print('Dados enviados com sucesso!');
              //         // } else {
              //         //   print('Falha ao enviar dados!');
              //         // }
              //       },
              //     ),
              //   ),
              // ),
              Container(width: 10),
              Flexible(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Próximo'),
                    onPressed: () {
                      widget.pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                  ),
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
}
