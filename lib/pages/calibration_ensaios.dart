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
  late Controllers controladores1;
  late ControllersEnsarioPrevio controladores2;
  late EnsaioExcentricoControllers controladores3;
  late EnsaioPesagemControllers controladores4;

  @override
  Widget build(BuildContext context) {
    controladores1 = Provider.of<Controllers>(context);
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
                      // Adicionando a caixa de diálogo
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Gerar PDF?'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Não'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: const Text('Sim'),
                                  onPressed: () async {
                                    print(controladores4.result1.text);
                                    Navigator.of(context).pop();
                                    print(DateTime.now());
                                    bool success = await postCalibrationData(
                                      controladores1.regCali.text,
                                      controladores1.data.text,
                                      controladores1.certificado.text,
                                      controladores1.cliente.text,
                                      controladores1.morada.text,
                                      controladores1.objeto.text,
                                      controladores1.marca.text,
                                      controladores1.modelo.text,
                                      controladores1.nserie.text,
                                      controladores1.idinterna.text,
                                      controladores1.cepController.text,
                                      //localização diferente
                                      controladores1.morada2.text,
                                      controladores1.cepController2.text,
                                      //compensação de gravidade
                                      controladores1.altitude.text,
                                      controladores1.latitude.text,
                                      //caracteristicas dos instrumentos
                                      controladores1.cimax.text,
                                      controladores1.dropdownController.text,
                                      controladores1.d.text,
                                      controladores1.dT.text,
                                      //condiçoes ambientais
                                      controladores1.tempInit.text,
                                      controladores1.tempFinal.text,
                                      controladores1.horaInit.text,
                                      controladores1.horaFinal.text,
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
                                      controladores4.aPesoPadrao1.text,
                                      controladores4.aPesoPadrao2.text,
                                      controladores4.aPesoPadrao3.text,
                                      controladores4.aPesoPadrao4.text,
                                      controladores4.aPesoPadrao5.text,
                                      controladores4.aPesoPadrao6.text,
                                      controladores4.aPesoPadrao7.text,
                                      controladores4.aPesoPadrao8.text,
                                      controladores4.aPesoPadrao9.text,
                                      controladores4.aPesoPadrao10.text,
                                      controladores4.aPesoPadrao11.text,
                                      controladores4.aPesoPadrao12.text,
                                      controladores4.aPesoPadrao13.text,
                                      controladores4.aPesoPadrao14.text,
                                      controladores4.aPesoPadrao15.text,
                                      controladores4.aPesoPadrao16.text,
                                      controladores4.aPesoPadrao17.text,
                                      controladores4.aPesoPadrao18.text,
                                      controladores4.aPesoPadrao19.text,
                                      controladores4.aPesoPadrao20.text,
                                      controladores4.aPesoPadrao21.text,
                                      controladores4.aPesoPadrao22.text,
                                      controladores4.aPesoPadrao23.text,
                                      controladores4.aPesoPadrao24.text,
                                      controladores4.aPesoPadrao25.text,
                                      controladores4.aPesoPadrao26.text,
                                      controladores4.aPesoPadrao27.text,
                                      controladores4.aPesoPadrao28.text,
                                      controladores4.aPesoPadrao29.text,
                                      controladores4.aPesoPadrao30.text,
                                      controladores4.aPesoPadrao31.text,
                                      controladores4.aPesoPadrao32.text,
                                      controladores4.aPesoPadrao33.text,
                                      controladores4.aPesoPadrao34.text,
                                      controladores4.aPesoPadrao35.text,
                                      controladores4.aPesoPadrao36.text,
                                      controladores4.aPesoPadrao37.text,
                                      controladores4.aPesoPadrao38.text,
                                      controladores4.aPesoPadrao39.text,
                                      controladores4.aPesoPadrao40.text,
                                      controladores4.aPesoPadrao41.text,
                                      controladores4.aPesoPadrao42.text,
                                      controladores4.aPesoPadrao43.text,
                                      controladores4.aPesoPadrao44.text,
                                      controladores4.aPesoPadrao45.text,
                                      controladores4.aPesoPadrao46.text,
                                      controladores4.aPesoPadrao47.text,
                                      controladores4.aPesoPadrao48.text,
                                      controladores4.aPesoPadrao49.text,
                                      controladores4.aPesoPadrao50.text,
                                      controladores4.aPesoPadrao51.text,
                                      controladores4.aPesoPadrao52.text,
                                      controladores4.aPesoPadrao53.text,
                                      controladores4.aPesoPadrao54.text,
                                      controladores4.aPesoPadrao55.text,
                                      controladores4.aPesoPadrao56.text,
                                      controladores4.aPesoPadrao57.text,
                                      controladores4.aPesoPadrao58.text,
                                      controladores4.aPesoPadrao59.text,
                                      controladores4.aPesoPadrao60.text,
                                      controladores4.aPesoPadrao61.text,
                                      controladores4.aPesoPadrao62.text,
                                      controladores4.aPesoPadrao63.text,
                                      controladores4.aPesoPadrao64.text,
                                      controladores4.aPesoPadrao65.text,
                                      controladores4.aPesoPadrao66.text,
                                      controladores4.aPesoPadrao67.text,
                                      controladores4.aPesoPadrao68.text,
                                      controladores4.aPesoPadrao69.text,
                                      controladores4.aPesoPadrao70.text,
                                      controladores4.aPesoPadrao71.text,
                                      controladores4.aPesoPadrao72.text,
                                      controladores4.aPesoPadrao73.text,
                                      controladores4.aPesoPadrao74.text,
                                      controladores4.aPesoPadrao75.text,
                                      controladores4.aPesoPadrao76.text,
                                      controladores4.aPesoPadrao77.text,
                                      controladores4.aPesoPadrao78.text,
                                      controladores4.aPesoPadrao79.text,
                                      controladores4.aPesoPadrao80.text,
                                      controladores4.aPesoPadrao81.text,
                                      controladores4.aPesoPadrao82.text,
                                      controladores4.aPesoPadrao83.text,
                                      controladores4.aPesoPadrao84.text,
                                      controladores4.aPesoPadrao85.text,
                                      controladores4.aPesoPadrao86.text,
                                      controladores4.aPesoPadrao87.text,
                                      controladores4.aPesoPadrao88.text,
                                      controladores4.aPesoPadrao89.text,
                                      controladores4.aPesoPadrao90.text,
                                      controladores4.aPesoPadrao91.text,
                                      controladores4.aPesoPadrao92.text,
                                      controladores4.aPesoPadrao93.text,
                                      controladores4.aPesoPadrao94.text,
                                      controladores4.aPesoPadrao95.text,
                                      controladores4.aPesoPadrao96.text,
                                      controladores4.aPesoPadrao97.text,
                                      controladores4.aPesoPadrao98.text,
                                      controladores4.aPesoPadrao99.text,
                                      controladores4.aPesoPadrao100.text,
                                      controladores4.aPesoPadrao101.text,
                                      controladores4.aPesoPadrao102.text,
                                      controladores4.aPesoPadrao103.text,
                                      controladores4.aPesoPadrao104.text,
                                      controladores4.aPesoPadrao105.text,
                                      controladores4.aPesoPadrao106.text,
                                      controladores4.aPesoPadrao107.text,
                                      controladores4.aPesoPadrao108.text,
                                      controladores4.aPesoPadrao109.text,
                                      controladores4.aPesoPadrao110.text,
                                      controladores4.aPesoPadrao111.text,
                                      controladores4.aPesoPadrao112.text,
                                      controladores4.aPesoPadrao113.text,
                                      controladores4.aPesoPadrao114.text,
                                      controladores4.aPesoPadrao115.text,
                                      controladores4.aPesoPadrao116.text,
                                      controladores4.aPesoPadrao117.text,
                                      controladores4.aPesoPadrao118.text,
                                      controladores4.aPesoPadrao119.text,
                                      controladores4.aPesoPadrao120.text,
                                      controladores4.result1.text,
                                    );

                                    if (success) {
                                      await PDFService().callPDFGeneration();

                                      print('Dados enviados com sucesso!');
                                    } else {
                                      print('Falha ao enviar dados!');
                                    }
                                  },
                                ),
                              ],
                            );
                          });
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
