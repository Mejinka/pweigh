// ignore_for_file: avoid_print

import 'package:cachapuz_2/api.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'ensaios/ensaio_excen.dart';
import 'ensaios/ensaios_previo.dart';
import '../controlers/controladores.dart';

class Ensaios extends StatefulWidget {
  final PageController pageController;
  const Ensaios({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Ensaios> createState() => _EnsaiosState();
}

class _EnsaiosState extends State<Ensaios> {
  final Controllers _controladores = Controllers();

  late ControllersEnsarioPrevio controladores2;
  late EnsaioExcentricoControllers controladores3;
  late EnsaioPesagemControllers controladores4;

  @override
  Widget build(BuildContext context) {
    controladores2 = Provider.of<ControllersEnsarioPrevio>(context);
    controladores3 = Provider.of<EnsaioExcentricoControllers>(context);
    controladores4 = Provider.of<EnsaioPesagemControllers>(context);

    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 10,
          ),
          const EnsaioPrevio(),
          const Divider(
            height: 10,
          ),
          EnsaioExcentrico(controladores: controladores3),
          //EnsaioPesagem(controladores: controladores4),
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
                      controladores2.clearAllFieldsEP();
                      controladores3.clearAllFields();
                      setState(() {});
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
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Voltar'),
                    onPressed: () {
                      widget.pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
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
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Confirmar'),
                    onPressed: () async {
                      print(DateTime.now());
                      bool success = await postCalibrationData(
                        _controladores.regCali.text,
                        _controladores.data.text,
                        _controladores.certificado.text,
                        _controladores.cliente.text,
                        _controladores.morada.text,
                        _controladores.objeto.text,
                        _controladores.marca.text,
                        _controladores.modelo.text,
                        _controladores.nserie.text,
                        _controladores.idinterna.text,
                        _controladores.cepController.text,
                        //localização diferente
                        _controladores.morada2.text,
                        _controladores.cepController2.text,
                        //compensação de gravidade
                        _controladores.altitude.text,
                        _controladores.latitude.text,
                        //caracteristicas dos instrumentos
                        _controladores.cimax.text,
                        _controladores.dropdownController.text,
                        _controladores.d.text,
                        _controladores.dT.text,
                        //condiçoes ambientais
                        _controladores.tempInit.text,
                        _controladores.tempFinal.text,
                        _controladores.horaInit.text,
                        _controladores.horaFinal.text,
                        //Pagina 2
                        controladores2.pontosCali.text,
                        controladores2.pontosCali2.text,
                        controladores2.indicaBalanca.text,
                        controladores2.indicaBalanca2.text,
                        controladores2.cargaAjuste.text,
                        controladores2.ref.text,
                        controladores3.pontosApoioController.text,
                        controladores3.cargaUti.text,
                        controladores3.ponto1.text,
                        controladores3.ponto2.text,
                        controladores3.ponto3.text,
                        controladores3.ponto4.text,
                        controladores3.ponto5.text,
                        controladores3.ponto6.text,
                        controladores3.ponto7.text,
                        controladores3.ponto8.text,
                        controladores3.ponto9.text,
                        controladores3.ponto10.text,
                        controladores3.ponto11.text,
                        controladores3.ponto12.text,
                      );

                      if (success) {
                        print('Dados enviados com sucesso!');
                      } else {
                        print('Falha ao enviar dados!');
                      }
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
