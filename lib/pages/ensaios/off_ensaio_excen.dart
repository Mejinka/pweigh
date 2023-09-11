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

  bool contemValorDoMapa(Map<String, String> mapa) {
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

    for (var controller in coluna1) {
      if (mapa.containsKey(controller.text)) {
        return true;
      }
    }
    for (var controller in coluna2) {
      if (mapa.containsKey(controller.text)) {
        return true;
      }
    }
    return false;
  }

  void _verificaEAtualizaControllerMapa() {
    bool temValor715 = contemValorDoMapa(mapa715);
    bool temValor716 = contemValorDoMapa(mapa716);
    bool temValor717 = contemValorDoMapa(mapa717);
    bool temValorgrande = contemValorDoMapa(mapaGrande);
    bool temValor529 = contemValorDoMapa(mapa529);
    bool temValor530 = contemValorDoMapa(mapa530);
    bool temValor531 = contemValorDoMapa(mapa531);
    bool temValor532 = contemValorDoMapa(mapa532);
    bool temValor533 = contemValorDoMapa(mapa533);
    bool temValor633a641 = contemValorDoMapa(mapa633a641);
    bool temValor642a650 = contemValorDoMapa(mapa642a650);
    bool temValor713 = contemValorDoMapa(mapa713);
    bool temValor714 = contemValorDoMapa(mapa714);

    if (temValor715) {
      _controladoresPesagem.mapa.text = "715";
    } else {
      _controladoresPesagem.mapa.text = "";
    }

    if (temValor716) {
      _controladoresPesagem.mapa2.text = "716";
    } else {
      _controladoresPesagem.mapa2.text = "";
    }
    if (temValor717) {
      _controladoresPesagem.mapa3.text = "717";
    } else {
      _controladoresPesagem.mapa3.text = "";
    }
    if (temValorgrande) {
      _controladoresPesagem.mapa4.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa4.text = "";
    }
    if (temValor529) {
      _controladoresPesagem.mapa5.text = "529";
    } else {
      _controladoresPesagem.mapa5.text = "";
    }
    if (temValor530) {
      _controladoresPesagem.mapa6.text = "530";
    } else {
      _controladoresPesagem.mapa6.text = "";
    }
    if (temValor531) {
      _controladoresPesagem.mapa7.text = "531";
    } else {
      _controladoresPesagem.mapa7.text = "";
    }
    if (temValor532) {
      _controladoresPesagem.mapa8.text = "532";
    } else {
      _controladoresPesagem.mapa8.text = "";
    }
    if (temValor533) {
      _controladoresPesagem.mapa9.text = "533";
    } else {
      _controladoresPesagem.mapa9.text = "";
    }
    if (temValor633a641) {
      _controladoresPesagem.mapa10.text = "633, 641";
    } else {
      _controladoresPesagem.mapa10.text = "";
    }
    if (temValor642a650) {
      _controladoresPesagem.mapa11.text = "642, 650";
    } else {
      _controladoresPesagem.mapa11.text = "";
    }
    if (temValor713) {
      _controladoresPesagem.mapa12.text = "713";
    } else {
      _controladoresPesagem.mapa12.text = "";
    }
    if (temValor714) {
      _controladoresPesagem.mapa13.text = "714";
    } else {
      _controladoresPesagem.mapa13.text = "";
    }
    if (temValor715) {
      _controladoresPesagem.mapa14.text = "715";
    } else {
      _controladoresPesagem.mapa14.text = "";
    }

    if (temValor716) {
      _controladoresPesagem.mapa15.text = "716";
    } else {
      _controladoresPesagem.mapa15.text = "";
    }
    if (temValor717) {
      _controladoresPesagem.mapa16.text = "717";
    } else {
      _controladoresPesagem.mapa16.text = "";
    }
    if (temValorgrande) {
      _controladoresPesagem.mapa17.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      _controladoresPesagem.mapa17.text = "";
    }
    if (temValor529) {
      _controladoresPesagem.mapa18.text = "529";
    } else {
      _controladoresPesagem.mapa18.text = "";
    }
    if (temValor530) {
      _controladoresPesagem.mapa19.text = "530";
    } else {
      _controladoresPesagem.mapa19.text = "";
    }
    if (temValor531) {
      _controladoresPesagem.mapa20.text = "531";
    } else {
      _controladoresPesagem.mapa20.text = "";
    }
    if (temValor532) {
      _controladoresPesagem.mapa21.text = "532";
    } else {
      _controladoresPesagem.mapa21.text = "";
    }
    if (temValor533) {
      _controladoresPesagem.mapa22.text = "533";
    } else {
      _controladoresPesagem.mapa22.text = "";
    }
    if (temValor633a641) {
      _controladoresPesagem.mapa23.text = "633, 641";
    } else {
      _controladoresPesagem.mapa23.text = "";
    }
    if (temValor642a650) {
      _controladoresPesagem.mapa24.text = "642, 650";
    } else {
      _controladoresPesagem.mapa24.text = "";
    }
    if (temValor713) {
      _controladoresPesagem.mapa25.text = "713";
    } else {
      _controladoresPesagem.mapa25.text = "";
    }
    if (temValor714) {
      _controladoresPesagem.mapa26.text = "714";
    } else {
      _controladoresPesagem.mapa26.text = "";
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
      }
    }

    _controladoresPesagem.result1.text =
        somaColuna1.toStringAsFixed(7).replaceAll(".", ",");
    _controladoresPesagem.result2.text =
        somaColuna2.toStringAsFixed(7).replaceAll(".", ",");
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
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa3,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa4,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa5,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa6,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa7,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa8,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa9,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa10,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa11,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa12,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa13,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
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
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa14,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa15,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa16,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa17,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa18,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa19,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa20,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa21,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa22,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa23,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa24,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa25,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: true,
                            child: SizedBox(
                              width: 100,
                              child: TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladoresPesagem.mapa26,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
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
