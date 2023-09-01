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
  final List<bool> _contem715 = List.filled(120, false);
  final List<bool> _contem716 = List.filled(120, false);

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
      case 62:
        return _controladoresPesagem.aPesoPadrao63;
      case 63:
        return _controladoresPesagem.aPesoPadrao64;
      case 64:
        return _controladoresPesagem.aPesoPadrao65;
      case 65:
        return _controladoresPesagem.aPesoPadrao66;
      case 66:
        return _controladoresPesagem.aPesoPadrao67;
      case 67:
        return _controladoresPesagem.aPesoPadrao68;
      case 68:
        return _controladoresPesagem.aPesoPadrao69;
      case 69:
        return _controladoresPesagem.aPesoPadrao70;
      case 70:
        return _controladoresPesagem.aPesoPadrao71;
      case 71:
        return _controladoresPesagem.aPesoPadrao72;
      case 72:
        return _controladoresPesagem.aPesoPadrao73;
      case 73:
        return _controladoresPesagem.aPesoPadrao74;
      case 74:
        return _controladoresPesagem.aPesoPadrao75;
      case 75:
        return _controladoresPesagem.aPesoPadrao76;
      case 76:
        return _controladoresPesagem.aPesoPadrao77;
      case 77:
        return _controladoresPesagem.aPesoPadrao78;
      case 78:
        return _controladoresPesagem.aPesoPadrao79;
      case 79:
        return _controladoresPesagem.aPesoPadrao80;
      case 80:
        return _controladoresPesagem.aPesoPadrao81;
      case 81:
        return _controladoresPesagem.aPesoPadrao82;
      case 82:
        return _controladoresPesagem.aPesoPadrao83;
      case 83:
        return _controladoresPesagem.aPesoPadrao84;
      case 84:
        return _controladoresPesagem.aPesoPadrao85;
      case 85:
        return _controladoresPesagem.aPesoPadrao86;
      case 86:
        return _controladoresPesagem.aPesoPadrao87;
      case 87:
        return _controladoresPesagem.aPesoPadrao88;
      case 88:
        return _controladoresPesagem.aPesoPadrao89;
      case 89:
        return _controladoresPesagem.aPesoPadrao90;
      case 90:
        return _controladoresPesagem.aPesoPadrao91;
      case 91:
        return _controladoresPesagem.aPesoPadrao92;
      case 92:
        return _controladoresPesagem.aPesoPadrao93;
      case 93:
        return _controladoresPesagem.aPesoPadrao94;
      case 94:
        return _controladoresPesagem.aPesoPadrao95;
      case 95:
        return _controladoresPesagem.aPesoPadrao96;
      case 96:
        return _controladoresPesagem.aPesoPadrao97;
      case 97:
        return _controladoresPesagem.aPesoPadrao98;
      case 98:
        return _controladoresPesagem.aPesoPadrao99;
      case 99:
        return _controladoresPesagem.aPesoPadrao100;
      case 100:
        return _controladoresPesagem.aPesoPadrao101;
      case 101:
        return _controladoresPesagem.aPesoPadrao102;
      case 102:
        return _controladoresPesagem.aPesoPadrao103;
      case 103:
        return _controladoresPesagem.aPesoPadrao104;
      case 104:
        return _controladoresPesagem.aPesoPadrao105;
      case 105:
        return _controladoresPesagem.aPesoPadrao106;
      case 106:
        return _controladoresPesagem.aPesoPadrao107;
      case 107:
        return _controladoresPesagem.aPesoPadrao108;
      case 108:
        return _controladoresPesagem.aPesoPadrao109;
      case 109:
        return _controladoresPesagem.aPesoPadrao110;
      case 110:
        return _controladoresPesagem.aPesoPadrao111;
      case 111:
        return _controladoresPesagem.aPesoPadrao112;
      case 112:
        return _controladoresPesagem.aPesoPadrao113;
      case 113:
        return _controladoresPesagem.aPesoPadrao114;
      case 114:
        return _controladoresPesagem.aPesoPadrao115;
      case 115:
        return _controladoresPesagem.aPesoPadrao116;
      case 116:
        return _controladoresPesagem.aPesoPadrao117;
      case 117:
        return _controladoresPesagem.aPesoPadrao118;
      case 118:
        return _controladoresPesagem.aPesoPadrao119;
      case 119:
        return _controladoresPesagem.aPesoPadrao120;
      default:
        throw ArgumentError("Index must be between 0 and 119");
    }
  }

  final List<TextEditingController> _controladoresDesativados =
      List.generate(120, (index) => TextEditingController());

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
    '1000k': '1000000,0000000',
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
    '5k1	': '5000,0000000',
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

    for (int i = 0; i < 120; i++) {
      _getControllerByIndex(i).addListener(() {
        var valor = _getControllerByIndex(i).text;

        if (mapa715.containsKey(valor)) {
          _controladoresDesativados[i].text = mapa715[valor]!;
          _contem715[i] = true;
          _contem716[i] = false;
        } else if (mapa716.containsKey(valor)) {
          _controladoresDesativados[i].text = mapa716[valor]!;
          _contem716[i] = true;
          _contem715[i] = false;
        } else {
          _controladoresDesativados[i].text = '';
          _contem715[i] = false;
          _contem716[i] = false;
        }

        atualizarSoma();

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
    for (int i = 1; i <= _controladores.controladoresPontosApoio.length; i++) {
      _controladores.disposePontoApoioControllers(i);
    }
    print('${_controladoresPesagem.result1.text}');

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

    for (var controller in coluna1) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna1 += valor;
      }
    }

    for (var controller in coluna2) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna2 += valor;
      }
    }

    for (var controller in coluna3) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna3 += valor;
      }
    }

    for (var controller in coluna4) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna4 += valor;
      }
    }
    for (var controller in coluna5) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna5 += valor;
      }
    }
    for (var controller in coluna6) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna6 += valor;
      }
    }
    for (var controller in coluna7) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna7 += valor;
      }
    }
    for (var controller in coluna8) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna8 += valor;
      }
    }
    for (var controller in coluna9) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna9 += valor;
      }
    }
    for (var controller in coluna10) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna10 += valor;
      }
    }
    for (var controller in coluna11) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna11 += valor;
      }
    }
    for (var controller in coluna12) {
      var valorTexto = controller.text;

      if (mapa715.containsKey(valorTexto)) {
        double valor = double.parse(mapa715[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa716.containsKey(valorTexto)) {
        double valor = double.parse(mapa716[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa717.containsKey(valorTexto)) {
        double valor = double.parse(mapa717[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapaGrande.containsKey(valorTexto)) {
        double valor =
            double.parse(mapaGrande[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa529.containsKey(valorTexto)) {
        double valor = double.parse(mapa529[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa530.containsKey(valorTexto)) {
        double valor = double.parse(mapa530[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa531.containsKey(valorTexto)) {
        double valor = double.parse(mapa531[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa532.containsKey(valorTexto)) {
        double valor = double.parse(mapa532[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa533.containsKey(valorTexto)) {
        double valor = double.parse(mapa533[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa633a641.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa633a641[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa642a650.containsKey(valorTexto)) {
        double valor =
            double.parse(mapa642a650[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa713.containsKey(valorTexto)) {
        double valor = double.parse(mapa713[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
      } else if (mapa714.containsKey(valorTexto)) {
        double valor = double.parse(mapa714[valorTexto]!.replaceAll(",", "."));
        somaColuna12 += valor;
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
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('3', _controladores.ponto3,
                          [_controladores.ponto3F], numPontosApoio >= 3),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('4', _controladores.ponto4,
                          [_controladores.ponto4F], numPontosApoio >= 4),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('5', _controladores.ponto5,
                          [_controladores.ponto5F], numPontosApoio >= 5),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('6', _controladores.ponto6,
                          [_controladores.ponto6F], numPontosApoio >= 6),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('7', _controladores.ponto7,
                          [_controladores.ponto7F], numPontosApoio >= 7),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('8', _controladores.ponto8,
                          [_controladores.ponto8F], numPontosApoio >= 8),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('9', _controladores.ponto9,
                          [_controladores.ponto9F], numPontosApoio >= 9),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('10', _controladores.ponto10,
                          [_controladores.ponto10F], numPontosApoio >= 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('11', _controladores.ponto11,
                          [_controladores.ponto11F], numPontosApoio >= 11),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      customPontosApoio('12', _controladores.ponto12,
                          [_controladores.ponto12F], numPontosApoio >= 12),
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
                      Container(width: 10),
                      resultBox(
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
                      resultBox(
                          _controladoresPesagem.result2, numPontosApoio >= 2),
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
                      resultBox(
                          _controladoresPesagem.result3, numPontosApoio >= 3),
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
                      resultBox(
                          _controladoresPesagem.result4, numPontosApoio >= 4),
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
                      resultBox(
                          _controladoresPesagem.result5, numPontosApoio >= 5),
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
                      resultBox(
                          _controladoresPesagem.result6, numPontosApoio >= 6),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),

// 88888888ba    ,ad8888ba,  I8,        8        ,8I     ad888888b,
// 88      "8b  d8"'    `"8b `8b       d8b       d8'    d8"     "88
// 88      ,8P d8'        `8b "8,     ,8"8,     ,8"             a8P
// 88aaaaaa8P' 88          88  Y8     8P Y8     8P           ,d8P"
// 88""""88'   88          88  `8b   d8' `8b   d8'         a8P"
// 88    `8b   Y8,        ,8P   `8a a8'   `8a a8'        a8P'
// 88     `8b   Y8a.    .a8P     `8a8'     `8a8'        d8"
// 88      `8b   `"Y8888Y"'       `8'       `8'         88888888888

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
                      resultBox(
                          _controladoresPesagem.result7, numPontosApoio >= 7),
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
                      resultBox(
                          _controladoresPesagem.result8, numPontosApoio >= 8),
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
                      resultBox(
                          _controladoresPesagem.result9, numPontosApoio >= 9),
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
                      resultBox(
                          _controladoresPesagem.result10, numPontosApoio >= 10),
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
                      resultBox(
                          _controladoresPesagem.result11, numPontosApoio >= 11),
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
                      resultBox(
                          _controladoresPesagem.result12, numPontosApoio >= 12),
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
