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
                                    ;

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
                                      controladores4.result1.text,
                                      controladores4.result2.text,
                                      controladores4.result3.text,
                                      controladores4.result4.text,
                                      controladores4.result5.text,
                                      controladores4.result6.text,
                                      controladores4.result7.text,
                                      controladores4.result8.text,
                                      controladores4.result9.text,
                                      controladores4.result10.text,
                                      controladores4.result11.text,
                                      controladores4.result12.text,
                                      controladores4.mapa.text,
                                      controladores4.mapa2.text,
                                      controladores4.mapa3.text,
                                      controladores4.mapa4.text,
                                      controladores4.mapa5.text,
                                      controladores4.mapa6.text,
                                      controladores4.mapa7.text,
                                      controladores4.mapa8.text,
                                      controladores4.mapa9.text,
                                      controladores4.mapa10.text,
                                      controladores4.mapa11.text,
                                      controladores4.mapa12.text,
                                      controladores4.mapa13.text,
                                      controladores4.mapa14.text,
                                      controladores4.mapa15.text,
                                      controladores4.mapa16.text,
                                      controladores4.mapa17.text,
                                      controladores4.mapa18.text,
                                      controladores4.mapa19.text,
                                      controladores4.mapa20.text,
                                      controladores4.mapa21.text,
                                      controladores4.mapa22.text,
                                      controladores4.mapa23.text,
                                      controladores4.mapa24.text,
                                      controladores4.mapa25.text,
                                      controladores4.mapa26.text,
                                      controladores4.mapa27.text,
                                      controladores4.mapa28.text,
                                      controladores4.mapa29.text,
                                      controladores4.mapa30.text,
                                      controladores4.mapa31.text,
                                      controladores4.mapa32.text,
                                      controladores4.mapa33.text,
                                      controladores4.mapa34.text,
                                      controladores4.mapa35.text,
                                      controladores4.mapa36.text,
                                      controladores4.mapa37.text,
                                      controladores4.mapa38.text,
                                      controladores4.mapa39.text,
                                      controladores4.mapa40.text,
                                      controladores4.mapa41.text,
                                      controladores4.mapa42.text,
                                      controladores4.mapa43.text,
                                      controladores4.mapa44.text,
                                      controladores4.mapa45.text,
                                      controladores4.mapa46.text,
                                      controladores4.mapa47.text,
                                      controladores4.mapa48.text,
                                      controladores4.mapa49.text,
                                      controladores4.mapa50.text,
                                      controladores4.mapa51.text,
                                      controladores4.mapa52.text,
                                      controladores4.mapa53.text,
                                      controladores4.mapa54.text,
                                      controladores4.mapa55.text,
                                      controladores4.mapa56.text,
                                      controladores4.mapa57.text,
                                      controladores4.mapa58.text,
                                      controladores4.mapa59.text,
                                      controladores4.mapa60.text,
                                      controladores4.mapa61.text,
                                      controladores4.mapa62.text,
                                      controladores4.mapa63.text,
                                      controladores4.mapa64.text,
                                      controladores4.mapa65.text,
                                      controladores4.mapa66.text,
                                      controladores4.mapa67.text,
                                      controladores4.mapa68.text,
                                      controladores4.mapa69.text,
                                      controladores4.mapa70.text,
                                      controladores4.mapa71.text,
                                      controladores4.mapa72.text,
                                      controladores4.mapa73.text,
                                      controladores4.mapa74.text,
                                      controladores4.mapa75.text,
                                      controladores4.mapa76.text,
                                      controladores4.mapa77.text,
                                      controladores4.mapa78.text,
                                      controladores4.mapa78.text,
                                      controladores4.mapa79.text,
                                      controladores4.mapa80.text,
                                      controladores4.mapa81.text,
                                      controladores4.mapa82.text,
                                      controladores4.mapa83.text,
                                      controladores4.mapa84.text,
                                      controladores4.mapa85.text,
                                      controladores4.mapa86.text,
                                      controladores4.mapa87.text,
                                      controladores4.mapa88.text,
                                      controladores4.mapa89.text,
                                      controladores4.mapa90.text,
                                      controladores4.mapa91.text,
                                      controladores4.mapa92.text,
                                      controladores4.mapa93.text,
                                      controladores4.mapa94.text,
                                      controladores4.mapa95.text,
                                      controladores4.mapa96.text,
                                      controladores4.mapa97.text,
                                      controladores4.mapa98.text,
                                      controladores4.mapa99.text,
                                      controladores4.mapa100.text,
                                      controladores4.mapa101.text,
                                      controladores4.mapa102.text,
                                      controladores4.mapa103.text,
                                      controladores4.mapa104.text,
                                      controladores4.mapa105.text,
                                      controladores4.mapa106.text,
                                      controladores4.mapa107.text,
                                      controladores4.mapa108.text,
                                      controladores4.mapa109.text,
                                      controladores4.mapa110.text,
                                      controladores4.mapa111.text,
                                      controladores4.mapa112.text,
                                      controladores4.mapa113.text,
                                      controladores4.mapa114.text,
                                      controladores4.mapa115.text,
                                      controladores4.mapa116.text,
                                      controladores4.mapa117.text,
                                      controladores4.mapa118.text,
                                      controladores4.mapa119.text,
                                      controladores4.mapa120.text,
                                      controladores4.mapa121.text,
                                      controladores4.mapa122.text,
                                      controladores4.mapa123.text,
                                      controladores4.mapa124.text,
                                      controladores4.mapa125.text,
                                      controladores4.mapa126.text,
                                      controladores4.mapa127.text,
                                      controladores4.mapa128.text,
                                      controladores4.mapa129.text,
                                      controladores4.mapa130.text,
                                      controladores4.mapa131.text,
                                      controladores4.mapa132.text,
                                      controladores4.mapa133.text,
                                      controladores4.mapa134.text,
                                      controladores4.mapa135.text,
                                      controladores4.mapa136.text,
                                      controladores4.mapa137.text,
                                      controladores4.mapa138.text,
                                      controladores4.mapa139.text,
                                      controladores4.mapa140.text,
                                      controladores4.mapa141.text,
                                      controladores4.mapa142.text,
                                      controladores4.mapa143.text,
                                      controladores4.mapa144.text,
                                      controladores4.mapa145.text,
                                      controladores4.mapa146.text,
                                      controladores4.mapa147.text,
                                      controladores4.mapa148.text,
                                      controladores4.mapa149.text,
                                      controladores4.mapa150.text,
                                      controladores4.mapa151.text,
                                      controladores4.mapa152.text,
                                      controladores4.mapa153.text,
                                      controladores4.mapa154.text,
                                      controladores4.mapa155.text,
                                      controladores4.mapa156.text,
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
