import 'package:cachapuz_2/pages/first_page_extends/carac_instrument.dart';
import 'package:cachapuz_2/pages/first_page_extends/ambiental_conditions.dart';
import 'package:cachapuz_2/pages/first_page_extends/balanca.dart';

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

class _CalibrationState extends State<Calibration> {
  late Controllers _controladores;

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
                        _controladores.certificado.text = generateCertificado();
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
                        _controladores.certificado.text = generateCertificado();
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
                buildAddressRow("Codigo Postal", _controladores.cepController2,
                    [_controladores.cepF2]),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return SizedBox(child: Teste1());
                  },
                ),
              ),
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return SizedBox(child: Teste3());
                  },
                ),
              ),
              Expanded(
                child: Consumer<Controllers>(
                  builder: (context, controllers, child) {
                    return SizedBox(child: Teste2());
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
                    child: const Text('Limpar'),
                    onPressed: () {
                      _controladores.clearAllFields();

                      setState(() {
                        _showExtraWidget = false;
                        _showExtraWidget1 = false;
                        _isSwitchOn = false;
                        switchbalanca = false;
                      });
                    },
                  ),
                ),
              ),
              Container(width: 10),
              Flexible(
                child: SizedBox(
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

  String dropdownValue = 'kg'; // valor padrão

  String generateCertificado() {
    String regCali = _controladores.regCali.text;
    String year = _controladores.year.text.replaceAll('/', '');
    return '$year-$regCali      ';
  }
}
