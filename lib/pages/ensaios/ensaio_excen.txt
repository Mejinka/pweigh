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
  final Map<String, String> mapaGrande = {
    '20k': '20000,0000000',
    '40k': '40000,0000000',
    '60k': '60000,0000000',
    '80k': '80000,0000000',
    '100k': '100000,0000000',
    '120k': '120000,0000000',
    '140k': '140000,0000000',
    '160k': '160000,0000000',
    '180k': '180000,0000000',
    '200k': '200000,0000000',
    '220k': '220000,0000000',
    '240k': '240000,0000000',
    '260k': '260000,0000000',
    '280k': '280000,0000000',
    '300k': '300000,0000000',
    '320k': '320000,0000000',
    '340k': '340000,0000000',
    '360k': '360000,0000000',
    '380k': '380000,0000000',
    '400k': '400000,0000000',
    '420k': '420000,0000000',
    '440k': '440000,0000000',
    '460k': '460000,0000000',
    '480k': '480000,0000000',
    '500k': '500000,0000000',
    '520k': '520000,0000000',
    '540k': '540000,0000000',
    '560k': '560000,0000000',
    '580k': '580000,0000000',
    '600k': '600000,0000000',
    '620k': '620000,0000000',
    '640k': '640000,0000000',
    '660k': '660000,0000000',
    '680k': '680000,0000000',
    '700k': '700000,0000000',
    '720k': '720000,0000000',
    '740k': '740000,0000000',
    '760k': '760000,0000000',
    '780k': '780000,0000000',
    '800k': '800000,0000000',
    '820k': '820000,0000000',
    '840k': '840000,0000000',
    '860k': '860000,0000000',
    '880k': '880000,0000000',
    '900k': '900000,0000000',
    '920k': '920000,0000000',
    '940k': '940000,0000000',
    '960k': '960000,0000000',
    '980k': '980000,0000000',
    '1000k*': '1000000,0000000',
    '1020k': '1020000,0000000',
    '1040k': '1040000,0000000',
    '1060k': '1060000,0000000',
    '1080k': '1080000,0000000',
    '1100k': '1100000,0000000',
  };
  final Map<String, String> mapa529 = {
    '1000k': '1000000,0000000',
    '2000k': '2000000,0000000',
    '3000k': '3000000,0000000',
    '4000k': '4000000,0000000',
    '5000k': '5000000,0000000',
    '6000k': '6000000,0000000',
    '7000k': '7000000,0000000',
    '8000k': '8000000,0000000',
    '9000k': '9000000,0000000',
    '10000k': '10000000,0000000',
    '11000k': '11000000,0000000',
    '12000k': '12000000,0000000',
    '13000k': '13000000,0000000',
    '14000k': '14000000,0000000',
    '15000k': '15000000,0000000',
    '16000k': '16000000,0000000',
    '17000k': '17000000,0000000',
    '18000k': '18000000,0000000',
    '19000k': '19000000,0000000',
    '20000k': '20000000,0000000',
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
  final Map<String, String> mapa531 = {
    '2kg': '2000,0000000',
    '4kg': '4000,0000000',
    '6kg': '6000,0000000',
    '8kg': '8000,0000000',
    '10kg': '10000,0000000',
    '12kg': '12000,0000000',
    '14kg': '14000,0000000',
    '16kg': '16000,0000000',
    '18kg': '18000,0000000',
    '20kg': '20000,0000000',
  };
  final Map<String, String> mapa532 = {
    '5k1': '5000,0000000',
    '10k1': '	10000,0000000'
  };
  final Map<String, String> mapa533 = {
    '10k2': '10000,0000000',
    '20k2': '20000,0000000'
  };
  final Map<String, String> mapa633a641 = {
    '100k1': '100000,0000000',
    '200k2': '200000,0000000',
    '300k3': '300000,0000000',
    '400k4': '400000,0000000',
    '500k5': '500000,0000000',
    '600k6': '600000,0000000',
    '200k1': '200000,0000000',
    '400k2': '400000,0000000',
    '500k1': '500000,0000000',
  };
  final Map<String, String> mapa642a650 = {
    '25k1': '	25000,0000000',
    '50k2': '	50000,0000000',
    '50k1': '	50000,0000000',
    '100k2': '100000,0000000',
    '150k3': '150000,0000000',
    '1k100': '100000,0000000',
    '2k200': '200000,0000000',
    '3k300': '300000,0000000',
    '4k400': '400000,0000000',
  };
  final Map<String, String> mapa713 = {
    'M1m': '0,0010174',
    'M2m': '0,0020581',
    'M2mº': '0,0019306',
    'M5m': '0,0049552',
    'M10m': '0,0101426',
    'M20m': '0,0199365',
    'M20mº': '0,0199370',
    'M50m': '0,0498004',
    'M100m': '0,0999070',
    'M200m': '0,2001600',
    'M200mº': '0,2002190',
    'M500m': '0,4998830',
    'M1': '1,0003360',
    'M2': '2,0001850',
    'M2º': '2,0004740',
    'M5': '5,0007110',
    'M10': '10,0004830',
    'M20': '20,0009940',
    'M20º': '20,0001580',
    'M50': ' 50,0007530',
    'M100': '100,0014700',
    'M200': '200,0020100',
    'M200º': '200,0027300',
    'M500': '500,0017600',
    'M1k': '1000,0162000',
    'M2k': '2000,0253000',
    'M2kº': '2000,0238000',
    'M5k': '5000,0462000',
  };
  final Map<String, String> mapa714 = {
    '1mg': '0,0010014',
    '2mg': '0,0020396',
    '2mgº': '0,0020176',
    '5mg': '0,0049882',
    '10mg': '0,0100366',
    '20mg': '0,0200055',
    '20mgº': '0,0199585',
    '50mg': '0,0501179',
    '100mg': '0,1001880',
    '200mg': '0,2000680',
    '200mgº': '0,2001500',
    '500mg': '0,4998480',
    '1g': '1,0001780',
    '2g': '2,0002590',
    '2gº': '2,0003660',
    '5g': '5,0006530',
    '10g': '10,0006730',
    '20g': '20,0007400',
    '20gº': '20,0009610',
    '50g': '50,0007350',
    '100g': '100,0013600',
    '200g': '200,0028300',
    '200gº': '200,0022200',
    '500g': '500,0029600',
    '1000g': '1000,0106000',
    '2000g': '2000,0256000',
    '2000gº': '2000,0272000',
    '5000g': '5000,0600000',
  };

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
    var coluna4 = [
      _controladoresPesagem.aPesoPadrao16,
      _controladoresPesagem.aPesoPadrao17,
      _controladoresPesagem.aPesoPadrao18,
      _controladoresPesagem.aPesoPadrao19,
      _controladoresPesagem.aPesoPadrao20,
    ];
    var coluna5 = [
      _controladoresPesagem.aPesoPadrao21,
      _controladoresPesagem.aPesoPadrao22,
      _controladoresPesagem.aPesoPadrao23,
      _controladoresPesagem.aPesoPadrao24,
      _controladoresPesagem.aPesoPadrao25,
    ];
    var coluna6 = [
      _controladoresPesagem.aPesoPadrao26,
      _controladoresPesagem.aPesoPadrao27,
      _controladoresPesagem.aPesoPadrao28,
      _controladoresPesagem.aPesoPadrao29,
      _controladoresPesagem.aPesoPadrao30,
    ];
    var coluna7 = [
      _controladoresPesagem.aPesoPadrao31,
      _controladoresPesagem.aPesoPadrao32,
      _controladoresPesagem.aPesoPadrao33,
      _controladoresPesagem.aPesoPadrao34,
      _controladoresPesagem.aPesoPadrao35,
    ];
    var coluna8 = [
      _controladoresPesagem.aPesoPadrao36,
      _controladoresPesagem.aPesoPadrao37,
      _controladoresPesagem.aPesoPadrao38,
      _controladoresPesagem.aPesoPadrao39,
      _controladoresPesagem.aPesoPadrao40,
    ];
    var coluna9 = [
      _controladoresPesagem.aPesoPadrao41,
      _controladoresPesagem.aPesoPadrao42,
      _controladoresPesagem.aPesoPadrao43,
      _controladoresPesagem.aPesoPadrao44,
      _controladoresPesagem.aPesoPadrao45,
    ];
    var coluna10 = [
      _controladoresPesagem.aPesoPadrao46,
      _controladoresPesagem.aPesoPadrao47,
      _controladoresPesagem.aPesoPadrao48,
      _controladoresPesagem.aPesoPadrao49,
      _controladoresPesagem.aPesoPadrao50,
    ];
    var coluna11 = [
      _controladoresPesagem.aPesoPadrao51,
      _controladoresPesagem.aPesoPadrao52,
      _controladoresPesagem.aPesoPadrao53,
      _controladoresPesagem.aPesoPadrao54,
      _controladoresPesagem.aPesoPadrao55,
    ];
    var coluna12 = [
      _controladoresPesagem.aPesoPadrao56,
      _controladoresPesagem.aPesoPadrao57,
      _controladoresPesagem.aPesoPadrao58,
      _controladoresPesagem.aPesoPadrao59,
      _controladoresPesagem.aPesoPadrao60,
    ];
    bool temValor715Coluna1 = contemValorDoMapaNaColuna(mapa715, coluna1);
    bool temValor716Coluna1 = contemValorDoMapaNaColuna(mapa716, coluna1);
    bool temValor717Coluna1 = contemValorDoMapaNaColuna(mapa717, coluna1);
    bool temValorGrandeColuna1 = contemValorDoMapaNaColuna(mapaGrande, coluna1);
    bool temValor529Coluna1 = contemValorDoMapaNaColuna(mapa529, coluna1);
    bool temValor530Coluna1 = contemValorDoMapaNaColuna(mapa530, coluna1);
    bool temValor531Coluna1 = contemValorDoMapaNaColuna(mapa531, coluna1);
    bool temValor532Coluna1 = contemValorDoMapaNaColuna(mapa532, coluna1);
    bool temValor533Coluna1 = contemValorDoMapaNaColuna(mapa533, coluna1);
    bool temValor633a641Coluna1 =
        contemValorDoMapaNaColuna(mapa633a641, coluna1);
    bool temValor642a650Coluna1 =
        contemValorDoMapaNaColuna(mapa642a650, coluna1);
    bool temValor713Coluna1 = contemValorDoMapaNaColuna(mapa713, coluna1);
    bool temValor714Coluna1 = contemValorDoMapaNaColuna(mapa714, coluna1);
    /////////////////////////////////
    bool temValor715Coluna2 = contemValorDoMapaNaColuna(mapa715, coluna2);
    bool temValor716Coluna2 = contemValorDoMapaNaColuna(mapa716, coluna2);
    bool temValor717Coluna2 = contemValorDoMapaNaColuna(mapa717, coluna2);
    bool temValorGrandeColuna2 = contemValorDoMapaNaColuna(mapaGrande, coluna2);
    bool temValor529Coluna2 = contemValorDoMapaNaColuna(mapa529, coluna2);
    bool temValor530Coluna2 = contemValorDoMapaNaColuna(mapa530, coluna2);
    bool temValor531Coluna2 = contemValorDoMapaNaColuna(mapa531, coluna2);
    bool temValor532Coluna2 = contemValorDoMapaNaColuna(mapa532, coluna2);
    bool temValor533Coluna2 = contemValorDoMapaNaColuna(mapa533, coluna2);
    bool temValor633a641Coluna2 =
        contemValorDoMapaNaColuna(mapa633a641, coluna2);
    bool temValor642a650Coluna2 =
        contemValorDoMapaNaColuna(mapa642a650, coluna2);
    bool temValor713Coluna2 = contemValorDoMapaNaColuna(mapa713, coluna2);
    bool temValor714Coluna2 = contemValorDoMapaNaColuna(mapa714, coluna2);
    /////////////////////////////////
    bool temValor715Coluna3 = contemValorDoMapaNaColuna(mapa715, coluna3);
    bool temValor716Coluna3 = contemValorDoMapaNaColuna(mapa716, coluna3);
    bool temValor717Coluna3 = contemValorDoMapaNaColuna(mapa717, coluna3);
    bool temValorGrandeColuna3 = contemValorDoMapaNaColuna(mapaGrande, coluna3);
    bool temValor529Coluna3 = contemValorDoMapaNaColuna(mapa529, coluna3);
    bool temValor530Coluna3 = contemValorDoMapaNaColuna(mapa530, coluna3);
    bool temValor531Coluna3 = contemValorDoMapaNaColuna(mapa531, coluna3);
    bool temValor532Coluna3 = contemValorDoMapaNaColuna(mapa532, coluna3);
    bool temValor533Coluna3 = contemValorDoMapaNaColuna(mapa533, coluna3);
    bool temValor633a641Coluna3 =
        contemValorDoMapaNaColuna(mapa633a641, coluna3);
    bool temValor642a650Coluna3 =
        contemValorDoMapaNaColuna(mapa642a650, coluna3);
    bool temValor713Coluna3 = contemValorDoMapaNaColuna(mapa713, coluna3);
    bool temValor714Coluna3 = contemValorDoMapaNaColuna(mapa714, coluna3);
    /////////////////////////////////
    bool temValor715Coluna4 = contemValorDoMapaNaColuna(mapa715, coluna4);
    bool temValor716Coluna4 = contemValorDoMapaNaColuna(mapa716, coluna4);
    bool temValor717Coluna4 = contemValorDoMapaNaColuna(mapa717, coluna4);
    bool temValorGrandeColuna4 = contemValorDoMapaNaColuna(mapaGrande, coluna4);
    bool temValor529Coluna4 = contemValorDoMapaNaColuna(mapa529, coluna4);
    bool temValor530Coluna4 = contemValorDoMapaNaColuna(mapa530, coluna4);
    bool temValor531Coluna4 = contemValorDoMapaNaColuna(mapa531, coluna4);
    bool temValor532Coluna4 = contemValorDoMapaNaColuna(mapa532, coluna4);
    bool temValor533Coluna4 = contemValorDoMapaNaColuna(mapa533, coluna4);
    bool temValor633a641Coluna4 =
        contemValorDoMapaNaColuna(mapa633a641, coluna4);
    bool temValor642a650Coluna4 =
        contemValorDoMapaNaColuna(mapa642a650, coluna4);
    bool temValor713Coluna4 = contemValorDoMapaNaColuna(mapa713, coluna4);
    bool temValor714Coluna4 = contemValorDoMapaNaColuna(mapa714, coluna4);
    /////////////////////////////////
    bool temValor715Coluna5 = contemValorDoMapaNaColuna(mapa715, coluna5);
    bool temValor716Coluna5 = contemValorDoMapaNaColuna(mapa716, coluna5);
    bool temValor717Coluna5 = contemValorDoMapaNaColuna(mapa717, coluna5);
    bool temValorGrandeColuna5 = contemValorDoMapaNaColuna(mapaGrande, coluna5);
    bool temValor529Coluna5 = contemValorDoMapaNaColuna(mapa529, coluna5);
    bool temValor530Coluna5 = contemValorDoMapaNaColuna(mapa530, coluna5);
    bool temValor531Coluna5 = contemValorDoMapaNaColuna(mapa531, coluna5);
    bool temValor532Coluna5 = contemValorDoMapaNaColuna(mapa532, coluna5);
    bool temValor533Coluna5 = contemValorDoMapaNaColuna(mapa533, coluna5);
    bool temValor633a641Coluna5 =
        contemValorDoMapaNaColuna(mapa633a641, coluna5);
    bool temValor642a650Coluna5 =
        contemValorDoMapaNaColuna(mapa642a650, coluna5);
    bool temValor713Coluna5 = contemValorDoMapaNaColuna(mapa713, coluna5);
    bool temValor714Coluna5 = contemValorDoMapaNaColuna(mapa714, coluna5);
    /////////////////////////////////
    bool temValor715Coluna6 = contemValorDoMapaNaColuna(mapa715, coluna6);
    bool temValor716Coluna6 = contemValorDoMapaNaColuna(mapa716, coluna6);
    bool temValor717Coluna6 = contemValorDoMapaNaColuna(mapa717, coluna6);
    bool temValorGrandeColuna6 = contemValorDoMapaNaColuna(mapaGrande, coluna6);
    bool temValor529Coluna6 = contemValorDoMapaNaColuna(mapa529, coluna6);
    bool temValor530Coluna6 = contemValorDoMapaNaColuna(mapa530, coluna6);
    bool temValor531Coluna6 = contemValorDoMapaNaColuna(mapa531, coluna6);
    bool temValor532Coluna6 = contemValorDoMapaNaColuna(mapa532, coluna6);
    bool temValor533Coluna6 = contemValorDoMapaNaColuna(mapa533, coluna6);
    bool temValor633a641Coluna6 =
        contemValorDoMapaNaColuna(mapa633a641, coluna6);
    bool temValor642a650Coluna6 =
        contemValorDoMapaNaColuna(mapa642a650, coluna6);
    bool temValor713Coluna6 = contemValorDoMapaNaColuna(mapa713, coluna6);
    bool temValor714Coluna6 = contemValorDoMapaNaColuna(mapa714, coluna6);
    /////////////////////////////////
    bool temValor715Coluna7 = contemValorDoMapaNaColuna(mapa715, coluna7);
    bool temValor716Coluna7 = contemValorDoMapaNaColuna(mapa716, coluna7);
    bool temValor717Coluna7 = contemValorDoMapaNaColuna(mapa717, coluna7);
    bool temValorGrandeColuna7 = contemValorDoMapaNaColuna(mapaGrande, coluna7);
    bool temValor529Coluna7 = contemValorDoMapaNaColuna(mapa529, coluna7);
    bool temValor530Coluna7 = contemValorDoMapaNaColuna(mapa530, coluna7);
    bool temValor531Coluna7 = contemValorDoMapaNaColuna(mapa531, coluna7);
    bool temValor532Coluna7 = contemValorDoMapaNaColuna(mapa532, coluna7);
    bool temValor533Coluna7 = contemValorDoMapaNaColuna(mapa533, coluna7);
    bool temValor633a641Coluna7 =
        contemValorDoMapaNaColuna(mapa633a641, coluna7);
    bool temValor642a650Coluna7 =
        contemValorDoMapaNaColuna(mapa642a650, coluna7);
    bool temValor713Coluna7 = contemValorDoMapaNaColuna(mapa713, coluna7);
    bool temValor714Coluna7 = contemValorDoMapaNaColuna(mapa714, coluna7);
    /////////////////////////////////
    bool temValor715Coluna8 = contemValorDoMapaNaColuna(mapa715, coluna8);
    bool temValor716Coluna8 = contemValorDoMapaNaColuna(mapa716, coluna8);
    bool temValor717Coluna8 = contemValorDoMapaNaColuna(mapa717, coluna8);
    bool temValorGrandeColuna8 = contemValorDoMapaNaColuna(mapaGrande, coluna8);
    bool temValor529Coluna8 = contemValorDoMapaNaColuna(mapa529, coluna8);
    bool temValor530Coluna8 = contemValorDoMapaNaColuna(mapa530, coluna8);
    bool temValor531Coluna8 = contemValorDoMapaNaColuna(mapa531, coluna8);
    bool temValor532Coluna8 = contemValorDoMapaNaColuna(mapa532, coluna8);
    bool temValor533Coluna8 = contemValorDoMapaNaColuna(mapa533, coluna8);
    bool temValor633a641Coluna8 =
        contemValorDoMapaNaColuna(mapa633a641, coluna8);
    bool temValor642a650Coluna8 =
        contemValorDoMapaNaColuna(mapa642a650, coluna8);
    bool temValor713Coluna8 = contemValorDoMapaNaColuna(mapa713, coluna8);
    bool temValor714Coluna8 = contemValorDoMapaNaColuna(mapa714, coluna8);
    /////////////////////////////////
    bool temValor715Coluna9 = contemValorDoMapaNaColuna(mapa715, coluna9);
    bool temValor716Coluna9 = contemValorDoMapaNaColuna(mapa716, coluna9);
    bool temValor717Coluna9 = contemValorDoMapaNaColuna(mapa717, coluna9);
    bool temValorGrandeColuna9 = contemValorDoMapaNaColuna(mapaGrande, coluna9);
    bool temValor529Coluna9 = contemValorDoMapaNaColuna(mapa529, coluna9);
    bool temValor530Coluna9 = contemValorDoMapaNaColuna(mapa530, coluna9);
    bool temValor531Coluna9 = contemValorDoMapaNaColuna(mapa531, coluna9);
    bool temValor532Coluna9 = contemValorDoMapaNaColuna(mapa532, coluna9);
    bool temValor533Coluna9 = contemValorDoMapaNaColuna(mapa533, coluna9);
    bool temValor633a641Coluna9 =
        contemValorDoMapaNaColuna(mapa633a641, coluna9);
    bool temValor642a650Coluna9 =
        contemValorDoMapaNaColuna(mapa642a650, coluna9);
    bool temValor713Coluna9 = contemValorDoMapaNaColuna(mapa713, coluna9);
    bool temValor714Coluna9 = contemValorDoMapaNaColuna(mapa714, coluna9);
    /////////////////////////////////
    bool temValor715Coluna10 = contemValorDoMapaNaColuna(mapa715, coluna10);
    bool temValor716Coluna10 = contemValorDoMapaNaColuna(mapa716, coluna10);
    bool temValor717Coluna10 = contemValorDoMapaNaColuna(mapa717, coluna10);
    bool temValorGrandeColuna10 =
        contemValorDoMapaNaColuna(mapaGrande, coluna10);
    bool temValor529Coluna10 = contemValorDoMapaNaColuna(mapa529, coluna10);
    bool temValor530Coluna10 = contemValorDoMapaNaColuna(mapa530, coluna10);
    bool temValor531Coluna10 = contemValorDoMapaNaColuna(mapa531, coluna10);
    bool temValor532Coluna10 = contemValorDoMapaNaColuna(mapa532, coluna10);
    bool temValor533Coluna10 = contemValorDoMapaNaColuna(mapa533, coluna10);
    bool temValor633a641Coluna10 =
        contemValorDoMapaNaColuna(mapa633a641, coluna10);
    bool temValor642a650Coluna10 =
        contemValorDoMapaNaColuna(mapa642a650, coluna10);
    bool temValor713Coluna10 = contemValorDoMapaNaColuna(mapa713, coluna10);
    bool temValor714Coluna10 = contemValorDoMapaNaColuna(mapa714, coluna10);
    /////////////////////////////////
    bool temValor715Coluna11 = contemValorDoMapaNaColuna(mapa715, coluna11);
    bool temValor716Coluna11 = contemValorDoMapaNaColuna(mapa716, coluna11);
    bool temValor717Coluna11 = contemValorDoMapaNaColuna(mapa717, coluna11);
    bool temValorGrandeColuna11 =
        contemValorDoMapaNaColuna(mapaGrande, coluna11);
    bool temValor529Coluna11 = contemValorDoMapaNaColuna(mapa529, coluna11);
    bool temValor530Coluna11 = contemValorDoMapaNaColuna(mapa530, coluna11);
    bool temValor531Coluna11 = contemValorDoMapaNaColuna(mapa531, coluna11);
    bool temValor532Coluna11 = contemValorDoMapaNaColuna(mapa532, coluna11);
    bool temValor533Coluna11 = contemValorDoMapaNaColuna(mapa533, coluna11);
    bool temValor633a641Coluna11 =
        contemValorDoMapaNaColuna(mapa633a641, coluna11);
    bool temValor642a650Coluna11 =
        contemValorDoMapaNaColuna(mapa642a650, coluna11);
    bool temValor713Coluna11 = contemValorDoMapaNaColuna(mapa713, coluna11);
    bool temValor714Coluna11 = contemValorDoMapaNaColuna(mapa714, coluna11);
    /////////////////////////////////
    bool temValor715Coluna12 = contemValorDoMapaNaColuna(mapa715, coluna12);
    bool temValor716Coluna12 = contemValorDoMapaNaColuna(mapa716, coluna12);
    bool temValor717Coluna12 = contemValorDoMapaNaColuna(mapa717, coluna12);
    bool temValorGrandeColuna12 =
        contemValorDoMapaNaColuna(mapaGrande, coluna12);
    bool temValor529Coluna12 = contemValorDoMapaNaColuna(mapa529, coluna12);
    bool temValor530Coluna12 = contemValorDoMapaNaColuna(mapa530, coluna12);
    bool temValor531Coluna12 = contemValorDoMapaNaColuna(mapa531, coluna12);
    bool temValor532Coluna12 = contemValorDoMapaNaColuna(mapa532, coluna12);
    bool temValor533Coluna12 = contemValorDoMapaNaColuna(mapa533, coluna12);
    bool temValor633a641Coluna12 =
        contemValorDoMapaNaColuna(mapa633a641, coluna12);
    bool temValor642a650Coluna12 =
        contemValorDoMapaNaColuna(mapa642a650, coluna12);
    bool temValor713Coluna12 = contemValorDoMapaNaColuna(mapa713, coluna12);
    bool temValor714Coluna12 = contemValorDoMapaNaColuna(mapa714, coluna12);

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
    if (temValorGrandeColuna1) {
      _controladoresPesagem.mapa4.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa4.text = "";
    }
    if (temValor529Coluna1) {
      _controladoresPesagem.mapa5.text = "529";
    } else {
      _controladoresPesagem.mapa5.text = "";
    }
    if (temValor530Coluna1) {
      _controladoresPesagem.mapa6.text = "530";
    } else {
      _controladoresPesagem.mapa6.text = "";
    }
    if (temValor531Coluna1) {
      _controladoresPesagem.mapa7.text = "531";
    } else {
      _controladoresPesagem.mapa7.text = "";
    }
    if (temValor532Coluna1) {
      _controladoresPesagem.mapa8.text = "532";
    } else {
      _controladoresPesagem.mapa8.text = "";
    }
    if (temValor533Coluna1) {
      _controladoresPesagem.mapa9.text = "533";
    } else {
      _controladoresPesagem.mapa9.text = "";
    }
    if (temValor633a641Coluna1) {
      _controladoresPesagem.mapa10.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa10.text = "";
    }
    if (temValor642a650Coluna1) {
      _controladoresPesagem.mapa11.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa11.text = "";
    }
    if (temValor713Coluna1) {
      _controladoresPesagem.mapa12.text = "713";
    } else {
      _controladoresPesagem.mapa12.text = "";
    }
    if (temValor714Coluna1) {
      _controladoresPesagem.mapa13.text = "714";
    } else {
      _controladoresPesagem.mapa13.text = "";
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
    if (temValorGrandeColuna2) {
      _controladoresPesagem.mapa17.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa17.text = "";
    }
    if (temValor529Coluna2) {
      _controladoresPesagem.mapa18.text = "529";
    } else {
      _controladoresPesagem.mapa18.text = "";
    }
    if (temValor530Coluna2) {
      _controladoresPesagem.mapa19.text = "530";
    } else {
      _controladoresPesagem.mapa19.text = "";
    }
    if (temValor531Coluna2) {
      _controladoresPesagem.mapa20.text = "531";
    } else {
      _controladoresPesagem.mapa20.text = "";
    }
    if (temValor532Coluna2) {
      _controladoresPesagem.mapa21.text = "532";
    } else {
      _controladoresPesagem.mapa21.text = "";
    }
    if (temValor533Coluna2) {
      _controladoresPesagem.mapa22.text = "533";
    } else {
      _controladoresPesagem.mapa22.text = "";
    }
    if (temValor633a641Coluna2) {
      _controladoresPesagem.mapa23.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa23.text = "";
    }
    if (temValor642a650Coluna2) {
      _controladoresPesagem.mapa24.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa24.text = "";
    }
    if (temValor713Coluna2) {
      _controladoresPesagem.mapa25.text = "713";
    } else {
      _controladoresPesagem.mapa25.text = "";
    }
    if (temValor714Coluna2) {
      _controladoresPesagem.mapa26.text = "714";
    } else {
      _controladoresPesagem.mapa26.text = "";
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
    if (temValorGrandeColuna3) {
      _controladoresPesagem.mapa30.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa30.text = "";
    }
    if (temValor529Coluna3) {
      _controladoresPesagem.mapa31.text = "529";
    } else {
      _controladoresPesagem.mapa31.text = "";
    }
    if (temValor530Coluna3) {
      _controladoresPesagem.mapa32.text = "530";
    } else {
      _controladoresPesagem.mapa32.text = "";
    }
    if (temValor531Coluna3) {
      _controladoresPesagem.mapa33.text = "531";
    } else {
      _controladoresPesagem.mapa33.text = "";
    }
    if (temValor532Coluna3) {
      _controladoresPesagem.mapa34.text = "532";
    } else {
      _controladoresPesagem.mapa34.text = "";
    }
    if (temValor533Coluna3) {
      _controladoresPesagem.mapa35.text = "533";
    } else {
      _controladoresPesagem.mapa35.text = "";
    }
    if (temValor633a641Coluna3) {
      _controladoresPesagem.mapa36.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa36.text = "";
    }
    if (temValor642a650Coluna3) {
      _controladoresPesagem.mapa37.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa37.text = "";
    }
    if (temValor713Coluna3) {
      _controladoresPesagem.mapa38.text = "713";
    } else {
      _controladoresPesagem.mapa38.text = "";
    }
    if (temValor714Coluna3) {
      _controladoresPesagem.mapa39.text = "714";
    } else {
      _controladoresPesagem.mapa39.text = "";
    }
////////////////////
    if (temValor715Coluna4) {
      _controladoresPesagem.mapa40.text = "715";
    } else {
      _controladoresPesagem.mapa40.text = "";
    }

    if (temValor716Coluna4) {
      _controladoresPesagem.mapa41.text = "716";
    } else {
      _controladoresPesagem.mapa41.text = "";
    }
    if (temValor717Coluna4) {
      _controladoresPesagem.mapa42.text = "717";
    } else {
      _controladoresPesagem.mapa42.text = "";
    }
    if (temValorGrandeColuna4) {
      _controladoresPesagem.mapa43.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa43.text = "";
    }
    if (temValor529Coluna4) {
      _controladoresPesagem.mapa44.text = "529";
    } else {
      _controladoresPesagem.mapa44.text = "";
    }
    if (temValor530Coluna4) {
      _controladoresPesagem.mapa45.text = "530";
    } else {
      _controladoresPesagem.mapa45.text = "";
    }
    if (temValor531Coluna4) {
      _controladoresPesagem.mapa46.text = "531";
    } else {
      _controladoresPesagem.mapa46.text = "";
    }
    if (temValor532Coluna4) {
      _controladoresPesagem.mapa47.text = "532";
    } else {
      _controladoresPesagem.mapa47.text = "";
    }
    if (temValor533Coluna4) {
      _controladoresPesagem.mapa48.text = "533";
    } else {
      _controladoresPesagem.mapa48.text = "";
    }
    if (temValor633a641Coluna4) {
      _controladoresPesagem.mapa49.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa49.text = "";
    }
    if (temValor642a650Coluna4) {
      _controladoresPesagem.mapa50.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa50.text = "";
    }
    if (temValor713Coluna4) {
      _controladoresPesagem.mapa51.text = "713";
    } else {
      _controladoresPesagem.mapa51.text = "";
    }
    if (temValor714Coluna4) {
      _controladoresPesagem.mapa52.text = "714";
    } else {
      _controladoresPesagem.mapa52.text = "";
    }
////////////////////
    if (temValor715Coluna5) {
      _controladoresPesagem.mapa53.text = "715";
    } else {
      _controladoresPesagem.mapa53.text = "";
    }

    if (temValor716Coluna5) {
      _controladoresPesagem.mapa54.text = "716";
    } else {
      _controladoresPesagem.mapa54.text = "";
    }
    if (temValor717Coluna5) {
      _controladoresPesagem.mapa55.text = "717";
    } else {
      _controladoresPesagem.mapa55.text = "";
    }
    if (temValorGrandeColuna5) {
      _controladoresPesagem.mapa56.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa56.text = "";
    }
    if (temValor529Coluna5) {
      _controladoresPesagem.mapa57.text = "529";
    } else {
      _controladoresPesagem.mapa57.text = "";
    }
    if (temValor530Coluna5) {
      _controladoresPesagem.mapa58.text = "530";
    } else {
      _controladoresPesagem.mapa58.text = "";
    }
    if (temValor531Coluna5) {
      _controladoresPesagem.mapa59.text = "531";
    } else {
      _controladoresPesagem.mapa59.text = "";
    }
    if (temValor532Coluna5) {
      _controladoresPesagem.mapa60.text = "532";
    } else {
      _controladoresPesagem.mapa60.text = "";
    }
    if (temValor533Coluna5) {
      _controladoresPesagem.mapa61.text = "533";
    } else {
      _controladoresPesagem.mapa61.text = "";
    }
    if (temValor633a641Coluna5) {
      _controladoresPesagem.mapa62.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa62.text = "";
    }
    if (temValor642a650Coluna5) {
      _controladoresPesagem.mapa63.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa63.text = "";
    }
    if (temValor713Coluna5) {
      _controladoresPesagem.mapa64.text = "713";
    } else {
      _controladoresPesagem.mapa64.text = "";
    }
    if (temValor714Coluna5) {
      _controladoresPesagem.mapa65.text = "714";
    } else {
      _controladoresPesagem.mapa65.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna6) {
      _controladoresPesagem.mapa66.text = "715";
    } else {
      _controladoresPesagem.mapa66.text = "";
    }

    if (temValor716Coluna6) {
      _controladoresPesagem.mapa67.text = "716";
    } else {
      _controladoresPesagem.mapa67.text = "";
    }
    if (temValor717Coluna6) {
      _controladoresPesagem.mapa68.text = "717";
    } else {
      _controladoresPesagem.mapa68.text = "";
    }
    if (temValorGrandeColuna6) {
      _controladoresPesagem.mapa69.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa69.text = "";
    }
    if (temValor529Coluna6) {
      _controladoresPesagem.mapa70.text = "529";
    } else {
      _controladoresPesagem.mapa70.text = "";
    }
    if (temValor530Coluna6) {
      _controladoresPesagem.mapa71.text = "530";
    } else {
      _controladoresPesagem.mapa71.text = "";
    }
    if (temValor531Coluna6) {
      _controladoresPesagem.mapa72.text = "531";
    } else {
      _controladoresPesagem.mapa72.text = "";
    }
    if (temValor532Coluna6) {
      _controladoresPesagem.mapa73.text = "532";
    } else {
      _controladoresPesagem.mapa73.text = "";
    }
    if (temValor533Coluna6) {
      _controladoresPesagem.mapa74.text = "533";
    } else {
      _controladoresPesagem.mapa74.text = "";
    }
    if (temValor633a641Coluna6) {
      _controladoresPesagem.mapa75.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa75.text = "";
    }
    if (temValor642a650Coluna6) {
      _controladoresPesagem.mapa76.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa76.text = "";
    }
    if (temValor713Coluna6) {
      _controladoresPesagem.mapa77.text = "713";
    } else {
      _controladoresPesagem.mapa77.text = "";
    }
    if (temValor714Coluna6) {
      _controladoresPesagem.mapa78.text = "714";
    } else {
      _controladoresPesagem.mapa78.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna7) {
      _controladoresPesagem.mapa79.text = "715";
    } else {
      _controladoresPesagem.mapa79.text = "";
    }

    if (temValor716Coluna7) {
      _controladoresPesagem.mapa80.text = "716";
    } else {
      _controladoresPesagem.mapa80.text = "";
    }
    if (temValor717Coluna7) {
      _controladoresPesagem.mapa81.text = "717";
    } else {
      _controladoresPesagem.mapa81.text = "";
    }
    if (temValorGrandeColuna7) {
      _controladoresPesagem.mapa82.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa82.text = "";
    }
    if (temValor529Coluna7) {
      _controladoresPesagem.mapa83.text = "529";
    } else {
      _controladoresPesagem.mapa83.text = "";
    }
    if (temValor530Coluna7) {
      _controladoresPesagem.mapa84.text = "530";
    } else {
      _controladoresPesagem.mapa84.text = "";
    }
    if (temValor531Coluna7) {
      _controladoresPesagem.mapa85.text = "531";
    } else {
      _controladoresPesagem.mapa85.text = "";
    }
    if (temValor532Coluna7) {
      _controladoresPesagem.mapa86.text = "532";
    } else {
      _controladoresPesagem.mapa86.text = "";
    }
    if (temValor533Coluna7) {
      _controladoresPesagem.mapa87.text = "533";
    } else {
      _controladoresPesagem.mapa87.text = "";
    }
    if (temValor633a641Coluna7) {
      _controladoresPesagem.mapa88.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa88.text = "";
    }
    if (temValor642a650Coluna7) {
      _controladoresPesagem.mapa89.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa89.text = "";
    }
    if (temValor713Coluna7) {
      _controladoresPesagem.mapa90.text = "713";
    } else {
      _controladoresPesagem.mapa90.text = "";
    }
    if (temValor714Coluna7) {
      _controladoresPesagem.mapa91.text = "714";
    } else {
      _controladoresPesagem.mapa91.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna8) {
      _controladoresPesagem.mapa92.text = "715";
    } else {
      _controladoresPesagem.mapa92.text = "";
    }

    if (temValor716Coluna8) {
      _controladoresPesagem.mapa93.text = "716";
    } else {
      _controladoresPesagem.mapa93.text = "";
    }
    if (temValor717Coluna8) {
      _controladoresPesagem.mapa94.text = "717";
    } else {
      _controladoresPesagem.mapa94.text = "";
    }
    if (temValorGrandeColuna8) {
      _controladoresPesagem.mapa95.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa95.text = "";
    }
    if (temValor529Coluna8) {
      _controladoresPesagem.mapa96.text = "529";
    } else {
      _controladoresPesagem.mapa96.text = "";
    }
    if (temValor530Coluna8) {
      _controladoresPesagem.mapa97.text = "530";
    } else {
      _controladoresPesagem.mapa97.text = "";
    }
    if (temValor531Coluna8) {
      _controladoresPesagem.mapa98.text = "531";
    } else {
      _controladoresPesagem.mapa98.text = "";
    }
    if (temValor532Coluna8) {
      _controladoresPesagem.mapa99.text = "532";
    } else {
      _controladoresPesagem.mapa99.text = "";
    }
    if (temValor533Coluna8) {
      _controladoresPesagem.mapa100.text = "533";
    } else {
      _controladoresPesagem.mapa100.text = "";
    }
    if (temValor633a641Coluna8) {
      _controladoresPesagem.mapa101.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa101.text = "";
    }
    if (temValor642a650Coluna8) {
      _controladoresPesagem.mapa102.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa102.text = "";
    }
    if (temValor713Coluna8) {
      _controladoresPesagem.mapa103.text = "713";
    } else {
      _controladoresPesagem.mapa103.text = "";
    }
    if (temValor714Coluna8) {
      _controladoresPesagem.mapa104.text = "714";
    } else {
      _controladoresPesagem.mapa104.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna9) {
      _controladoresPesagem.mapa105.text = "715";
    } else {
      _controladoresPesagem.mapa105.text = "";
    }

    if (temValor716Coluna9) {
      _controladoresPesagem.mapa106.text = "716";
    } else {
      _controladoresPesagem.mapa106.text = "";
    }
    if (temValor717Coluna9) {
      _controladoresPesagem.mapa107.text = "717";
    } else {
      _controladoresPesagem.mapa107.text = "";
    }
    if (temValorGrandeColuna9) {
      _controladoresPesagem.mapa108.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa108.text = "";
    }
    if (temValor529Coluna9) {
      _controladoresPesagem.mapa109.text = "529";
    } else {
      _controladoresPesagem.mapa109.text = "";
    }
    if (temValor530Coluna9) {
      _controladoresPesagem.mapa110.text = "530";
    } else {
      _controladoresPesagem.mapa110.text = "";
    }
    if (temValor531Coluna9) {
      _controladoresPesagem.mapa111.text = "531";
    } else {
      _controladoresPesagem.mapa111.text = "";
    }
    if (temValor532Coluna9) {
      _controladoresPesagem.mapa112.text = "532";
    } else {
      _controladoresPesagem.mapa112.text = "";
    }
    if (temValor533Coluna9) {
      _controladoresPesagem.mapa113.text = "533";
    } else {
      _controladoresPesagem.mapa113.text = "";
    }
    if (temValor633a641Coluna9) {
      _controladoresPesagem.mapa114.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa114.text = "";
    }
    if (temValor642a650Coluna9) {
      _controladoresPesagem.mapa115.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa115.text = "";
    }
    if (temValor713Coluna9) {
      _controladoresPesagem.mapa116.text = "713";
    } else {
      _controladoresPesagem.mapa116.text = "";
    }
    if (temValor714Coluna9) {
      _controladoresPesagem.mapa117.text = "714";
    } else {
      _controladoresPesagem.mapa117.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna10) {
      _controladoresPesagem.mapa118.text = "715";
    } else {
      _controladoresPesagem.mapa118.text = "";
    }

    if (temValor716Coluna10) {
      _controladoresPesagem.mapa119.text = "716";
    } else {
      _controladoresPesagem.mapa119.text = "";
    }
    if (temValor717Coluna10) {
      _controladoresPesagem.mapa120.text = "717";
    } else {
      _controladoresPesagem.mapa120.text = "";
    }
    if (temValorGrandeColuna10) {
      _controladoresPesagem.mapa121.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa121.text = "";
    }
    if (temValor529Coluna10) {
      _controladoresPesagem.mapa122.text = "529";
    } else {
      _controladoresPesagem.mapa122.text = "";
    }
    if (temValor530Coluna10) {
      _controladoresPesagem.mapa123.text = "530";
    } else {
      _controladoresPesagem.mapa123.text = "";
    }
    if (temValor531Coluna10) {
      _controladoresPesagem.mapa124.text = "531";
    } else {
      _controladoresPesagem.mapa124.text = "";
    }
    if (temValor532Coluna10) {
      _controladoresPesagem.mapa125.text = "532";
    } else {
      _controladoresPesagem.mapa125.text = "";
    }
    if (temValor533Coluna10) {
      _controladoresPesagem.mapa126.text = "533";
    } else {
      _controladoresPesagem.mapa126.text = "";
    }
    if (temValor633a641Coluna10) {
      _controladoresPesagem.mapa127.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa127.text = "";
    }
    if (temValor642a650Coluna10) {
      _controladoresPesagem.mapa128.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa128.text = "";
    }
    if (temValor713Coluna10) {
      _controladoresPesagem.mapa129.text = "713";
    } else {
      _controladoresPesagem.mapa129.text = "";
    }
    if (temValor714Coluna10) {
      _controladoresPesagem.mapa130.text = "714";
    } else {
      _controladoresPesagem.mapa130.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna11) {
      _controladoresPesagem.mapa131.text = "715";
    } else {
      _controladoresPesagem.mapa131.text = "";
    }

    if (temValor716Coluna11) {
      _controladoresPesagem.mapa132.text = "716";
    } else {
      _controladoresPesagem.mapa132.text = "";
    }
    if (temValor717Coluna11) {
      _controladoresPesagem.mapa133.text = "717";
    } else {
      _controladoresPesagem.mapa133.text = "";
    }
    if (temValorGrandeColuna11) {
      _controladoresPesagem.mapa134.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa134.text = "";
    }
    if (temValor529Coluna11) {
      _controladoresPesagem.mapa135.text = "529";
    } else {
      _controladoresPesagem.mapa135.text = "";
    }
    if (temValor530Coluna11) {
      _controladoresPesagem.mapa136.text = "530";
    } else {
      _controladoresPesagem.mapa136.text = "";
    }
    if (temValor531Coluna11) {
      _controladoresPesagem.mapa137.text = "531";
    } else {
      _controladoresPesagem.mapa137.text = "";
    }
    if (temValor532Coluna11) {
      _controladoresPesagem.mapa138.text = "532";
    } else {
      _controladoresPesagem.mapa138.text = "";
    }
    if (temValor533Coluna11) {
      _controladoresPesagem.mapa139.text = "533";
    } else {
      _controladoresPesagem.mapa139.text = "";
    }
    if (temValor633a641Coluna11) {
      _controladoresPesagem.mapa140.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa140.text = "";
    }
    if (temValor642a650Coluna11) {
      _controladoresPesagem.mapa141.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa141.text = "";
    }
    if (temValor713Coluna11) {
      _controladoresPesagem.mapa142.text = "713";
    } else {
      _controladoresPesagem.mapa142.text = "";
    }
    if (temValor714Coluna11) {
      _controladoresPesagem.mapa143.text = "714";
    } else {
      _controladoresPesagem.mapa143.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna12) {
      _controladoresPesagem.mapa144.text = "715";
    } else {
      _controladoresPesagem.mapa144.text = "";
    }

    if (temValor716Coluna12) {
      _controladoresPesagem.mapa145.text = "716";
    } else {
      _controladoresPesagem.mapa145.text = "";
    }
    if (temValor717Coluna12) {
      _controladoresPesagem.mapa146.text = "717";
    } else {
      _controladoresPesagem.mapa146.text = "";
    }
    if (temValorGrandeColuna12) {
      _controladoresPesagem.mapa147.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa147.text = "";
    }
    if (temValor529Coluna12) {
      _controladoresPesagem.mapa148.text = "529";
    } else {
      _controladoresPesagem.mapa148.text = "";
    }
    if (temValor530Coluna12) {
      _controladoresPesagem.mapa149.text = "530";
    } else {
      _controladoresPesagem.mapa149.text = "";
    }
    if (temValor531Coluna12) {
      _controladoresPesagem.mapa150.text = "531";
    } else {
      _controladoresPesagem.mapa150.text = "";
    }
    if (temValor532Coluna12) {
      _controladoresPesagem.mapa151.text = "532";
    } else {
      _controladoresPesagem.mapa151.text = "";
    }
    if (temValor533Coluna12) {
      _controladoresPesagem.mapa152.text = "533";
    } else {
      _controladoresPesagem.mapa152.text = "";
    }
    if (temValor633a641Coluna12) {
      _controladoresPesagem.mapa153.text = "633 a 641";
    } else {
      _controladoresPesagem.mapa153.text = "";
    }
    if (temValor642a650Coluna12) {
      _controladoresPesagem.mapa154.text = "642 a 650";
    } else {
      _controladoresPesagem.mapa154.text = "";
    }
    if (temValor713Coluna12) {
      _controladoresPesagem.mapa155.text = "713";
    } else {
      _controladoresPesagem.mapa155.text = "";
    }
    if (temValor714Coluna12) {
      _controladoresPesagem.mapa156.text = "714";
    } else {
      _controladoresPesagem.mapa156.text = "";
    }
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
    double somaColuna4 = 0.0;
    double somaColuna5 = 0.0;
    double somaColuna6 = 0.0;
    double somaColuna7 = 0.0;
    double somaColuna8 = 0.0;
    double somaColuna9 = 0.0;
    double somaColuna10 = 0.0;
    double somaColuna11 = 0.0;
    double somaColuna12 = 0.0;

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
    var coluna4 = [
      _controladoresPesagem.aPesoPadrao16,
      _controladoresPesagem.aPesoPadrao17,
      _controladoresPesagem.aPesoPadrao18,
      _controladoresPesagem.aPesoPadrao19,
      _controladoresPesagem.aPesoPadrao20,
    ];
    var coluna5 = [
      _controladoresPesagem.aPesoPadrao21,
      _controladoresPesagem.aPesoPadrao22,
      _controladoresPesagem.aPesoPadrao23,
      _controladoresPesagem.aPesoPadrao24,
      _controladoresPesagem.aPesoPadrao25,
    ];
    var coluna6 = [
      _controladoresPesagem.aPesoPadrao26,
      _controladoresPesagem.aPesoPadrao27,
      _controladoresPesagem.aPesoPadrao28,
      _controladoresPesagem.aPesoPadrao29,
      _controladoresPesagem.aPesoPadrao30,
    ];
    var coluna7 = [
      _controladoresPesagem.aPesoPadrao31,
      _controladoresPesagem.aPesoPadrao32,
      _controladoresPesagem.aPesoPadrao33,
      _controladoresPesagem.aPesoPadrao34,
      _controladoresPesagem.aPesoPadrao35,
    ];

    var coluna8 = [
      _controladoresPesagem.aPesoPadrao36,
      _controladoresPesagem.aPesoPadrao37,
      _controladoresPesagem.aPesoPadrao38,
      _controladoresPesagem.aPesoPadrao39,
      _controladoresPesagem.aPesoPadrao40,
    ];
    var coluna9 = [
      _controladoresPesagem.aPesoPadrao41,
      _controladoresPesagem.aPesoPadrao42,
      _controladoresPesagem.aPesoPadrao43,
      _controladoresPesagem.aPesoPadrao44,
      _controladoresPesagem.aPesoPadrao45,
    ];
    var coluna10 = [
      _controladoresPesagem.aPesoPadrao46,
      _controladoresPesagem.aPesoPadrao47,
      _controladoresPesagem.aPesoPadrao48,
      _controladoresPesagem.aPesoPadrao49,
      _controladoresPesagem.aPesoPadrao50,
    ];
    var coluna11 = [
      _controladoresPesagem.aPesoPadrao51,
      _controladoresPesagem.aPesoPadrao52,
      _controladoresPesagem.aPesoPadrao53,
      _controladoresPesagem.aPesoPadrao54,
      _controladoresPesagem.aPesoPadrao55,
    ];
    var coluna12 = [
      _controladoresPesagem.aPesoPadrao56,
      _controladoresPesagem.aPesoPadrao57,
      _controladoresPesagem.aPesoPadrao58,
      _controladoresPesagem.aPesoPadrao59,
      _controladoresPesagem.aPesoPadrao60,
    ];

    List<Map<String, String>> mapas = [
      mapa715,
      mapa716,
      mapa717,
      mapaGrande,
      mapa529,
      mapa530,
      mapa531,
      mapa532,
      mapa533,
      mapa633a641,
      mapa642a650,
      mapa713,
      mapa714
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
    for (var controller in coluna4) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna4 += valor;
          break;
        }
      }
    }
    for (var controller in coluna5) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna5 += valor;
          break;
        }
      }
    }
    for (var controller in coluna6) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna6 += valor;
          break;
        }
      }
    }
    for (var controller in coluna7) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna7 += valor;
          break;
        }
      }
    }
    for (var controller in coluna8) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna8 += valor;
          break;
        }
      }
    }
    for (var controller in coluna9) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna9 += valor;
          break;
        }
      }
    }
    for (var controller in coluna10) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna10 += valor;
          break;
        }
      }
    }
    for (var controller in coluna11) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna11 += valor;
          break;
        }
      }
    }
    for (var controller in coluna12) {
      var valorTexto = controller.text;

      for (var mapa in mapas) {
        if (mapa.containsKey(valorTexto)) {
          double valor = double.parse(mapa[valorTexto]!.replaceAll(",", "."));
          somaColuna12 += valor;
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
    _controladoresPesagem.result4.text =
        somaColuna4.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result5.text =
        somaColuna5.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result6.text =
        somaColuna6.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result7.text =
        somaColuna7.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result8.text =
        somaColuna8.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result9.text =
        somaColuna9.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result10.text =
        somaColuna10.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result11.text =
        somaColuna11.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result12.text =
        somaColuna12.toStringAsFixed(7).replaceAll(".", ",");
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
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao16,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao17,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao18,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao19,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao20,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 4),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result4,
                              numPontosApoio >= 4),
                          mapasNumeros(_controladoresPesagem.mapa40),
                          mapasNumeros(_controladoresPesagem.mapa41),
                          mapasNumeros(_controladoresPesagem.mapa42),
                          mapasNumeros(_controladoresPesagem.mapa43),
                          mapasNumeros(_controladoresPesagem.mapa44),
                          mapasNumeros(_controladoresPesagem.mapa45),
                          mapasNumeros(_controladoresPesagem.mapa46),
                          mapasNumeros(_controladoresPesagem.mapa47),
                          mapasNumeros(_controladoresPesagem.mapa48),
                          mapasNumeros(_controladoresPesagem.mapa59),
                          mapasNumeros(_controladoresPesagem.mapa50),
                          mapasNumeros(_controladoresPesagem.mapa51),
                          mapasNumeros(_controladoresPesagem.mapa52),
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
                                _controladoresPesagem.aPesoPadrao21,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao22,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao23,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao24,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao25,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 5),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result5,
                              numPontosApoio >= 5),
                          mapasNumeros(_controladoresPesagem.mapa53),
                          mapasNumeros(_controladoresPesagem.mapa54),
                          mapasNumeros(_controladoresPesagem.mapa55),
                          mapasNumeros(_controladoresPesagem.mapa56),
                          mapasNumeros(_controladoresPesagem.mapa57),
                          mapasNumeros(_controladoresPesagem.mapa58),
                          mapasNumeros(_controladoresPesagem.mapa59),
                          mapasNumeros(_controladoresPesagem.mapa60),
                          mapasNumeros(_controladoresPesagem.mapa61),
                          mapasNumeros(_controladoresPesagem.mapa62),
                          mapasNumeros(_controladoresPesagem.mapa63),
                          mapasNumeros(_controladoresPesagem.mapa64),
                          mapasNumeros(_controladoresPesagem.mapa65),
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
                                _controladoresPesagem.aPesoPadrao26,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao27,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao28,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao29,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao30,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 6),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result6,
                              numPontosApoio >= 6),
                          mapasNumeros(_controladoresPesagem.mapa66),
                          mapasNumeros(_controladoresPesagem.mapa67),
                          mapasNumeros(_controladoresPesagem.mapa68),
                          mapasNumeros(_controladoresPesagem.mapa69),
                          mapasNumeros(_controladoresPesagem.mapa70),
                          mapasNumeros(_controladoresPesagem.mapa71),
                          mapasNumeros(_controladoresPesagem.mapa72),
                          mapasNumeros(_controladoresPesagem.mapa73),
                          mapasNumeros(_controladoresPesagem.mapa74),
                          mapasNumeros(_controladoresPesagem.mapa75),
                          mapasNumeros(_controladoresPesagem.mapa76),
                          mapasNumeros(_controladoresPesagem.mapa77),
                          mapasNumeros(_controladoresPesagem.mapa78),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
            //////////////////////////
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
                                _controladoresPesagem.aPesoPadrao31,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao32,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao33,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao34,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao35,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 7),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result7,
                              numPontosApoio >= 7),
                          mapasNumeros(_controladoresPesagem.mapa79),
                          mapasNumeros(_controladoresPesagem.mapa80),
                          mapasNumeros(_controladoresPesagem.mapa81),
                          mapasNumeros(_controladoresPesagem.mapa82),
                          mapasNumeros(_controladoresPesagem.mapa83),
                          mapasNumeros(_controladoresPesagem.mapa84),
                          mapasNumeros(_controladoresPesagem.mapa85),
                          mapasNumeros(_controladoresPesagem.mapa86),
                          mapasNumeros(_controladoresPesagem.mapa87),
                          mapasNumeros(_controladoresPesagem.mapa88),
                          mapasNumeros(_controladoresPesagem.mapa89),
                          mapasNumeros(_controladoresPesagem.mapa90),
                          mapasNumeros(_controladoresPesagem.mapa91),
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
                                _controladoresPesagem.aPesoPadrao36,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao37,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao38,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao39,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao40,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 8),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result8,
                              numPontosApoio >= 8),
                          mapasNumeros(_controladoresPesagem.mapa92),
                          mapasNumeros(_controladoresPesagem.mapa93),
                          mapasNumeros(_controladoresPesagem.mapa94),
                          mapasNumeros(_controladoresPesagem.mapa95),
                          mapasNumeros(_controladoresPesagem.mapa96),
                          mapasNumeros(_controladoresPesagem.mapa97),
                          mapasNumeros(_controladoresPesagem.mapa98),
                          mapasNumeros(_controladoresPesagem.mapa99),
                          mapasNumeros(_controladoresPesagem.mapa100),
                          mapasNumeros(_controladoresPesagem.mapa101),
                          mapasNumeros(_controladoresPesagem.mapa102),
                          mapasNumeros(_controladoresPesagem.mapa103),
                          mapasNumeros(_controladoresPesagem.mapa104),
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
                                _controladoresPesagem.aPesoPadrao41,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao42,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao43,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao44,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao45,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 9),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result9,
                              numPontosApoio >= 9),
                          mapasNumeros(_controladoresPesagem.mapa105),
                          mapasNumeros(_controladoresPesagem.mapa106),
                          mapasNumeros(_controladoresPesagem.mapa107),
                          mapasNumeros(_controladoresPesagem.mapa108),
                          mapasNumeros(_controladoresPesagem.mapa109),
                          mapasNumeros(_controladoresPesagem.mapa110),
                          mapasNumeros(_controladoresPesagem.mapa111),
                          mapasNumeros(_controladoresPesagem.mapa112),
                          mapasNumeros(_controladoresPesagem.mapa113),
                          mapasNumeros(_controladoresPesagem.mapa114),
                          mapasNumeros(_controladoresPesagem.mapa115),
                          mapasNumeros(_controladoresPesagem.mapa116),
                          mapasNumeros(_controladoresPesagem.mapa117),
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
                                _controladoresPesagem.aPesoPadrao46,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao47,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao48,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao49,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao50,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 10),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result10,
                              numPontosApoio >= 10),
                          mapasNumeros(_controladoresPesagem.mapa118),
                          mapasNumeros(_controladoresPesagem.mapa119),
                          mapasNumeros(_controladoresPesagem.mapa120),
                          mapasNumeros(_controladoresPesagem.mapa121),
                          mapasNumeros(_controladoresPesagem.mapa122),
                          mapasNumeros(_controladoresPesagem.mapa123),
                          mapasNumeros(_controladoresPesagem.mapa124),
                          mapasNumeros(_controladoresPesagem.mapa125),
                          mapasNumeros(_controladoresPesagem.mapa126),
                          mapasNumeros(_controladoresPesagem.mapa127),
                          mapasNumeros(_controladoresPesagem.mapa128),
                          mapasNumeros(_controladoresPesagem.mapa129),
                          mapasNumeros(_controladoresPesagem.mapa130),
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
                                _controladoresPesagem.aPesoPadrao51,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao52,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao53,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao54,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao55,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 11),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result11,
                              numPontosApoio >= 11),
                          mapasNumeros(_controladoresPesagem.mapa131),
                          mapasNumeros(_controladoresPesagem.mapa132),
                          mapasNumeros(_controladoresPesagem.mapa133),
                          mapasNumeros(_controladoresPesagem.mapa134),
                          mapasNumeros(_controladoresPesagem.mapa135),
                          mapasNumeros(_controladoresPesagem.mapa136),
                          mapasNumeros(_controladoresPesagem.mapa137),
                          mapasNumeros(_controladoresPesagem.mapa138),
                          mapasNumeros(_controladoresPesagem.mapa139),
                          mapasNumeros(_controladoresPesagem.mapa140),
                          mapasNumeros(_controladoresPesagem.mapa141),
                          mapasNumeros(_controladoresPesagem.mapa142),
                          mapasNumeros(_controladoresPesagem.mapa143),
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
                                _controladoresPesagem.aPesoPadrao56,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao57,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao58,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao59,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                            const SizedBox(height: 10),
                            pesoPad(
                                _controladoresPesagem.aPesoPadrao60,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 12),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(_controladoresPesagem.result12,
                              numPontosApoio >= 12),
                          mapasNumeros(_controladoresPesagem.mapa144),
                          mapasNumeros(_controladoresPesagem.mapa145),
                          mapasNumeros(_controladoresPesagem.mapa146),
                          mapasNumeros(_controladoresPesagem.mapa147),
                          mapasNumeros(_controladoresPesagem.mapa148),
                          mapasNumeros(_controladoresPesagem.mapa149),
                          mapasNumeros(_controladoresPesagem.mapa150),
                          mapasNumeros(_controladoresPesagem.mapa151),
                          mapasNumeros(_controladoresPesagem.mapa152),
                          mapasNumeros(_controladoresPesagem.mapa153),
                          mapasNumeros(_controladoresPesagem.mapa154),
                          mapasNumeros(_controladoresPesagem.mapa155),
                          mapasNumeros(_controladoresPesagem.mapa156),
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
