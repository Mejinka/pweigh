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
  late EnsaioPesagemControllers _controladoresPesagem;

  int numPontosApoio = 0;
  final List<bool> _contem715 = List.filled(61, false);
  final List<bool> _contem716 = List.filled(61, false);

  TextEditingController _getControllerByIndex(int index) {
    switch (index) {
      case 0:
        return _controladoresPesagem.aPesoPadrao1;
      case 1:
        return _controladoresPesagem.aPesoPadrao2;
      case 2:
        return _controladoresPesagem.aPesoPadrao3;
      case 3:
        return _controladoresPesagem.aPesoPadrao4;
      case 4:
        return _controladoresPesagem.aPesoPadrao5;
      case 5:
        return _controladoresPesagem.aPesoPadrao6;
      case 6:
        return _controladoresPesagem.aPesoPadrao7;
      case 7:
        return _controladoresPesagem.aPesoPadrao8;
      case 8:
        return _controladoresPesagem.aPesoPadrao9;
      case 9:
        return _controladoresPesagem.aPesoPadrao10;
      case 10:
        return _controladoresPesagem.aPesoPadrao11;
      case 11:
        return _controladoresPesagem.aPesoPadrao12;
      case 12:
        return _controladoresPesagem.aPesoPadrao13;
      case 13:
        return _controladoresPesagem.aPesoPadrao14;
      case 14:
        return _controladoresPesagem.aPesoPadrao15;
      case 15:
        return _controladoresPesagem.aPesoPadrao16;
      case 16:
        return _controladoresPesagem.aPesoPadrao17;
      case 17:
        return _controladoresPesagem.aPesoPadrao18;
      case 18:
        return _controladoresPesagem.aPesoPadrao19;
      case 19:
        return _controladoresPesagem.aPesoPadrao20;
      case 20:
        return _controladoresPesagem.aPesoPadrao21;
      case 21:
        return _controladoresPesagem.aPesoPadrao22;
      case 22:
        return _controladoresPesagem.aPesoPadrao23;
      case 23:
        return _controladoresPesagem.aPesoPadrao24;
      case 24:
        return _controladoresPesagem.aPesoPadrao25;
      case 25:
        return _controladoresPesagem.aPesoPadrao26;
      case 26:
        return _controladoresPesagem.aPesoPadrao27;
      case 27:
        return _controladoresPesagem.aPesoPadrao28;
      case 28:
        return _controladoresPesagem.aPesoPadrao29;
      case 29:
        return _controladoresPesagem.aPesoPadrao30;
      case 30:
        return _controladoresPesagem.aPesoPadrao31;
      case 31:
        return _controladoresPesagem.aPesoPadrao32;
      case 32:
        return _controladoresPesagem.aPesoPadrao33;
      case 33:
        return _controladoresPesagem.aPesoPadrao34;
      case 34:
        return _controladoresPesagem.aPesoPadrao35;
      case 35:
        return _controladoresPesagem.aPesoPadrao36;
      case 36:
        return _controladoresPesagem.aPesoPadrao37;
      case 37:
        return _controladoresPesagem.aPesoPadrao38;
      case 38:
        return _controladoresPesagem.aPesoPadrao39;
      case 39:
        return _controladoresPesagem.aPesoPadrao40;
      case 40:
        return _controladoresPesagem.aPesoPadrao41;
      case 41:
        return _controladoresPesagem.aPesoPadrao42;
      case 42:
        return _controladoresPesagem.aPesoPadrao43;
      case 43:
        return _controladoresPesagem.aPesoPadrao44;
      case 44:
        return _controladoresPesagem.aPesoPadrao45;
      case 45:
        return _controladoresPesagem.aPesoPadrao46;
      case 46:
        return _controladoresPesagem.aPesoPadrao47;
      case 47:
        return _controladoresPesagem.aPesoPadrao48;
      case 48:
        return _controladoresPesagem.aPesoPadrao49;
      case 49:
        return _controladoresPesagem.aPesoPadrao50;
      case 50:
        return _controladoresPesagem.aPesoPadrao51;
      case 51:
        return _controladoresPesagem.aPesoPadrao52;
      case 52:
        return _controladoresPesagem.aPesoPadrao53;
      case 53:
        return _controladoresPesagem.aPesoPadrao54;
      case 54:
        return _controladoresPesagem.aPesoPadrao55;
      case 55:
        return _controladoresPesagem.aPesoPadrao56;
      case 56:
        return _controladoresPesagem.aPesoPadrao57;
      case 57:
        return _controladoresPesagem.aPesoPadrao58;
      case 58:
        return _controladoresPesagem.aPesoPadrao59;
      case 59:
        return _controladoresPesagem.aPesoPadrao60;
      case 60:
        return _controladoresPesagem.aPesoPadrao61;
      case 61:
        return _controladoresPesagem.aPesoPadrao62;
      default:
        throw ArgumentError("Index must be between 0 and 119");
    }
  }

  final List<TextEditingController> _controladoresDesativados =
      List.generate(61, (index) => TextEditingController());

  final TextEditingController _controller715 = TextEditingController();
  final TextEditingController _controller716 = TextEditingController();
  final Map<String, String> mapa715 = {
    '1m': '0,0010009',
    '2m': '0,0019997',
    '2mº': '0,0019967',
    '5m': '0,0049960',
    '10m': '0,0099967',
    '20m': '0,0200006',
    '20mº': '0,0199988',
    '50m': '0,0500039',
    '100m': '0,1000038',
    '200m': '0,2000001',
    '200mº': '0,1999915',
    '500m': '0,5000021',
    '1': '1,0000010',
    '2': '1,9999870',
    '2º': '2,0000180',
    '5': '5,0000190',
    '10': '10,0000140',
    '20': '20,0000440',
    '20º': '20,0000270',
    '50': '50,0000230',
    '100': '100,0000530',
    '200': '199,9999600',
    '200º': '199,9999800',
    '500': '499,9996900',
    '1000': '1000,0008200',
  };

  final Map<String, String> mapa716 = {
    'F1m': '0,0010034',
    'F2m': '0,0020011',
    'F2mº': '0,0020046',
    'F5m': '0,0050032',
    'F10m': '0,0099981',
    'F20m': '0,0200110',
    'F20mº': '0,0200100',
    'F50m': '0,0500044',
    'F100m': '0,1000210',
    'F200m': '0,2000250',
    'F200mº': '0,2000210',
    'F500m': '0,5000310',
    'F1': '1,0000300',
    'F2': '2,0000220',
    'F2º': '2,0000400',
    'F5': '5,0000440',
    'F10': '10,0000150',
    'F20': '20,0000700',
    'F20º': '20,0000590',
    'F50': '50,0000150',
    'F100': '100,0003300',
    'F200': '200,0000900',
    'F200º': '200,0001800',
    'F500': '500,0013100',
    'F1k': '1000,0025000',
    'F2k': '2000,0038000',
    'F2kº': '2000,0047000',
    'F5k': '5000,0036000',
  };
  final Map<String, String> mapa717 = {
    'F10k': '9999,9950000',
    'F20k': '20000,0080000',
  };
  final Map<String, String> mapa530 = {
    '1k': '1000,0000000',
    '2k': '2000,0000000',
    '3k': '3000,0000000',
    '4k': '4000,0000000',
    '5k': '5000,0000000',
    '6k': '6000,0000000',
    '7k': '7000,0000000',
    '8k': '8000,0000000',
    '9k': '9000,0000000',
    '10k': '10000,0000000'
  };
  List<int> mapasReferenciados = [];

  void checkMap(int value) {
    if (mapa715.containsKey(value)) {
      mapasReferenciados.add(715);
    }
    if (mapa716.containsKey(value)) {
      mapasReferenciados.add(716);
    }
    // Adicione verificações para outros mapas aqui...
  }

  void processColumns(int col1, int col2, int col3) {
    checkMap(col1);
    checkMap(col2);
    checkMap(col3);

    // Use um conjunto para remover duplicatas
    Set<int> mapasUnicos = mapasReferenciados.toSet();
    print(mapasUnicos);
  }

  @override
  void initState() {
    super.initState();
    _controladores = widget.controladores;
    _controladores.pontosApoioController.addListener(_updateCampos);
    _controladoresPesagem =
        Provider.of<EnsaioPesagemControllers>(context, listen: false);

    for (int i = 0; i < 61; i++) {
      _getControllerByIndex(i).addListener(() {
        var valor = _getControllerByIndex(i).text;
        if (mapa715.containsKey(valor)) {
          _controladoresDesativados[i].text = mapa715[valor]!;
          _contem715[i] = true;
          _contem716[i] = false;
        }
        atualizarSoma();
        _verificaEAtualizaControllerMapa();
      });
    }
  }

  bool contemValorDoMapaNaColuna(
      Map<String, String> mapa, List<TextEditingController> coluna) {
    for (var controller in coluna) {
      if (mapa.containsKey(controller.text)) {
        return true;
      }
    }
    return false;
  }

  void _verificaEAtualizaControllerMapa() {
    var coluna1 = [
      _controladoresPesagem.aPesoPadrao1,
      _controladoresPesagem.aPesoPadrao2,
      _controladoresPesagem.aPesoPadrao3,
      _controladoresPesagem.aPesoPadrao4,
      _controladoresPesagem.aPesoPadrao5,
    ];
    var coluna2 = [
      _controladoresPesagem.aPesoPadrao6,
      _controladoresPesagem.aPesoPadrao7,
      _controladoresPesagem.aPesoPadrao8,
      _controladoresPesagem.aPesoPadrao9,
      _controladoresPesagem.aPesoPadrao10,
    ];
    var coluna3 = [
      _controladoresPesagem.aPesoPadrao11,
      _controladoresPesagem.aPesoPadrao12,
      _controladoresPesagem.aPesoPadrao13,
      _controladoresPesagem.aPesoPadrao14,
      _controladoresPesagem.aPesoPadrao15,
    ];

    bool temValor715Coluna1 = contemValorDoMapaNaColuna(mapa715, coluna1);
    bool temValor716Coluna1 = contemValorDoMapaNaColuna(mapa716, coluna1);
    bool temValor717Coluna1 = contemValorDoMapaNaColuna(mapa717, coluna1);

    bool temValor530Coluna1 = contemValorDoMapaNaColuna(mapa530, coluna1);

    /////////////////////////////////
    bool temValor715Coluna2 = contemValorDoMapaNaColuna(mapa715, coluna2);
    bool temValor716Coluna2 = contemValorDoMapaNaColuna(mapa716, coluna2);
    bool temValor717Coluna2 = contemValorDoMapaNaColuna(mapa717, coluna2);

    bool temValor530Coluna2 = contemValorDoMapaNaColuna(mapa530, coluna2);

    /////////////////////////////////
    bool temValor715Coluna3 = contemValorDoMapaNaColuna(mapa715, coluna3);
    bool temValor716Coluna3 = contemValorDoMapaNaColuna(mapa716, coluna3);
    bool temValor717Coluna3 = contemValorDoMapaNaColuna(mapa717, coluna3);

    bool temValor530Coluna3 = contemValorDoMapaNaColuna(mapa530, coluna3);

    /////////////////////////////////

    if (temValor715Coluna1) {
      _controladoresPesagem.mapa.text = "715";
    } else {
      _controladoresPesagem.mapa.text = "";
    }

    if (temValor716Coluna1) {
      _controladoresPesagem.mapa2.text = "716";
    } else {
      _controladoresPesagem.mapa2.text = "";
    }
    if (temValor717Coluna1) {
      _controladoresPesagem.mapa3.text = "717";
    } else {
      _controladoresPesagem.mapa3.text = "";
    }

    if (temValor530Coluna1) {
      _controladoresPesagem.mapa6.text = "530";
    } else {
      _controladoresPesagem.mapa6.text = "";
    }

////////////////////
    if (temValor715Coluna2) {
      _controladoresPesagem.mapa14.text = "715";
    } else {
      _controladoresPesagem.mapa14.text = "";
    }

    if (temValor716Coluna2) {
      _controladoresPesagem.mapa15.text = "716";
    } else {
      _controladoresPesagem.mapa15.text = "";
    }
    if (temValor717Coluna2) {
      _controladoresPesagem.mapa16.text = "717";
    } else {
      _controladoresPesagem.mapa16.text = "";
    }

    if (temValor530Coluna2) {
      _controladoresPesagem.mapa19.text = "530";
    } else {
      _controladoresPesagem.mapa19.text = "";
    }

////////////////////
    if (temValor715Coluna3) {
      _controladoresPesagem.mapa27.text = "715";
    } else {
      _controladoresPesagem.mapa27.text = "";
    }

    if (temValor716Coluna3) {
      _controladoresPesagem.mapa28.text = "716";
    } else {
      _controladoresPesagem.mapa28.text = "";
    }
    if (temValor717Coluna3) {
      _controladoresPesagem.mapa29.text = "717";
    } else {
      _controladoresPesagem.mapa29.text = "";
    }

    if (temValor530Coluna3) {
      _controladoresPesagem.mapa32.text = "530";
    } else {
      _controladoresPesagem.mapa32.text = "";
    }

////////////////////
  }

  @override
  void dispose() {
    for (int i = 1; i <= _controladores.controladoresPontosApoio.length; i++) {
      _controladores.disposePontoApoioControllers(i);
    }
    _controller715.dispose();
    _controller716.dispose();
    super.dispose();
  }

  void atualizarSoma() {
    double somaColuna1 = 0.0;
    double somaColuna2 = 0.0;
    double somaColuna3 = 0.0;

    var coluna1 = [
      _controladoresPesagem.aPesoPadrao1,
      _controladoresPesagem.aPesoPadrao2,
      _controladoresPesagem.aPesoPadrao3,
      _controladoresPesagem.aPesoPadrao4,
      _controladoresPesagem.aPesoPadrao5,
    ];

    var coluna2 = [
      _controladoresPesagem.aPesoPadrao6,
      _controladoresPesagem.aPesoPadrao7,
      _controladoresPesagem.aPesoPadrao8,
      _controladoresPesagem.aPesoPadrao9,
      _controladoresPesagem.aPesoPadrao10,
    ];
    var coluna3 = [
      _controladoresPesagem.aPesoPadrao11,
      _controladoresPesagem.aPesoPadrao12,
      _controladoresPesagem.aPesoPadrao13,
      _controladoresPesagem.aPesoPadrao14,
      _controladoresPesagem.aPesoPadrao15,
    ];

    List<Map<String, String>> mapas = [
      mapa715,
      mapa716,
      mapa717,
      mapa530,
    ];

    for (var controller in coluna1) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna1 += valor;
          break;
        }
      }
    }
    for (var controller in coluna2) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna2 += valor;
          break;
        }
      }
    }
    for (var controller in coluna3) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna3 += valor;
          break;
        }
      }
    }

    _controladoresPesagem.result1.text =
        somaColuna1.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result2.text =
        somaColuna2.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result3.text =
        somaColuna3.toStringAsFixed(7).replaceAll(".", ",");
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
      _controladores.getPontoApoioControllers(i);
    }

    setState(() {
      this.numPontosApoio = numPontosApoio;
    });
  }

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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('2', _controladores.ponto2,
                          [_controladores.ponto2F], numPontosApoio >= 2),
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
            const Tooltip(
              message: '(n = 3 para Max > 100kg e n = 5 para Max < 100 kg)',
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Ensaio de Pesagem e Repetibilidade",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
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
                                _controladoresPesagem.aPesoPadrao1,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao2,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao3,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao4,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao5,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result1,
                              numPontosApoio >= 1),
                          mapasNumeros(_controladoresPesagem.mapa),
                          mapasNumeros(_controladoresPesagem.mapa2),
                          mapasNumeros(_controladoresPesagem.mapa3),
                          mapasNumeros(_controladoresPesagem.mapa4),
                          mapasNumeros(_controladoresPesagem.mapa5),
                          mapasNumeros(_controladoresPesagem.mapa6),
                          mapasNumeros(_controladoresPesagem.mapa7),
                          mapasNumeros(_controladoresPesagem.mapa8),
                          mapasNumeros(_controladoresPesagem.mapa9),
                          mapasNumeros(_controladoresPesagem.mapa10),
                          mapasNumeros(_controladoresPesagem.mapa11),
                          mapasNumeros(_controladoresPesagem.mapa12),
                          mapasNumeros(_controladoresPesagem.mapa13),
                        ],
                      ),
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
                                _controladoresPesagem.aPesoPadrao6,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao7,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao8,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao9,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao10,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result2,
                              numPontosApoio >= 2),
                          mapasNumeros(_controladoresPesagem.mapa14),
                          mapasNumeros(_controladoresPesagem.mapa15),
                          mapasNumeros(_controladoresPesagem.mapa16),
                          mapasNumeros(_controladoresPesagem.mapa17),
                          mapasNumeros(_controladoresPesagem.mapa18),
                          mapasNumeros(_controladoresPesagem.mapa19),
                          mapasNumeros(_controladoresPesagem.mapa20),
                          mapasNumeros(_controladoresPesagem.mapa21),
                          mapasNumeros(_controladoresPesagem.mapa22),
                          mapasNumeros(_controladoresPesagem.mapa23),
                          mapasNumeros(_controladoresPesagem.mapa24),
                          mapasNumeros(_controladoresPesagem.mapa25),
                          mapasNumeros(_controladoresPesagem.mapa26),
                        ],
                      ),
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
                                _controladoresPesagem.aPesoPadrao11,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao12,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao13,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao14,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao15,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result3,
                              numPontosApoio >= 3),
                          mapasNumeros(_controladoresPesagem.mapa27),
                          mapasNumeros(_controladoresPesagem.mapa28),
                          mapasNumeros(_controladoresPesagem.mapa29),
                          mapasNumeros(_controladoresPesagem.mapa30),
                          mapasNumeros(_controladoresPesagem.mapa31),
                          mapasNumeros(_controladoresPesagem.mapa32),
                          mapasNumeros(_controladoresPesagem.mapa33),
                          mapasNumeros(_controladoresPesagem.mapa34),
                          mapasNumeros(_controladoresPesagem.mapa35),
                          mapasNumeros(_controladoresPesagem.mapa36),
                          mapasNumeros(_controladoresPesagem.mapa37),
                          mapasNumeros(_controladoresPesagem.mapa38),
                          mapasNumeros(_controladoresPesagem.mapa39),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
