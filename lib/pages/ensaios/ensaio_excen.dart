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
  bool _isSelected = false;
  List<bool> _contem715 = List.filled(5, false);
  List<bool> _contem716 = List.filled(5, false);
  // Crie controladores para cada par de campos de texto.

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
        return _controladoresPesagem.aPesoPadrao5;
      case 6:
        return _controladoresPesagem.aPesoPadrao6;
      case 7:
        return _controladoresPesagem.aPesoPadrao7;
      case 8:
        return _controladoresPesagem.aPesoPadrao8;
      case 9:
        return _controladoresPesagem.aPesoPadrao9;
      case 10:
        return _controladoresPesagem.aPesoPadrao10;
      case 11:
        return _controladoresPesagem.aPesoPadrao11;
      case 12:
        return _controladoresPesagem.aPesoPadrao12;
      case 13:
        return _controladoresPesagem.aPesoPadrao13;
      case 14:
        return _controladoresPesagem.aPesoPadrao14;
      case 15:
        return _controladoresPesagem.aPesoPadrao15;
      case 16:
        return _controladoresPesagem.aPesoPadrao16;
      case 17:
        return _controladoresPesagem.aPesoPadrao17;
      case 18:
        return _controladoresPesagem.aPesoPadrao18;
      case 19:
        return _controladoresPesagem.aPesoPadrao19;
      case 20:
        return _controladoresPesagem.aPesoPadrao20;
      case 21:
        return _controladoresPesagem.aPesoPadrao21;
      case 22:
        return _controladoresPesagem.aPesoPadrao22;
      case 23:
        return _controladoresPesagem.aPesoPadrao23;
      case 24:
        return _controladoresPesagem.aPesoPadrao24;
      case 25:
        return _controladoresPesagem.aPesoPadrao25;
      case 26:
        return _controladoresPesagem.aPesoPadrao26;
      case 27:
        return _controladoresPesagem.aPesoPadrao27;
      case 28:
        return _controladoresPesagem.aPesoPadrao28;
      case 29:
        return _controladoresPesagem.aPesoPadrao29;
      case 30:
        return _controladoresPesagem.aPesoPadrao30;
      case 31:
        return _controladoresPesagem.aPesoPadrao31;
      case 32:
        return _controladoresPesagem.aPesoPadrao32;
      case 33:
        return _controladoresPesagem.aPesoPadrao33;
      case 34:
        return _controladoresPesagem.aPesoPadrao34;
      case 35:
        return _controladoresPesagem.aPesoPadrao35;
      case 36:
        return _controladoresPesagem.aPesoPadrao36;
      case 37:
        return _controladoresPesagem.aPesoPadrao37;
      case 38:
        return _controladoresPesagem.aPesoPadrao38;
      case 39:
        return _controladoresPesagem.aPesoPadrao39;
      case 40:
        return _controladoresPesagem.aPesoPadrao40;
      case 41:
        return _controladoresPesagem.aPesoPadrao41;
      case 42:
        return _controladoresPesagem.aPesoPadrao42;
      case 43:
        return _controladoresPesagem.aPesoPadrao43;
      case 44:
        return _controladoresPesagem.aPesoPadrao44;
      case 45:
        return _controladoresPesagem.aPesoPadrao45;
      case 46:
        return _controladoresPesagem.aPesoPadrao46;
      case 47:
        return _controladoresPesagem.aPesoPadrao47;
      case 48:
        return _controladoresPesagem.aPesoPadrao48;
      case 49:
        return _controladoresPesagem.aPesoPadrao49;
      case 50:
        return _controladoresPesagem.aPesoPadrao50;
      case 51:
        return _controladoresPesagem.aPesoPadrao51;
      case 52:
        return _controladoresPesagem.aPesoPadrao52;
      case 53:
        return _controladoresPesagem.aPesoPadrao53;
      case 54:
        return _controladoresPesagem.aPesoPadrao54;
      case 55:
        return _controladoresPesagem.aPesoPadrao55;
      case 56:
        return _controladoresPesagem.aPesoPadrao56;
      case 57:
        return _controladoresPesagem.aPesoPadrao57;
      case 58:
        return _controladoresPesagem.aPesoPadrao58;
      case 59:
        return _controladoresPesagem.aPesoPadrao59;
      case 60:
        return _controladoresPesagem.aPesoPadrao60;
      case 61:
        return _controladoresPesagem.aPesoPadrao61;
      case 62:
        return _controladoresPesagem.aPesoPadrao62;
      case 63:
        return _controladoresPesagem.aPesoPadrao63;
      case 64:
        return _controladoresPesagem.aPesoPadrao64;
      case 65:
        return _controladoresPesagem.aPesoPadrao65;
      case 66:
        return _controladoresPesagem.aPesoPadrao66;
      case 67:
        return _controladoresPesagem.aPesoPadrao67;
      case 68:
        return _controladoresPesagem.aPesoPadrao68;
      case 69:
        return _controladoresPesagem.aPesoPadrao69;
      case 70:
        return _controladoresPesagem.aPesoPadrao70;
      case 71:
        return _controladoresPesagem.aPesoPadrao71;
      case 72:
        return _controladoresPesagem.aPesoPadrao72;
      case 73:
        return _controladoresPesagem.aPesoPadrao73;
      case 74:
        return _controladoresPesagem.aPesoPadrao74;
      case 75:
        return _controladoresPesagem.aPesoPadrao75;
      case 76:
        return _controladoresPesagem.aPesoPadrao76;
      case 77:
        return _controladoresPesagem.aPesoPadrao77;
      case 78:
        return _controladoresPesagem.aPesoPadrao78;
      case 79:
        return _controladoresPesagem.aPesoPadrao79;
      case 80:
        return _controladoresPesagem.aPesoPadrao80;
      case 81:
        return _controladoresPesagem.aPesoPadrao81;
      case 82:
        return _controladoresPesagem.aPesoPadrao82;
      case 83:
        return _controladoresPesagem.aPesoPadrao83;
      case 84:
        return _controladoresPesagem.aPesoPadrao84;
      case 85:
        return _controladoresPesagem.aPesoPadrao85;
      case 86:
        return _controladoresPesagem.aPesoPadrao86;
      case 87:
        return _controladoresPesagem.aPesoPadrao87;
      case 88:
        return _controladoresPesagem.aPesoPadrao88;
      case 89:
        return _controladoresPesagem.aPesoPadrao89;
      case 90:
        return _controladoresPesagem.aPesoPadrao90;
      case 91:
        return _controladoresPesagem.aPesoPadrao91;
      case 92:
        return _controladoresPesagem.aPesoPadrao92;
      case 93:
        return _controladoresPesagem.aPesoPadrao93;
      case 94:
        return _controladoresPesagem.aPesoPadrao94;
      case 95:
        return _controladoresPesagem.aPesoPadrao95;
      case 96:
        return _controladoresPesagem.aPesoPadrao96;
      case 97:
        return _controladoresPesagem.aPesoPadrao97;
      case 98:
        return _controladoresPesagem.aPesoPadrao98;
      case 99:
        return _controladoresPesagem.aPesoPadrao99;
      case 100:
        return _controladoresPesagem.aPesoPadrao100;
      case 101:
        return _controladoresPesagem.aPesoPadrao101;
      case 102:
        return _controladoresPesagem.aPesoPadrao102;
      case 103:
        return _controladoresPesagem.aPesoPadrao103;
      case 104:
        return _controladoresPesagem.aPesoPadrao104;
      case 105:
        return _controladoresPesagem.aPesoPadrao105;
      case 106:
        return _controladoresPesagem.aPesoPadrao106;
      case 107:
        return _controladoresPesagem.aPesoPadrao107;
      case 108:
        return _controladoresPesagem.aPesoPadrao108;
      case 109:
        return _controladoresPesagem.aPesoPadrao109;
      case 110:
        return _controladoresPesagem.aPesoPadrao110;
      case 111:
        return _controladoresPesagem.aPesoPadrao111;
      case 112:
        return _controladoresPesagem.aPesoPadrao112;
      case 113:
        return _controladoresPesagem.aPesoPadrao113;
      case 114:
        return _controladoresPesagem.aPesoPadrao114;
      case 115:
        return _controladoresPesagem.aPesoPadrao115;
      case 116:
        return _controladoresPesagem.aPesoPadrao116;
      case 117:
        return _controladoresPesagem.aPesoPadrao117;
      case 118:
        return _controladoresPesagem.aPesoPadrao118;
      case 119:
        return _controladoresPesagem.aPesoPadrao119;
      default:
        throw ArgumentError("Index must be between 0 and 119");
    }
  }

  List<TextEditingController> _controladoresDesativados =
      List.generate(5, (index) => TextEditingController());

  TextEditingController _controller715 = TextEditingController();
  TextEditingController _controller716 = TextEditingController();
  final Map<String, String> mapeamento = {
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

  final Map<String, String> mapeamentoF = {
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
  @override
  void initState() {
    super.initState();
    _controladores = widget.controladores;
    _controladores.pontosApoioController.addListener(_updateCampos);
    _controladoresPesagem =
        Provider.of<EnsaioPesagemControllers>(context, listen: false);

    for (int i = 0; i < 5; i++) {
      // Número de controladores
      _getControllerByIndex(i).addListener(() {
        var valor = _getControllerByIndex(i).text;

        if (mapeamento.containsKey(valor)) {
          _controladoresDesativados[i].text = mapeamento[valor]!;
          _contem715[i] = true;
          _contem716[i] = false;
        } else if (mapeamentoF.containsKey(valor)) {
          _controladoresDesativados[i].text = mapeamentoF[valor]!;
          _contem716[i] = true;
          _contem715[i] = false;
        } else {
          _controladoresDesativados[i].text = '';
          _contem715[i] = false;
          _contem716[i] = false;
        }

        atualizarSoma();

        // Só atualize os campos 715 e 716 se não houver correspondências restantes
        if (!_contem715.contains(true)) {
          _controller715.text = "";
        } else {
          _controller715.text = "715";
        }

        if (!_contem716.contains(true)) {
          _controller716.text = "";
        } else {
          _controller716.text = "716";
        }
      });
    }
  }

  @override
  void dispose() {
    for (int i = 2; i <= _controladores.controladoresPontosApoio.length; i++) {
      _controladores.disposePontoApoioControllers(i);
    }

    _controladoresPesagem.result1.dispose();
    _controladoresPesagem.result2.dispose();
    _controller715.dispose();
    _controller716.dispose();
    super.dispose();
  }

  void atualizarSoma() {
    double soma = 0.0;

    for (var controller in _controladoresDesativados) {
      var valorTexto = controller.text;
      double valor = valorTexto.isNotEmpty
          ? double.parse(valorTexto.replaceAll(",", "."))
          : 0.0;
      soma += valor;
    }

    _controladoresPesagem.result1.text =
        soma.toStringAsFixed(6).replaceAll(".", ",");
    _controladoresPesagem.result2.text =
        soma.toStringAsFixed(6).replaceAll(".", ",");
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
                      if (_isSelected) ...[
                        Flexible(
                          child: Column(
                            children: [
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao6,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao7,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao8,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao9,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao10,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 1),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(
                          _controladoresPesagem.result1, numPontosApoio >= 1),
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
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao12,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao13,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao14,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao15,
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
                                  _controladoresPesagem.aPesoPadrao16,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao17,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao18,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao19,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao20,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 2),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result2, numPontosApoio >= 2),
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
                                _controladoresPesagem.aPesoPadrao21,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao22,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao23,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao24,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao25,
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
                                  _controladoresPesagem.aPesoPadrao26,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao27,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao28,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao29,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao30,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 3),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result3, numPontosApoio >= 3),
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
                                _controladoresPesagem.aPesoPadrao31,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao32,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao33,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao34,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao35,
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
                                  _controladoresPesagem.aPesoPadrao36,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao37,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao38,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao39,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao40,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 4),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result4, numPontosApoio >= 4),
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
                                _controladoresPesagem.aPesoPadrao41,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao42,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao43,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao44,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao45,
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
                                  _controladoresPesagem.aPesoPadrao46,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao47,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao48,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao49,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao50,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 5),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result5, numPontosApoio >= 5),
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
                                _controladoresPesagem.aPesoPadrao51,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao52,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao53,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao54,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao55,
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
                                  _controladoresPesagem.aPesoPadrao56,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao57,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao58,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao59,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao60,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 6),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result6, numPontosApoio >= 6),
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
                                _controladoresPesagem.aPesoPadrao61,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao62,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao63,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao64,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao65,
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
                                  _controladoresPesagem.aPesoPadrao66,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao67,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao68,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao69,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao70,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 7),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result7, numPontosApoio >= 7),
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
                                _controladoresPesagem.aPesoPadrao71,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao72,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao73,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao74,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao75,
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
                                  _controladoresPesagem.aPesoPadrao76,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao77,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao78,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao79,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao80,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 8),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result8, numPontosApoio >= 8),
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
                                _controladoresPesagem.aPesoPadrao81,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao82,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao83,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao84,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao85,
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
                                  _controladoresPesagem.aPesoPadrao86,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao87,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao88,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao89,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao90,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 9),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result9, numPontosApoio >= 9),
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
                                _controladoresPesagem.aPesoPadrao91,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao92,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao93,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao94,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao95,
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
                                  _controladoresPesagem.aPesoPadrao96,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao97,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao98,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao99,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao100,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 10),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result10, numPontosApoio >= 10),
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
                                _controladoresPesagem.aPesoPadrao101,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao102,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao103,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao104,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao105,
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
                                  _controladoresPesagem.aPesoPadrao106,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao107,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao108,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao109,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao110,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 11),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result11, numPontosApoio >= 11),
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
                                _controladoresPesagem.aPesoPadrao111,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao112,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao113,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao114,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao115,
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
                                  _controladoresPesagem.aPesoPadrao116,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao117,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao118,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao119,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                              const SizedBox(height: 10),
                              pesoPad(
                                  _controladoresPesagem.aPesoPadrao120,
                                  [controladores.aPesoPadrao1F],
                                  numPontosApoio >= 12),
                            ],
                          ),
                        ),
                      ],
                      Container(width: 10),
                      caixaCustom(controladores.result12, numPontosApoio >= 12),
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
