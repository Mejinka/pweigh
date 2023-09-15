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
  late EnsaioPesagemControllers controladoresPesagem;

  int numPontosApoio = 0;
  final List<bool> _contem715 = List.filled(61, false);
  final List<bool> _contem716 = List.filled(61, false);

  TextEditingController _getControllerByIndex(int index) {
    switch (index) {
      case 0:
        return controladoresPesagem.aPesoPadrao1;
      case 1:
        return controladoresPesagem.aPesoPadrao2;
      case 2:
        return controladoresPesagem.aPesoPadrao3;
      case 3:
        return controladoresPesagem.aPesoPadrao4;
      case 4:
        return controladoresPesagem.aPesoPadrao5;
      case 5:
        return controladoresPesagem.aPesoPadrao6;
      case 6:
        return controladoresPesagem.aPesoPadrao7;
      case 7:
        return controladoresPesagem.aPesoPadrao8;
      case 8:
        return controladoresPesagem.aPesoPadrao9;
      case 9:
        return controladoresPesagem.aPesoPadrao10;
      case 10:
        return controladoresPesagem.aPesoPadrao11;
      case 11:
        return controladoresPesagem.aPesoPadrao12;
      case 12:
        return controladoresPesagem.aPesoPadrao13;
      case 13:
        return controladoresPesagem.aPesoPadrao14;
      case 14:
        return controladoresPesagem.aPesoPadrao15;
      case 15:
        return controladoresPesagem.aPesoPadrao16;
      case 16:
        return controladoresPesagem.aPesoPadrao17;
      case 17:
        return controladoresPesagem.aPesoPadrao18;
      case 18:
        return controladoresPesagem.aPesoPadrao19;
      case 19:
        return controladoresPesagem.aPesoPadrao20;
      case 20:
        return controladoresPesagem.aPesoPadrao21;
      case 21:
        return controladoresPesagem.aPesoPadrao22;
      case 22:
        return controladoresPesagem.aPesoPadrao23;
      case 23:
        return controladoresPesagem.aPesoPadrao24;
      case 24:
        return controladoresPesagem.aPesoPadrao25;
      case 25:
        return controladoresPesagem.aPesoPadrao26;
      case 26:
        return controladoresPesagem.aPesoPadrao27;
      case 27:
        return controladoresPesagem.aPesoPadrao28;
      case 28:
        return controladoresPesagem.aPesoPadrao29;
      case 29:
        return controladoresPesagem.aPesoPadrao30;
      case 30:
        return controladoresPesagem.aPesoPadrao31;
      case 31:
        return controladoresPesagem.aPesoPadrao32;
      case 32:
        return controladoresPesagem.aPesoPadrao33;
      case 33:
        return controladoresPesagem.aPesoPadrao34;
      case 34:
        return controladoresPesagem.aPesoPadrao35;
      case 35:
        return controladoresPesagem.aPesoPadrao36;
      case 36:
        return controladoresPesagem.aPesoPadrao37;
      case 37:
        return controladoresPesagem.aPesoPadrao38;
      case 38:
        return controladoresPesagem.aPesoPadrao39;
      case 39:
        return controladoresPesagem.aPesoPadrao40;
      case 40:
        return controladoresPesagem.aPesoPadrao41;
      case 41:
        return controladoresPesagem.aPesoPadrao42;
      case 42:
        return controladoresPesagem.aPesoPadrao43;
      case 43:
        return controladoresPesagem.aPesoPadrao44;
      case 44:
        return controladoresPesagem.aPesoPadrao45;
      case 45:
        return controladoresPesagem.aPesoPadrao46;
      case 46:
        return controladoresPesagem.aPesoPadrao47;
      case 47:
        return controladoresPesagem.aPesoPadrao48;
      case 48:
        return controladoresPesagem.aPesoPadrao49;
      case 49:
        return controladoresPesagem.aPesoPadrao50;
      case 50:
        return controladoresPesagem.aPesoPadrao51;
      case 51:
        return controladoresPesagem.aPesoPadrao52;
      case 52:
        return controladoresPesagem.aPesoPadrao53;
      case 53:
        return controladoresPesagem.aPesoPadrao54;
      case 54:
        return controladoresPesagem.aPesoPadrao55;
      case 55:
        return controladoresPesagem.aPesoPadrao56;
      case 56:
        return controladoresPesagem.aPesoPadrao57;
      case 57:
        return controladoresPesagem.aPesoPadrao58;
      case 58:
        return controladoresPesagem.aPesoPadrao59;
      case 59:
        return controladoresPesagem.aPesoPadrao60;
      case 60:
        return controladoresPesagem.aPesoPadrao61;
      case 61:
        return controladoresPesagem.aPesoPadrao62;
      default:
        throw ArgumentError("Index must be between 0 and 119");
    }
  }

  final List<TextEditingController> _controladoresDesativados =
      List.generate(61, (index) => TextEditingController());

  final TextEditingController _controller715 = TextEditingController();
  final TextEditingController _controller716 = TextEditingController();
  static final Map<String, String> mapa715 = {
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

  static final Map<String, String> mapa716 = {
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
  static final Map<String, String> mapa717 = {
    'F10k': '9999,9950000',
    'F20k': '20000,0080000',
  };
  static final Map<String, String> mapaGrande = {
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
  static final Map<String, String> mapa529 = {
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
  static final Map<String, String> mapa530 = {
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
  static final Map<String, String> mapa531 = {
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
  static final Map<String, String> mapa532 = {
    '5k1': '5000,0000000',
    '10k1': '	10000,0000000'
  };
  static final Map<String, String> mapa533 = {
    '10k2': '10000,0000000',
    '20k2': '20000,0000000'
  };
  static final Map<String, String> mapa633a641 = {
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
  static final Map<String, String> mapa642a650 = {
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
  static final Map<String, String> mapa713 = {
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
  static final Map<String, String> mapa714 = {
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
// Exemplo de estrutura de mapa
  final Map<String, Map<String, String>> mapas = {
    '715': mapa715,
    '716': mapa716,
    '717': mapa717,
    '529': mapa529,
    '530': mapa530,
    '531': mapa531,
    '532': mapa532,
    '533': mapa533,
    '633 a 642': mapa633a641,
    '642 a 650': mapa642a650,
    '713': mapa713,
    '714': mapa714,
    '534, 536, 542, 548 a 552, 663, 681, 682  e 708': mapaGrande,
    // ... adicione outros mapas aqui ...
  };
  final Map<String, String> descricoesMapas = {
    '715': 'Conjunto de pesos 1 mg a 1 kg, Classe E2',
    '716': 'Conjunto de pesos 1 mg a 5 kg, Classe F1',
    '717': 'Conjunto de peso 10 kg e 20 kg, Classe F1',
    '529': 'Conjunto de Pesos de 1000 kg, Classe  M1',
    '530': 'Conjunto de pesos de 1 kg, Classe M1',
    '531': 'Conjunto de pesos de 2 kg, Classe M1',
    '532': 'Conjunto de pesos de 5 kg, Classe M1',
    '533': 'Conjunto de pesos de 10 kg, Classe M1',
    '633 a 642':
        'Conjunto de pesos de 100 kg, Classe M1-2 e de 200 kg e 500kg, Classe M1',
    '642 a 650':
        'Conjunto de pesos de 25 kg e 50 kg, Classe M1 e 100 kg, Classe M1-2 ',
    '713': 'Conjunto de pesos de 1 mg a 5 kg, Classe M1,',
    '714': 'Conjunto de pesos de 1 mg a 5 kg, Classe M1,',
    '534, 536, 542, 548 a 552, 663, 681, 682  e 708':
        'Conjunto de Pesos de 20 kg, Classe M1',
  };
  void checkMap(String value, Set<String> mapasReferenciados) {
    for (var entry in mapas.entries) {
      if (entry.value.containsKey(value)) {
        mapasReferenciados.add(entry.key);
      }
    }
  }

  List<String> getValuesFromColumn(List<TextEditingController> controllers) {
    return controllers.map((controller) => controller.text).toList();
  }

// Função para processar colunas
  void processAllColumns() {
    List<TextEditingController> coluna1 = [
      controladoresPesagem.aPesoPadrao1,
      controladoresPesagem.aPesoPadrao2,
      controladoresPesagem.aPesoPadrao3,
      controladoresPesagem.aPesoPadrao4,
      controladoresPesagem.aPesoPadrao5,
    ];

    List<TextEditingController> coluna2 = [
      controladoresPesagem.aPesoPadrao6,
      controladoresPesagem.aPesoPadrao7,
      controladoresPesagem.aPesoPadrao8,
      controladoresPesagem.aPesoPadrao9,
      controladoresPesagem.aPesoPadrao10,
    ];

    List<TextEditingController> coluna3 = [
      controladoresPesagem.aPesoPadrao11,
      controladoresPesagem.aPesoPadrao12,
      controladoresPesagem.aPesoPadrao13,
      controladoresPesagem.aPesoPadrao14,
      controladoresPesagem.aPesoPadrao15,
    ];
    List<TextEditingController> coluna4 = [
      controladoresPesagem.aPesoPadrao16,
      controladoresPesagem.aPesoPadrao17,
      controladoresPesagem.aPesoPadrao18,
      controladoresPesagem.aPesoPadrao19,
      controladoresPesagem.aPesoPadrao20,
    ];
    List<TextEditingController> coluna5 = [
      controladoresPesagem.aPesoPadrao21,
      controladoresPesagem.aPesoPadrao22,
      controladoresPesagem.aPesoPadrao23,
      controladoresPesagem.aPesoPadrao24,
      controladoresPesagem.aPesoPadrao25,
    ];
    List<TextEditingController> coluna6 = [
      controladoresPesagem.aPesoPadrao26,
      controladoresPesagem.aPesoPadrao27,
      controladoresPesagem.aPesoPadrao28,
      controladoresPesagem.aPesoPadrao29,
      controladoresPesagem.aPesoPadrao30,
    ];
    List<TextEditingController> coluna7 = [
      controladoresPesagem.aPesoPadrao31,
      controladoresPesagem.aPesoPadrao32,
      controladoresPesagem.aPesoPadrao33,
      controladoresPesagem.aPesoPadrao34,
      controladoresPesagem.aPesoPadrao35,
    ];
    List<TextEditingController> coluna8 = [
      controladoresPesagem.aPesoPadrao36,
      controladoresPesagem.aPesoPadrao37,
      controladoresPesagem.aPesoPadrao38,
      controladoresPesagem.aPesoPadrao39,
      controladoresPesagem.aPesoPadrao40,
    ];
    List<TextEditingController> coluna9 = [
      controladoresPesagem.aPesoPadrao41,
      controladoresPesagem.aPesoPadrao42,
      controladoresPesagem.aPesoPadrao43,
      controladoresPesagem.aPesoPadrao44,
      controladoresPesagem.aPesoPadrao45,
    ];
    List<TextEditingController> coluna10 = [
      controladoresPesagem.aPesoPadrao41,
      controladoresPesagem.aPesoPadrao42,
      controladoresPesagem.aPesoPadrao43,
      controladoresPesagem.aPesoPadrao44,
      controladoresPesagem.aPesoPadrao45,
    ];
    List<TextEditingController> coluna11 = [
      controladoresPesagem.aPesoPadrao46,
      controladoresPesagem.aPesoPadrao47,
      controladoresPesagem.aPesoPadrao48,
      controladoresPesagem.aPesoPadrao49,
      controladoresPesagem.aPesoPadrao50,
    ];
    List<TextEditingController> coluna12 = [
      controladoresPesagem.aPesoPadrao51,
      controladoresPesagem.aPesoPadrao52,
      controladoresPesagem.aPesoPadrao53,
      controladoresPesagem.aPesoPadrao54,
      controladoresPesagem.aPesoPadrao55,
    ];
    List<TextEditingController> coluna13 = [
      controladoresPesagem.aPesoPadrao56,
      controladoresPesagem.aPesoPadrao57,
      controladoresPesagem.aPesoPadrao58,
      controladoresPesagem.aPesoPadrao59,
      controladoresPesagem.aPesoPadrao60,
    ];

    List<String> valuesCol1 = getValuesFromColumn(coluna1);
    List<String> valuesCol2 = getValuesFromColumn(coluna2);
    List<String> valuesCol3 = getValuesFromColumn(coluna3);
    List<String> valuesCol4 = getValuesFromColumn(coluna4);
    List<String> valuesCol5 = getValuesFromColumn(coluna5);
    List<String> valuesCol6 = getValuesFromColumn(coluna6);
    List<String> valuesCol7 = getValuesFromColumn(coluna7);
    List<String> valuesCol8 = getValuesFromColumn(coluna8);
    List<String> valuesCol9 = getValuesFromColumn(coluna9);
    List<String> valuesCol10 = getValuesFromColumn(coluna10);
    List<String> valuesCol11 = getValuesFromColumn(coluna11);
    List<String> valuesCol12 = getValuesFromColumn(coluna12);
    List<String> valuesCol13 = getValuesFromColumn(coluna13);

    // Agora que temos todos os valores, podemos processá-los.
    Set<String> mapasReferenciados = {};

    for (var value in valuesCol1) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol2) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol3) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol4) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol5) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol6) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol7) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol8) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol9) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol10) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol11) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol12) {
      checkMap(value, mapasReferenciados);
    }
    for (var value in valuesCol13) {
      checkMap(value, mapasReferenciados);
    }
    int index = 0;
    for (var id in mapasReferenciados) {
      if (index == 0) {
        controladoresPesagem.idMapas1.text = id;
      } else if (index == 1) {
        controladoresPesagem.idMapas2.text = id;
      } else if (index == 2) {
        controladoresPesagem.idMapas3.text = id;
      } else if (index == 3) {
        controladoresPesagem.idMapas4.text = id;
      } else if (index == 4) {
        controladoresPesagem.idMapas5.text = id;
      } else if (index == 5) {
        controladoresPesagem.idMapas6.text = id;
      } else if (index == 6) {
        controladoresPesagem.idMapas7.text = id;
      } else if (index == 7) {
        controladoresPesagem.idMapas8.text = id;
      } else if (index == 8) {
        controladoresPesagem.idMapas9.text = id;
      } else if (index == 9) {
        controladoresPesagem.idMapas10.text = id;
      } else if (index == 10) {
        controladoresPesagem.idMapas11.text = id;
      } else if (index == 11) {
        controladoresPesagem.idMapas12.text = id;
      } else if (index == 12) {
        controladoresPesagem.idMapas13.text = id;
      }
      // ... e assim por diante, para cada controlador que você tem.

      index += 1;
    }

    int totalControladores = 13;

    for (int index = 0; index < totalControladores; index++) {
      if (index < mapasReferenciados.length) {
        String id = mapasReferenciados.elementAt(index);
        switch (index) {
          case 0:
            controladoresPesagem.idMapas1.text = id;
            controladoresPesagem.idMapas1desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 1:
            controladoresPesagem.idMapas2.text = id;
            controladoresPesagem.idMapas2desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 2:
            controladoresPesagem.idMapas3.text = id;
            controladoresPesagem.idMapas3desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 3:
            controladoresPesagem.idMapas4.text = id;
            controladoresPesagem.idMapas4desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 4:
            controladoresPesagem.idMapas5.text = id;
            controladoresPesagem.idMapas5desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 5:
            controladoresPesagem.idMapas6.text = id;
            controladoresPesagem.idMapas6desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 6:
            controladoresPesagem.idMapas7.text = id;
            controladoresPesagem.idMapas7desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 7:
            controladoresPesagem.idMapas8.text = id;
            controladoresPesagem.idMapas8desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 8:
            controladoresPesagem.idMapas9.text = id;
            controladoresPesagem.idMapas9desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 9:
            controladoresPesagem.idMapas10.text = id;
            controladoresPesagem.idMapas10desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 10:
            controladoresPesagem.idMapas11.text = id;
            controladoresPesagem.idMapas11desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 11:
            controladoresPesagem.idMapas12.text = id;
            controladoresPesagem.idMapas12desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          case 12:
            controladoresPesagem.idMapas13.text = id;
            controladoresPesagem.idMapas13desc.text =
                descricoesMapas[id] ?? 'Descrição não encontrada';

            break;
          // ... e assim por diante, para cada controlador que você tem.
        }
      } else {
        // Limpe o controlador se não houver valor referente
        switch (index) {
          case 0:
            controladoresPesagem.idMapas1.clear();
            controladoresPesagem.idMapas1desc.clear();

            break;
          case 1:
            controladoresPesagem.idMapas2.clear();
            controladoresPesagem.idMapas2desc.clear();

            break;
          case 2:
            controladoresPesagem.idMapas3.clear();
            controladoresPesagem.idMapas3desc.clear();

            break;
          case 3:
            controladoresPesagem.idMapas4.clear();
            controladoresPesagem.idMapas4desc.clear();

            break;
          case 4:
            controladoresPesagem.idMapas5.clear();
            controladoresPesagem.idMapas5desc.clear();

            break;
          case 5:
            controladoresPesagem.idMapas6.clear();
            controladoresPesagem.idMapas6desc.clear();

            break;
          case 6:
            controladoresPesagem.idMapas7.clear();
            controladoresPesagem.idMapas7desc.clear();

            break;
          case 7:
            controladoresPesagem.idMapas8.clear();
            controladoresPesagem.idMapas8desc.clear();

            break;
          case 8:
            controladoresPesagem.idMapas9.clear();
            controladoresPesagem.idMapas9desc.clear();

            break;
          case 9:
            controladoresPesagem.idMapas10.clear();
            controladoresPesagem.idMapas10desc.clear();

            break;
          case 10:
            controladoresPesagem.idMapas11.clear();
            controladoresPesagem.idMapas11desc.clear();

            break;
          case 11:
            controladoresPesagem.idMapas12.clear();
            controladoresPesagem.idMapas12desc.clear();

            break;
          case 12:
            controladoresPesagem.idMapas13.clear();
            controladoresPesagem.idMapas13desc.clear();

            break;
          // ... e assim por diante, para cada controlador que você tem.
        }
      }
    }
    for (var id in mapasReferenciados) {
      print(descricoesMapas[id]); // Aqui, imprimimos a descrição correspondente
    }
    print(mapasReferenciados);
  }

  @override
  void initState() {
    super.initState();
    _controladores = widget.controladores;
    _controladores.pontosApoioController.addListener(_updateCampos);
    controladoresPesagem =
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
      controladoresPesagem.aPesoPadrao1,
      controladoresPesagem.aPesoPadrao2,
      controladoresPesagem.aPesoPadrao3,
      controladoresPesagem.aPesoPadrao4,
      controladoresPesagem.aPesoPadrao5,
    ];
    var coluna2 = [
      controladoresPesagem.aPesoPadrao6,
      controladoresPesagem.aPesoPadrao7,
      controladoresPesagem.aPesoPadrao8,
      controladoresPesagem.aPesoPadrao9,
      controladoresPesagem.aPesoPadrao10,
    ];
    var coluna3 = [
      controladoresPesagem.aPesoPadrao11,
      controladoresPesagem.aPesoPadrao12,
      controladoresPesagem.aPesoPadrao13,
      controladoresPesagem.aPesoPadrao14,
      controladoresPesagem.aPesoPadrao15,
    ];
    var coluna4 = [
      controladoresPesagem.aPesoPadrao16,
      controladoresPesagem.aPesoPadrao17,
      controladoresPesagem.aPesoPadrao18,
      controladoresPesagem.aPesoPadrao19,
      controladoresPesagem.aPesoPadrao20,
    ];
    var coluna5 = [
      controladoresPesagem.aPesoPadrao21,
      controladoresPesagem.aPesoPadrao22,
      controladoresPesagem.aPesoPadrao23,
      controladoresPesagem.aPesoPadrao24,
      controladoresPesagem.aPesoPadrao25,
    ];
    var coluna6 = [
      controladoresPesagem.aPesoPadrao26,
      controladoresPesagem.aPesoPadrao27,
      controladoresPesagem.aPesoPadrao28,
      controladoresPesagem.aPesoPadrao29,
      controladoresPesagem.aPesoPadrao30,
    ];
    var coluna7 = [
      controladoresPesagem.aPesoPadrao31,
      controladoresPesagem.aPesoPadrao32,
      controladoresPesagem.aPesoPadrao33,
      controladoresPesagem.aPesoPadrao34,
      controladoresPesagem.aPesoPadrao35,
    ];
    var coluna8 = [
      controladoresPesagem.aPesoPadrao36,
      controladoresPesagem.aPesoPadrao37,
      controladoresPesagem.aPesoPadrao38,
      controladoresPesagem.aPesoPadrao39,
      controladoresPesagem.aPesoPadrao40,
    ];
    var coluna9 = [
      controladoresPesagem.aPesoPadrao41,
      controladoresPesagem.aPesoPadrao42,
      controladoresPesagem.aPesoPadrao43,
      controladoresPesagem.aPesoPadrao44,
      controladoresPesagem.aPesoPadrao45,
    ];
    var coluna10 = [
      controladoresPesagem.aPesoPadrao46,
      controladoresPesagem.aPesoPadrao47,
      controladoresPesagem.aPesoPadrao48,
      controladoresPesagem.aPesoPadrao49,
      controladoresPesagem.aPesoPadrao50,
    ];
    var coluna11 = [
      controladoresPesagem.aPesoPadrao51,
      controladoresPesagem.aPesoPadrao52,
      controladoresPesagem.aPesoPadrao53,
      controladoresPesagem.aPesoPadrao54,
      controladoresPesagem.aPesoPadrao55,
    ];
    var coluna12 = [
      controladoresPesagem.aPesoPadrao56,
      controladoresPesagem.aPesoPadrao57,
      controladoresPesagem.aPesoPadrao58,
      controladoresPesagem.aPesoPadrao59,
      controladoresPesagem.aPesoPadrao60,
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
      controladoresPesagem.mapa.text = "715";
    } else {
      controladoresPesagem.mapa.text = "";
    }

    if (temValor716Coluna1) {
      controladoresPesagem.mapa2.text = "716";
    } else {
      controladoresPesagem.mapa2.text = "";
    }
    if (temValor717Coluna1) {
      controladoresPesagem.mapa3.text = "717";
    } else {
      controladoresPesagem.mapa3.text = "";
    }
    if (temValorGrandeColuna1) {
      controladoresPesagem.mapa4.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa4.text = "";
    }
    if (temValor529Coluna1) {
      controladoresPesagem.mapa5.text = "529";
    } else {
      controladoresPesagem.mapa5.text = "";
    }
    if (temValor530Coluna1) {
      controladoresPesagem.mapa6.text = "530";
    } else {
      controladoresPesagem.mapa6.text = "";
    }
    if (temValor531Coluna1) {
      controladoresPesagem.mapa7.text = "531";
    } else {
      controladoresPesagem.mapa7.text = "";
    }
    if (temValor532Coluna1) {
      controladoresPesagem.mapa8.text = "532";
    } else {
      controladoresPesagem.mapa8.text = "";
    }
    if (temValor533Coluna1) {
      controladoresPesagem.mapa9.text = "533";
    } else {
      controladoresPesagem.mapa9.text = "";
    }
    if (temValor633a641Coluna1) {
      controladoresPesagem.mapa10.text = "633 a 641";
    } else {
      controladoresPesagem.mapa10.text = "";
    }
    if (temValor642a650Coluna1) {
      controladoresPesagem.mapa11.text = "642 a 650";
    } else {
      controladoresPesagem.mapa11.text = "";
    }
    if (temValor713Coluna1) {
      controladoresPesagem.mapa12.text = "713";
    } else {
      controladoresPesagem.mapa12.text = "";
    }
    if (temValor714Coluna1) {
      controladoresPesagem.mapa13.text = "714";
    } else {
      controladoresPesagem.mapa13.text = "";
    }
////////////////////
    if (temValor715Coluna2) {
      controladoresPesagem.mapa14.text = "715";
    } else {
      controladoresPesagem.mapa14.text = "";
    }

    if (temValor716Coluna2) {
      controladoresPesagem.mapa15.text = "716";
    } else {
      controladoresPesagem.mapa15.text = "";
    }
    if (temValor717Coluna2) {
      controladoresPesagem.mapa16.text = "717";
    } else {
      controladoresPesagem.mapa16.text = "";
    }
    if (temValorGrandeColuna2) {
      controladoresPesagem.mapa17.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa17.text = "";
    }
    if (temValor529Coluna2) {
      controladoresPesagem.mapa18.text = "529";
    } else {
      controladoresPesagem.mapa18.text = "";
    }
    if (temValor530Coluna2) {
      controladoresPesagem.mapa19.text = "530";
    } else {
      controladoresPesagem.mapa19.text = "";
    }
    if (temValor531Coluna2) {
      controladoresPesagem.mapa20.text = "531";
    } else {
      controladoresPesagem.mapa20.text = "";
    }
    if (temValor532Coluna2) {
      controladoresPesagem.mapa21.text = "532";
    } else {
      controladoresPesagem.mapa21.text = "";
    }
    if (temValor533Coluna2) {
      controladoresPesagem.mapa22.text = "533";
    } else {
      controladoresPesagem.mapa22.text = "";
    }
    if (temValor633a641Coluna2) {
      controladoresPesagem.mapa23.text = "633 a 641";
    } else {
      controladoresPesagem.mapa23.text = "";
    }
    if (temValor642a650Coluna2) {
      controladoresPesagem.mapa24.text = "642 a 650";
    } else {
      controladoresPesagem.mapa24.text = "";
    }
    if (temValor713Coluna2) {
      controladoresPesagem.mapa25.text = "713";
    } else {
      controladoresPesagem.mapa25.text = "";
    }
    if (temValor714Coluna2) {
      controladoresPesagem.mapa26.text = "714";
    } else {
      controladoresPesagem.mapa26.text = "";
    }

////////////////////
    if (temValor715Coluna3) {
      controladoresPesagem.mapa27.text = "715";
    } else {
      controladoresPesagem.mapa27.text = "";
    }

    if (temValor716Coluna3) {
      controladoresPesagem.mapa28.text = "716";
    } else {
      controladoresPesagem.mapa28.text = "";
    }
    if (temValor717Coluna3) {
      controladoresPesagem.mapa29.text = "717";
    } else {
      controladoresPesagem.mapa29.text = "";
    }
    if (temValorGrandeColuna3) {
      controladoresPesagem.mapa30.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa30.text = "";
    }
    if (temValor529Coluna3) {
      controladoresPesagem.mapa31.text = "529";
    } else {
      controladoresPesagem.mapa31.text = "";
    }
    if (temValor530Coluna3) {
      controladoresPesagem.mapa32.text = "530";
    } else {
      controladoresPesagem.mapa32.text = "";
    }
    if (temValor531Coluna3) {
      controladoresPesagem.mapa33.text = "531";
    } else {
      controladoresPesagem.mapa33.text = "";
    }
    if (temValor532Coluna3) {
      controladoresPesagem.mapa34.text = "532";
    } else {
      controladoresPesagem.mapa34.text = "";
    }
    if (temValor533Coluna3) {
      controladoresPesagem.mapa35.text = "533";
    } else {
      controladoresPesagem.mapa35.text = "";
    }
    if (temValor633a641Coluna3) {
      controladoresPesagem.mapa36.text = "633 a 641";
    } else {
      controladoresPesagem.mapa36.text = "";
    }
    if (temValor642a650Coluna3) {
      controladoresPesagem.mapa37.text = "642 a 650";
    } else {
      controladoresPesagem.mapa37.text = "";
    }
    if (temValor713Coluna3) {
      controladoresPesagem.mapa38.text = "713";
    } else {
      controladoresPesagem.mapa38.text = "";
    }
    if (temValor714Coluna3) {
      controladoresPesagem.mapa39.text = "714";
    } else {
      controladoresPesagem.mapa39.text = "";
    }
////////////////////
    if (temValor715Coluna4) {
      controladoresPesagem.mapa40.text = "715";
    } else {
      controladoresPesagem.mapa40.text = "";
    }

    if (temValor716Coluna4) {
      controladoresPesagem.mapa41.text = "716";
    } else {
      controladoresPesagem.mapa41.text = "";
    }
    if (temValor717Coluna4) {
      controladoresPesagem.mapa42.text = "717";
    } else {
      controladoresPesagem.mapa42.text = "";
    }
    if (temValorGrandeColuna4) {
      controladoresPesagem.mapa43.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa43.text = "";
    }
    if (temValor529Coluna4) {
      controladoresPesagem.mapa44.text = "529";
    } else {
      controladoresPesagem.mapa44.text = "";
    }
    if (temValor530Coluna4) {
      controladoresPesagem.mapa45.text = "530";
    } else {
      controladoresPesagem.mapa45.text = "";
    }
    if (temValor531Coluna4) {
      controladoresPesagem.mapa46.text = "531";
    } else {
      controladoresPesagem.mapa46.text = "";
    }
    if (temValor532Coluna4) {
      controladoresPesagem.mapa47.text = "532";
    } else {
      controladoresPesagem.mapa47.text = "";
    }
    if (temValor533Coluna4) {
      controladoresPesagem.mapa48.text = "533";
    } else {
      controladoresPesagem.mapa48.text = "";
    }
    if (temValor633a641Coluna4) {
      controladoresPesagem.mapa49.text = "633 a 641";
    } else {
      controladoresPesagem.mapa49.text = "";
    }
    if (temValor642a650Coluna4) {
      controladoresPesagem.mapa50.text = "642 a 650";
    } else {
      controladoresPesagem.mapa50.text = "";
    }
    if (temValor713Coluna4) {
      controladoresPesagem.mapa51.text = "713";
    } else {
      controladoresPesagem.mapa51.text = "";
    }
    if (temValor714Coluna4) {
      controladoresPesagem.mapa52.text = "714";
    } else {
      controladoresPesagem.mapa52.text = "";
    }
////////////////////
    if (temValor715Coluna5) {
      controladoresPesagem.mapa53.text = "715";
    } else {
      controladoresPesagem.mapa53.text = "";
    }

    if (temValor716Coluna5) {
      controladoresPesagem.mapa54.text = "716";
    } else {
      controladoresPesagem.mapa54.text = "";
    }
    if (temValor717Coluna5) {
      controladoresPesagem.mapa55.text = "717";
    } else {
      controladoresPesagem.mapa55.text = "";
    }
    if (temValorGrandeColuna5) {
      controladoresPesagem.mapa56.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa56.text = "";
    }
    if (temValor529Coluna5) {
      controladoresPesagem.mapa57.text = "529";
    } else {
      controladoresPesagem.mapa57.text = "";
    }
    if (temValor530Coluna5) {
      controladoresPesagem.mapa58.text = "530";
    } else {
      controladoresPesagem.mapa58.text = "";
    }
    if (temValor531Coluna5) {
      controladoresPesagem.mapa59.text = "531";
    } else {
      controladoresPesagem.mapa59.text = "";
    }
    if (temValor532Coluna5) {
      controladoresPesagem.mapa60.text = "532";
    } else {
      controladoresPesagem.mapa60.text = "";
    }
    if (temValor533Coluna5) {
      controladoresPesagem.mapa61.text = "533";
    } else {
      controladoresPesagem.mapa61.text = "";
    }
    if (temValor633a641Coluna5) {
      controladoresPesagem.mapa62.text = "633 a 641";
    } else {
      controladoresPesagem.mapa62.text = "";
    }
    if (temValor642a650Coluna5) {
      controladoresPesagem.mapa63.text = "642 a 650";
    } else {
      controladoresPesagem.mapa63.text = "";
    }
    if (temValor713Coluna5) {
      controladoresPesagem.mapa64.text = "713";
    } else {
      controladoresPesagem.mapa64.text = "";
    }
    if (temValor714Coluna5) {
      controladoresPesagem.mapa65.text = "714";
    } else {
      controladoresPesagem.mapa65.text = "";
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
      controladoresPesagem.mapa66.text = "715";
    } else {
      controladoresPesagem.mapa66.text = "";
    }

    if (temValor716Coluna6) {
      controladoresPesagem.mapa67.text = "716";
    } else {
      controladoresPesagem.mapa67.text = "";
    }
    if (temValor717Coluna6) {
      controladoresPesagem.mapa68.text = "717";
    } else {
      controladoresPesagem.mapa68.text = "";
    }
    if (temValorGrandeColuna6) {
      controladoresPesagem.mapa69.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa69.text = "";
    }
    if (temValor529Coluna6) {
      controladoresPesagem.mapa70.text = "529";
    } else {
      controladoresPesagem.mapa70.text = "";
    }
    if (temValor530Coluna6) {
      controladoresPesagem.mapa71.text = "530";
    } else {
      controladoresPesagem.mapa71.text = "";
    }
    if (temValor531Coluna6) {
      controladoresPesagem.mapa72.text = "531";
    } else {
      controladoresPesagem.mapa72.text = "";
    }
    if (temValor532Coluna6) {
      controladoresPesagem.mapa73.text = "532";
    } else {
      controladoresPesagem.mapa73.text = "";
    }
    if (temValor533Coluna6) {
      controladoresPesagem.mapa74.text = "533";
    } else {
      controladoresPesagem.mapa74.text = "";
    }
    if (temValor633a641Coluna6) {
      controladoresPesagem.mapa75.text = "633 a 641";
    } else {
      controladoresPesagem.mapa75.text = "";
    }
    if (temValor642a650Coluna6) {
      controladoresPesagem.mapa76.text = "642 a 650";
    } else {
      controladoresPesagem.mapa76.text = "";
    }
    if (temValor713Coluna6) {
      controladoresPesagem.mapa77.text = "713";
    } else {
      controladoresPesagem.mapa77.text = "";
    }
    if (temValor714Coluna6) {
      controladoresPesagem.mapa78.text = "714";
    } else {
      controladoresPesagem.mapa78.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna7) {
      controladoresPesagem.mapa79.text = "715";
    } else {
      controladoresPesagem.mapa79.text = "";
    }

    if (temValor716Coluna7) {
      controladoresPesagem.mapa80.text = "716";
    } else {
      controladoresPesagem.mapa80.text = "";
    }
    if (temValor717Coluna7) {
      controladoresPesagem.mapa81.text = "717";
    } else {
      controladoresPesagem.mapa81.text = "";
    }
    if (temValorGrandeColuna7) {
      controladoresPesagem.mapa82.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa82.text = "";
    }
    if (temValor529Coluna7) {
      controladoresPesagem.mapa83.text = "529";
    } else {
      controladoresPesagem.mapa83.text = "";
    }
    if (temValor530Coluna7) {
      controladoresPesagem.mapa84.text = "530";
    } else {
      controladoresPesagem.mapa84.text = "";
    }
    if (temValor531Coluna7) {
      controladoresPesagem.mapa85.text = "531";
    } else {
      controladoresPesagem.mapa85.text = "";
    }
    if (temValor532Coluna7) {
      controladoresPesagem.mapa86.text = "532";
    } else {
      controladoresPesagem.mapa86.text = "";
    }
    if (temValor533Coluna7) {
      controladoresPesagem.mapa87.text = "533";
    } else {
      controladoresPesagem.mapa87.text = "";
    }
    if (temValor633a641Coluna7) {
      controladoresPesagem.mapa88.text = "633 a 641";
    } else {
      controladoresPesagem.mapa88.text = "";
    }
    if (temValor642a650Coluna7) {
      controladoresPesagem.mapa89.text = "642 a 650";
    } else {
      controladoresPesagem.mapa89.text = "";
    }
    if (temValor713Coluna7) {
      controladoresPesagem.mapa90.text = "713";
    } else {
      controladoresPesagem.mapa90.text = "";
    }
    if (temValor714Coluna7) {
      controladoresPesagem.mapa91.text = "714";
    } else {
      controladoresPesagem.mapa91.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna8) {
      controladoresPesagem.mapa92.text = "715";
    } else {
      controladoresPesagem.mapa92.text = "";
    }

    if (temValor716Coluna8) {
      controladoresPesagem.mapa93.text = "716";
    } else {
      controladoresPesagem.mapa93.text = "";
    }
    if (temValor717Coluna8) {
      controladoresPesagem.mapa94.text = "717";
    } else {
      controladoresPesagem.mapa94.text = "";
    }
    if (temValorGrandeColuna8) {
      controladoresPesagem.mapa95.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa95.text = "";
    }
    if (temValor529Coluna8) {
      controladoresPesagem.mapa96.text = "529";
    } else {
      controladoresPesagem.mapa96.text = "";
    }
    if (temValor530Coluna8) {
      controladoresPesagem.mapa97.text = "530";
    } else {
      controladoresPesagem.mapa97.text = "";
    }
    if (temValor531Coluna8) {
      controladoresPesagem.mapa98.text = "531";
    } else {
      controladoresPesagem.mapa98.text = "";
    }
    if (temValor532Coluna8) {
      controladoresPesagem.mapa99.text = "532";
    } else {
      controladoresPesagem.mapa99.text = "";
    }
    if (temValor533Coluna8) {
      controladoresPesagem.mapa100.text = "533";
    } else {
      controladoresPesagem.mapa100.text = "";
    }
    if (temValor633a641Coluna8) {
      controladoresPesagem.mapa101.text = "633 a 641";
    } else {
      controladoresPesagem.mapa101.text = "";
    }
    if (temValor642a650Coluna8) {
      controladoresPesagem.mapa102.text = "642 a 650";
    } else {
      controladoresPesagem.mapa102.text = "";
    }
    if (temValor713Coluna8) {
      controladoresPesagem.mapa103.text = "713";
    } else {
      controladoresPesagem.mapa103.text = "";
    }
    if (temValor714Coluna8) {
      controladoresPesagem.mapa104.text = "714";
    } else {
      controladoresPesagem.mapa104.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna9) {
      controladoresPesagem.mapa105.text = "715";
    } else {
      controladoresPesagem.mapa105.text = "";
    }

    if (temValor716Coluna9) {
      controladoresPesagem.mapa106.text = "716";
    } else {
      controladoresPesagem.mapa106.text = "";
    }
    if (temValor717Coluna9) {
      controladoresPesagem.mapa107.text = "717";
    } else {
      controladoresPesagem.mapa107.text = "";
    }
    if (temValorGrandeColuna9) {
      controladoresPesagem.mapa108.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa108.text = "";
    }
    if (temValor529Coluna9) {
      controladoresPesagem.mapa109.text = "529";
    } else {
      controladoresPesagem.mapa109.text = "";
    }
    if (temValor530Coluna9) {
      controladoresPesagem.mapa110.text = "530";
    } else {
      controladoresPesagem.mapa110.text = "";
    }
    if (temValor531Coluna9) {
      controladoresPesagem.mapa111.text = "531";
    } else {
      controladoresPesagem.mapa111.text = "";
    }
    if (temValor532Coluna9) {
      controladoresPesagem.mapa112.text = "532";
    } else {
      controladoresPesagem.mapa112.text = "";
    }
    if (temValor533Coluna9) {
      controladoresPesagem.mapa113.text = "533";
    } else {
      controladoresPesagem.mapa113.text = "";
    }
    if (temValor633a641Coluna9) {
      controladoresPesagem.mapa114.text = "633 a 641";
    } else {
      controladoresPesagem.mapa114.text = "";
    }
    if (temValor642a650Coluna9) {
      controladoresPesagem.mapa115.text = "642 a 650";
    } else {
      controladoresPesagem.mapa115.text = "";
    }
    if (temValor713Coluna9) {
      controladoresPesagem.mapa116.text = "713";
    } else {
      controladoresPesagem.mapa116.text = "";
    }
    if (temValor714Coluna9) {
      controladoresPesagem.mapa117.text = "714";
    } else {
      controladoresPesagem.mapa117.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna10) {
      controladoresPesagem.mapa118.text = "715";
    } else {
      controladoresPesagem.mapa118.text = "";
    }

    if (temValor716Coluna10) {
      controladoresPesagem.mapa119.text = "716";
    } else {
      controladoresPesagem.mapa119.text = "";
    }
    if (temValor717Coluna10) {
      controladoresPesagem.mapa120.text = "717";
    } else {
      controladoresPesagem.mapa120.text = "";
    }
    if (temValorGrandeColuna10) {
      controladoresPesagem.mapa121.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa121.text = "";
    }
    if (temValor529Coluna10) {
      controladoresPesagem.mapa122.text = "529";
    } else {
      controladoresPesagem.mapa122.text = "";
    }
    if (temValor530Coluna10) {
      controladoresPesagem.mapa123.text = "530";
    } else {
      controladoresPesagem.mapa123.text = "";
    }
    if (temValor531Coluna10) {
      controladoresPesagem.mapa124.text = "531";
    } else {
      controladoresPesagem.mapa124.text = "";
    }
    if (temValor532Coluna10) {
      controladoresPesagem.mapa125.text = "532";
    } else {
      controladoresPesagem.mapa125.text = "";
    }
    if (temValor533Coluna10) {
      controladoresPesagem.mapa126.text = "533";
    } else {
      controladoresPesagem.mapa126.text = "";
    }
    if (temValor633a641Coluna10) {
      controladoresPesagem.mapa127.text = "633 a 641";
    } else {
      controladoresPesagem.mapa127.text = "";
    }
    if (temValor642a650Coluna10) {
      controladoresPesagem.mapa128.text = "642 a 650";
    } else {
      controladoresPesagem.mapa128.text = "";
    }
    if (temValor713Coluna10) {
      controladoresPesagem.mapa129.text = "713";
    } else {
      controladoresPesagem.mapa129.text = "";
    }
    if (temValor714Coluna10) {
      controladoresPesagem.mapa130.text = "714";
    } else {
      controladoresPesagem.mapa130.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna11) {
      controladoresPesagem.mapa131.text = "715";
    } else {
      controladoresPesagem.mapa131.text = "";
    }

    if (temValor716Coluna11) {
      controladoresPesagem.mapa132.text = "716";
    } else {
      controladoresPesagem.mapa132.text = "";
    }
    if (temValor717Coluna11) {
      controladoresPesagem.mapa133.text = "717";
    } else {
      controladoresPesagem.mapa133.text = "";
    }
    if (temValorGrandeColuna11) {
      controladoresPesagem.mapa134.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa134.text = "";
    }
    if (temValor529Coluna11) {
      controladoresPesagem.mapa135.text = "529";
    } else {
      controladoresPesagem.mapa135.text = "";
    }
    if (temValor530Coluna11) {
      controladoresPesagem.mapa136.text = "530";
    } else {
      controladoresPesagem.mapa136.text = "";
    }
    if (temValor531Coluna11) {
      controladoresPesagem.mapa137.text = "531";
    } else {
      controladoresPesagem.mapa137.text = "";
    }
    if (temValor532Coluna11) {
      controladoresPesagem.mapa138.text = "532";
    } else {
      controladoresPesagem.mapa138.text = "";
    }
    if (temValor533Coluna11) {
      controladoresPesagem.mapa139.text = "533";
    } else {
      controladoresPesagem.mapa139.text = "";
    }
    if (temValor633a641Coluna11) {
      controladoresPesagem.mapa140.text = "633 a 641";
    } else {
      controladoresPesagem.mapa140.text = "";
    }
    if (temValor642a650Coluna11) {
      controladoresPesagem.mapa141.text = "642 a 650";
    } else {
      controladoresPesagem.mapa141.text = "";
    }
    if (temValor713Coluna11) {
      controladoresPesagem.mapa142.text = "713";
    } else {
      controladoresPesagem.mapa142.text = "";
    }
    if (temValor714Coluna11) {
      controladoresPesagem.mapa143.text = "714";
    } else {
      controladoresPesagem.mapa143.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna12) {
      controladoresPesagem.mapa144.text = "715";
    } else {
      controladoresPesagem.mapa144.text = "";
    }

    if (temValor716Coluna12) {
      controladoresPesagem.mapa145.text = "716";
    } else {
      controladoresPesagem.mapa145.text = "";
    }
    if (temValor717Coluna12) {
      controladoresPesagem.mapa146.text = "717";
    } else {
      controladoresPesagem.mapa146.text = "";
    }
    if (temValorGrandeColuna12) {
      controladoresPesagem.mapa147.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa147.text = "";
    }
    if (temValor529Coluna12) {
      controladoresPesagem.mapa148.text = "529";
    } else {
      controladoresPesagem.mapa148.text = "";
    }
    if (temValor530Coluna12) {
      controladoresPesagem.mapa149.text = "530";
    } else {
      controladoresPesagem.mapa149.text = "";
    }
    if (temValor531Coluna12) {
      controladoresPesagem.mapa150.text = "531";
    } else {
      controladoresPesagem.mapa150.text = "";
    }
    if (temValor532Coluna12) {
      controladoresPesagem.mapa151.text = "532";
    } else {
      controladoresPesagem.mapa151.text = "";
    }
    if (temValor533Coluna12) {
      controladoresPesagem.mapa152.text = "533";
    } else {
      controladoresPesagem.mapa152.text = "";
    }
    if (temValor633a641Coluna12) {
      controladoresPesagem.mapa153.text = "633 a 641";
    } else {
      controladoresPesagem.mapa153.text = "";
    }
    if (temValor642a650Coluna12) {
      controladoresPesagem.mapa154.text = "642 a 650";
    } else {
      controladoresPesagem.mapa154.text = "";
    }
    if (temValor713Coluna12) {
      controladoresPesagem.mapa155.text = "713";
    } else {
      controladoresPesagem.mapa155.text = "";
    }
    if (temValor714Coluna12) {
      controladoresPesagem.mapa156.text = "714";
    } else {
      controladoresPesagem.mapa156.text = "";
    }
  }

  void verificaEAtualizaControllerMapa() {
    var coluna1 = [
      controladoresPesagem.aPesoPadrao1,
      controladoresPesagem.aPesoPadrao2,
      controladoresPesagem.aPesoPadrao3,
      controladoresPesagem.aPesoPadrao4,
      controladoresPesagem.aPesoPadrao5,
    ];
    var coluna2 = [
      controladoresPesagem.aPesoPadrao6,
      controladoresPesagem.aPesoPadrao7,
      controladoresPesagem.aPesoPadrao8,
      controladoresPesagem.aPesoPadrao9,
      controladoresPesagem.aPesoPadrao10,
    ];
    var coluna3 = [
      controladoresPesagem.aPesoPadrao11,
      controladoresPesagem.aPesoPadrao12,
      controladoresPesagem.aPesoPadrao13,
      controladoresPesagem.aPesoPadrao14,
      controladoresPesagem.aPesoPadrao15,
    ];
    var coluna4 = [
      controladoresPesagem.aPesoPadrao16,
      controladoresPesagem.aPesoPadrao17,
      controladoresPesagem.aPesoPadrao18,
      controladoresPesagem.aPesoPadrao19,
      controladoresPesagem.aPesoPadrao20,
    ];
    var coluna5 = [
      controladoresPesagem.aPesoPadrao21,
      controladoresPesagem.aPesoPadrao22,
      controladoresPesagem.aPesoPadrao23,
      controladoresPesagem.aPesoPadrao24,
      controladoresPesagem.aPesoPadrao25,
    ];
    var coluna6 = [
      controladoresPesagem.aPesoPadrao26,
      controladoresPesagem.aPesoPadrao27,
      controladoresPesagem.aPesoPadrao28,
      controladoresPesagem.aPesoPadrao29,
      controladoresPesagem.aPesoPadrao30,
    ];
    var coluna7 = [
      controladoresPesagem.aPesoPadrao31,
      controladoresPesagem.aPesoPadrao32,
      controladoresPesagem.aPesoPadrao33,
      controladoresPesagem.aPesoPadrao34,
      controladoresPesagem.aPesoPadrao35,
    ];
    var coluna8 = [
      controladoresPesagem.aPesoPadrao36,
      controladoresPesagem.aPesoPadrao37,
      controladoresPesagem.aPesoPadrao38,
      controladoresPesagem.aPesoPadrao39,
      controladoresPesagem.aPesoPadrao40,
    ];
    var coluna9 = [
      controladoresPesagem.aPesoPadrao41,
      controladoresPesagem.aPesoPadrao42,
      controladoresPesagem.aPesoPadrao43,
      controladoresPesagem.aPesoPadrao44,
      controladoresPesagem.aPesoPadrao45,
    ];
    var coluna10 = [
      controladoresPesagem.aPesoPadrao46,
      controladoresPesagem.aPesoPadrao47,
      controladoresPesagem.aPesoPadrao48,
      controladoresPesagem.aPesoPadrao49,
      controladoresPesagem.aPesoPadrao50,
    ];
    var coluna11 = [
      controladoresPesagem.aPesoPadrao51,
      controladoresPesagem.aPesoPadrao52,
      controladoresPesagem.aPesoPadrao53,
      controladoresPesagem.aPesoPadrao54,
      controladoresPesagem.aPesoPadrao55,
    ];
    var coluna12 = [
      controladoresPesagem.aPesoPadrao56,
      controladoresPesagem.aPesoPadrao57,
      controladoresPesagem.aPesoPadrao58,
      controladoresPesagem.aPesoPadrao59,
      controladoresPesagem.aPesoPadrao60,
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
      controladoresPesagem.mapa.text = "715";
    } else {
      controladoresPesagem.mapa.text = "";
    }

    if (temValor716Coluna1) {
      controladoresPesagem.mapa2.text = "716";
    } else {
      controladoresPesagem.mapa2.text = "";
    }
    if (temValor717Coluna1) {
      controladoresPesagem.mapa3.text = "717";
    } else {
      controladoresPesagem.mapa3.text = "";
    }
    if (temValorGrandeColuna1) {
      controladoresPesagem.mapa4.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa4.text = "";
    }
    if (temValor529Coluna1) {
      controladoresPesagem.mapa5.text = "529";
    } else {
      controladoresPesagem.mapa5.text = "";
    }
    if (temValor530Coluna1) {
      controladoresPesagem.mapa6.text = "530";
    } else {
      controladoresPesagem.mapa6.text = "";
    }
    if (temValor531Coluna1) {
      controladoresPesagem.mapa7.text = "531";
    } else {
      controladoresPesagem.mapa7.text = "";
    }
    if (temValor532Coluna1) {
      controladoresPesagem.mapa8.text = "532";
    } else {
      controladoresPesagem.mapa8.text = "";
    }
    if (temValor533Coluna1) {
      controladoresPesagem.mapa9.text = "533";
    } else {
      controladoresPesagem.mapa9.text = "";
    }
    if (temValor633a641Coluna1) {
      controladoresPesagem.mapa10.text = "633 a 641";
    } else {
      controladoresPesagem.mapa10.text = "";
    }
    if (temValor642a650Coluna1) {
      controladoresPesagem.mapa11.text = "642 a 650";
    } else {
      controladoresPesagem.mapa11.text = "";
    }
    if (temValor713Coluna1) {
      controladoresPesagem.mapa12.text = "713";
    } else {
      controladoresPesagem.mapa12.text = "";
    }
    if (temValor714Coluna1) {
      controladoresPesagem.mapa13.text = "714";
    } else {
      controladoresPesagem.mapa13.text = "";
    }
////////////////////
    if (temValor715Coluna2) {
      controladoresPesagem.mapa14.text = "715";
    } else {
      controladoresPesagem.mapa14.text = "";
    }

    if (temValor716Coluna2) {
      controladoresPesagem.mapa15.text = "716";
    } else {
      controladoresPesagem.mapa15.text = "";
    }
    if (temValor717Coluna2) {
      controladoresPesagem.mapa16.text = "717";
    } else {
      controladoresPesagem.mapa16.text = "";
    }
    if (temValorGrandeColuna2) {
      controladoresPesagem.mapa17.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa17.text = "";
    }
    if (temValor529Coluna2) {
      controladoresPesagem.mapa18.text = "529";
    } else {
      controladoresPesagem.mapa18.text = "";
    }
    if (temValor530Coluna2) {
      controladoresPesagem.mapa19.text = "530";
    } else {
      controladoresPesagem.mapa19.text = "";
    }
    if (temValor531Coluna2) {
      controladoresPesagem.mapa20.text = "531";
    } else {
      controladoresPesagem.mapa20.text = "";
    }
    if (temValor532Coluna2) {
      controladoresPesagem.mapa21.text = "532";
    } else {
      controladoresPesagem.mapa21.text = "";
    }
    if (temValor533Coluna2) {
      controladoresPesagem.mapa22.text = "533";
    } else {
      controladoresPesagem.mapa22.text = "";
    }
    if (temValor633a641Coluna2) {
      controladoresPesagem.mapa23.text = "633 a 641";
    } else {
      controladoresPesagem.mapa23.text = "";
    }
    if (temValor642a650Coluna2) {
      controladoresPesagem.mapa24.text = "642 a 650";
    } else {
      controladoresPesagem.mapa24.text = "";
    }
    if (temValor713Coluna2) {
      controladoresPesagem.mapa25.text = "713";
    } else {
      controladoresPesagem.mapa25.text = "";
    }
    if (temValor714Coluna2) {
      controladoresPesagem.mapa26.text = "714";
    } else {
      controladoresPesagem.mapa26.text = "";
    }

////////////////////
    if (temValor715Coluna3) {
      controladoresPesagem.mapa27.text = "715";
    } else {
      controladoresPesagem.mapa27.text = "";
    }

    if (temValor716Coluna3) {
      controladoresPesagem.mapa28.text = "716";
    } else {
      controladoresPesagem.mapa28.text = "";
    }
    if (temValor717Coluna3) {
      controladoresPesagem.mapa29.text = "717";
    } else {
      controladoresPesagem.mapa29.text = "";
    }
    if (temValorGrandeColuna3) {
      controladoresPesagem.mapa30.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa30.text = "";
    }
    if (temValor529Coluna3) {
      controladoresPesagem.mapa31.text = "529";
    } else {
      controladoresPesagem.mapa31.text = "";
    }
    if (temValor530Coluna3) {
      controladoresPesagem.mapa32.text = "530";
    } else {
      controladoresPesagem.mapa32.text = "";
    }
    if (temValor531Coluna3) {
      controladoresPesagem.mapa33.text = "531";
    } else {
      controladoresPesagem.mapa33.text = "";
    }
    if (temValor532Coluna3) {
      controladoresPesagem.mapa34.text = "532";
    } else {
      controladoresPesagem.mapa34.text = "";
    }
    if (temValor533Coluna3) {
      controladoresPesagem.mapa35.text = "533";
    } else {
      controladoresPesagem.mapa35.text = "";
    }
    if (temValor633a641Coluna3) {
      controladoresPesagem.mapa36.text = "633 a 641";
    } else {
      controladoresPesagem.mapa36.text = "";
    }
    if (temValor642a650Coluna3) {
      controladoresPesagem.mapa37.text = "642 a 650";
    } else {
      controladoresPesagem.mapa37.text = "";
    }
    if (temValor713Coluna3) {
      controladoresPesagem.mapa38.text = "713";
    } else {
      controladoresPesagem.mapa38.text = "";
    }
    if (temValor714Coluna3) {
      controladoresPesagem.mapa39.text = "714";
    } else {
      controladoresPesagem.mapa39.text = "";
    }
////////////////////
    if (temValor715Coluna4) {
      controladoresPesagem.mapa40.text = "715";
    } else {
      controladoresPesagem.mapa40.text = "";
    }

    if (temValor716Coluna4) {
      controladoresPesagem.mapa41.text = "716";
    } else {
      controladoresPesagem.mapa41.text = "";
    }
    if (temValor717Coluna4) {
      controladoresPesagem.mapa42.text = "717";
    } else {
      controladoresPesagem.mapa42.text = "";
    }
    if (temValorGrandeColuna4) {
      controladoresPesagem.mapa43.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa43.text = "";
    }
    if (temValor529Coluna4) {
      controladoresPesagem.mapa44.text = "529";
    } else {
      controladoresPesagem.mapa44.text = "";
    }
    if (temValor530Coluna4) {
      controladoresPesagem.mapa45.text = "530";
    } else {
      controladoresPesagem.mapa45.text = "";
    }
    if (temValor531Coluna4) {
      controladoresPesagem.mapa46.text = "531";
    } else {
      controladoresPesagem.mapa46.text = "";
    }
    if (temValor532Coluna4) {
      controladoresPesagem.mapa47.text = "532";
    } else {
      controladoresPesagem.mapa47.text = "";
    }
    if (temValor533Coluna4) {
      controladoresPesagem.mapa48.text = "533";
    } else {
      controladoresPesagem.mapa48.text = "";
    }
    if (temValor633a641Coluna4) {
      controladoresPesagem.mapa49.text = "633 a 641";
    } else {
      controladoresPesagem.mapa49.text = "";
    }
    if (temValor642a650Coluna4) {
      controladoresPesagem.mapa50.text = "642 a 650";
    } else {
      controladoresPesagem.mapa50.text = "";
    }
    if (temValor713Coluna4) {
      controladoresPesagem.mapa51.text = "713";
    } else {
      controladoresPesagem.mapa51.text = "";
    }
    if (temValor714Coluna4) {
      controladoresPesagem.mapa52.text = "714";
    } else {
      controladoresPesagem.mapa52.text = "";
    }
////////////////////
    if (temValor715Coluna5) {
      controladoresPesagem.mapa53.text = "715";
    } else {
      controladoresPesagem.mapa53.text = "";
    }

    if (temValor716Coluna5) {
      controladoresPesagem.mapa54.text = "716";
    } else {
      controladoresPesagem.mapa54.text = "";
    }
    if (temValor717Coluna5) {
      controladoresPesagem.mapa55.text = "717";
    } else {
      controladoresPesagem.mapa55.text = "";
    }
    if (temValorGrandeColuna5) {
      controladoresPesagem.mapa56.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa56.text = "";
    }
    if (temValor529Coluna5) {
      controladoresPesagem.mapa57.text = "529";
    } else {
      controladoresPesagem.mapa57.text = "";
    }
    if (temValor530Coluna5) {
      controladoresPesagem.mapa58.text = "530";
    } else {
      controladoresPesagem.mapa58.text = "";
    }
    if (temValor531Coluna5) {
      controladoresPesagem.mapa59.text = "531";
    } else {
      controladoresPesagem.mapa59.text = "";
    }
    if (temValor532Coluna5) {
      controladoresPesagem.mapa60.text = "532";
    } else {
      controladoresPesagem.mapa60.text = "";
    }
    if (temValor533Coluna5) {
      controladoresPesagem.mapa61.text = "533";
    } else {
      controladoresPesagem.mapa61.text = "";
    }
    if (temValor633a641Coluna5) {
      controladoresPesagem.mapa62.text = "633 a 641";
    } else {
      controladoresPesagem.mapa62.text = "";
    }
    if (temValor642a650Coluna5) {
      controladoresPesagem.mapa63.text = "642 a 650";
    } else {
      controladoresPesagem.mapa63.text = "";
    }
    if (temValor713Coluna5) {
      controladoresPesagem.mapa64.text = "713";
    } else {
      controladoresPesagem.mapa64.text = "";
    }
    if (temValor714Coluna5) {
      controladoresPesagem.mapa65.text = "714";
    } else {
      controladoresPesagem.mapa65.text = "";
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
      controladoresPesagem.mapa66.text = "715";
    } else {
      controladoresPesagem.mapa66.text = "";
    }

    if (temValor716Coluna6) {
      controladoresPesagem.mapa67.text = "716";
    } else {
      controladoresPesagem.mapa67.text = "";
    }
    if (temValor717Coluna6) {
      controladoresPesagem.mapa68.text = "717";
    } else {
      controladoresPesagem.mapa68.text = "";
    }
    if (temValorGrandeColuna6) {
      controladoresPesagem.mapa69.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa69.text = "";
    }
    if (temValor529Coluna6) {
      controladoresPesagem.mapa70.text = "529";
    } else {
      controladoresPesagem.mapa70.text = "";
    }
    if (temValor530Coluna6) {
      controladoresPesagem.mapa71.text = "530";
    } else {
      controladoresPesagem.mapa71.text = "";
    }
    if (temValor531Coluna6) {
      controladoresPesagem.mapa72.text = "531";
    } else {
      controladoresPesagem.mapa72.text = "";
    }
    if (temValor532Coluna6) {
      controladoresPesagem.mapa73.text = "532";
    } else {
      controladoresPesagem.mapa73.text = "";
    }
    if (temValor533Coluna6) {
      controladoresPesagem.mapa74.text = "533";
    } else {
      controladoresPesagem.mapa74.text = "";
    }
    if (temValor633a641Coluna6) {
      controladoresPesagem.mapa75.text = "633 a 641";
    } else {
      controladoresPesagem.mapa75.text = "";
    }
    if (temValor642a650Coluna6) {
      controladoresPesagem.mapa76.text = "642 a 650";
    } else {
      controladoresPesagem.mapa76.text = "";
    }
    if (temValor713Coluna6) {
      controladoresPesagem.mapa77.text = "713";
    } else {
      controladoresPesagem.mapa77.text = "";
    }
    if (temValor714Coluna6) {
      controladoresPesagem.mapa78.text = "714";
    } else {
      controladoresPesagem.mapa78.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna7) {
      controladoresPesagem.mapa79.text = "715";
    } else {
      controladoresPesagem.mapa79.text = "";
    }

    if (temValor716Coluna7) {
      controladoresPesagem.mapa80.text = "716";
    } else {
      controladoresPesagem.mapa80.text = "";
    }
    if (temValor717Coluna7) {
      controladoresPesagem.mapa81.text = "717";
    } else {
      controladoresPesagem.mapa81.text = "";
    }
    if (temValorGrandeColuna7) {
      controladoresPesagem.mapa82.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa82.text = "";
    }
    if (temValor529Coluna7) {
      controladoresPesagem.mapa83.text = "529";
    } else {
      controladoresPesagem.mapa83.text = "";
    }
    if (temValor530Coluna7) {
      controladoresPesagem.mapa84.text = "530";
    } else {
      controladoresPesagem.mapa84.text = "";
    }
    if (temValor531Coluna7) {
      controladoresPesagem.mapa85.text = "531";
    } else {
      controladoresPesagem.mapa85.text = "";
    }
    if (temValor532Coluna7) {
      controladoresPesagem.mapa86.text = "532";
    } else {
      controladoresPesagem.mapa86.text = "";
    }
    if (temValor533Coluna7) {
      controladoresPesagem.mapa87.text = "533";
    } else {
      controladoresPesagem.mapa87.text = "";
    }
    if (temValor633a641Coluna7) {
      controladoresPesagem.mapa88.text = "633 a 641";
    } else {
      controladoresPesagem.mapa88.text = "";
    }
    if (temValor642a650Coluna7) {
      controladoresPesagem.mapa89.text = "642 a 650";
    } else {
      controladoresPesagem.mapa89.text = "";
    }
    if (temValor713Coluna7) {
      controladoresPesagem.mapa90.text = "713";
    } else {
      controladoresPesagem.mapa90.text = "";
    }
    if (temValor714Coluna7) {
      controladoresPesagem.mapa91.text = "714";
    } else {
      controladoresPesagem.mapa91.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna8) {
      controladoresPesagem.mapa92.text = "715";
    } else {
      controladoresPesagem.mapa92.text = "";
    }

    if (temValor716Coluna8) {
      controladoresPesagem.mapa93.text = "716";
    } else {
      controladoresPesagem.mapa93.text = "";
    }
    if (temValor717Coluna8) {
      controladoresPesagem.mapa94.text = "717";
    } else {
      controladoresPesagem.mapa94.text = "";
    }
    if (temValorGrandeColuna8) {
      controladoresPesagem.mapa95.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa95.text = "";
    }
    if (temValor529Coluna8) {
      controladoresPesagem.mapa96.text = "529";
    } else {
      controladoresPesagem.mapa96.text = "";
    }
    if (temValor530Coluna8) {
      controladoresPesagem.mapa97.text = "530";
    } else {
      controladoresPesagem.mapa97.text = "";
    }
    if (temValor531Coluna8) {
      controladoresPesagem.mapa98.text = "531";
    } else {
      controladoresPesagem.mapa98.text = "";
    }
    if (temValor532Coluna8) {
      controladoresPesagem.mapa99.text = "532";
    } else {
      controladoresPesagem.mapa99.text = "";
    }
    if (temValor533Coluna8) {
      controladoresPesagem.mapa100.text = "533";
    } else {
      controladoresPesagem.mapa100.text = "";
    }
    if (temValor633a641Coluna8) {
      controladoresPesagem.mapa101.text = "633 a 641";
    } else {
      controladoresPesagem.mapa101.text = "";
    }
    if (temValor642a650Coluna8) {
      controladoresPesagem.mapa102.text = "642 a 650";
    } else {
      controladoresPesagem.mapa102.text = "";
    }
    if (temValor713Coluna8) {
      controladoresPesagem.mapa103.text = "713";
    } else {
      controladoresPesagem.mapa103.text = "";
    }
    if (temValor714Coluna8) {
      controladoresPesagem.mapa104.text = "714";
    } else {
      controladoresPesagem.mapa104.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna9) {
      controladoresPesagem.mapa105.text = "715";
    } else {
      controladoresPesagem.mapa105.text = "";
    }

    if (temValor716Coluna9) {
      controladoresPesagem.mapa106.text = "716";
    } else {
      controladoresPesagem.mapa106.text = "";
    }
    if (temValor717Coluna9) {
      controladoresPesagem.mapa107.text = "717";
    } else {
      controladoresPesagem.mapa107.text = "";
    }
    if (temValorGrandeColuna9) {
      controladoresPesagem.mapa108.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa108.text = "";
    }
    if (temValor529Coluna9) {
      controladoresPesagem.mapa109.text = "529";
    } else {
      controladoresPesagem.mapa109.text = "";
    }
    if (temValor530Coluna9) {
      controladoresPesagem.mapa110.text = "530";
    } else {
      controladoresPesagem.mapa110.text = "";
    }
    if (temValor531Coluna9) {
      controladoresPesagem.mapa111.text = "531";
    } else {
      controladoresPesagem.mapa111.text = "";
    }
    if (temValor532Coluna9) {
      controladoresPesagem.mapa112.text = "532";
    } else {
      controladoresPesagem.mapa112.text = "";
    }
    if (temValor533Coluna9) {
      controladoresPesagem.mapa113.text = "533";
    } else {
      controladoresPesagem.mapa113.text = "";
    }
    if (temValor633a641Coluna9) {
      controladoresPesagem.mapa114.text = "633 a 641";
    } else {
      controladoresPesagem.mapa114.text = "";
    }
    if (temValor642a650Coluna9) {
      controladoresPesagem.mapa115.text = "642 a 650";
    } else {
      controladoresPesagem.mapa115.text = "";
    }
    if (temValor713Coluna9) {
      controladoresPesagem.mapa116.text = "713";
    } else {
      controladoresPesagem.mapa116.text = "";
    }
    if (temValor714Coluna9) {
      controladoresPesagem.mapa117.text = "714";
    } else {
      controladoresPesagem.mapa117.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna10) {
      controladoresPesagem.mapa118.text = "715";
    } else {
      controladoresPesagem.mapa118.text = "";
    }

    if (temValor716Coluna10) {
      controladoresPesagem.mapa119.text = "716";
    } else {
      controladoresPesagem.mapa119.text = "";
    }
    if (temValor717Coluna10) {
      controladoresPesagem.mapa120.text = "717";
    } else {
      controladoresPesagem.mapa120.text = "";
    }
    if (temValorGrandeColuna10) {
      controladoresPesagem.mapa121.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa121.text = "";
    }
    if (temValor529Coluna10) {
      controladoresPesagem.mapa122.text = "529";
    } else {
      controladoresPesagem.mapa122.text = "";
    }
    if (temValor530Coluna10) {
      controladoresPesagem.mapa123.text = "530";
    } else {
      controladoresPesagem.mapa123.text = "";
    }
    if (temValor531Coluna10) {
      controladoresPesagem.mapa124.text = "531";
    } else {
      controladoresPesagem.mapa124.text = "";
    }
    if (temValor532Coluna10) {
      controladoresPesagem.mapa125.text = "532";
    } else {
      controladoresPesagem.mapa125.text = "";
    }
    if (temValor533Coluna10) {
      controladoresPesagem.mapa126.text = "533";
    } else {
      controladoresPesagem.mapa126.text = "";
    }
    if (temValor633a641Coluna10) {
      controladoresPesagem.mapa127.text = "633 a 641";
    } else {
      controladoresPesagem.mapa127.text = "";
    }
    if (temValor642a650Coluna10) {
      controladoresPesagem.mapa128.text = "642 a 650";
    } else {
      controladoresPesagem.mapa128.text = "";
    }
    if (temValor713Coluna10) {
      controladoresPesagem.mapa129.text = "713";
    } else {
      controladoresPesagem.mapa129.text = "";
    }
    if (temValor714Coluna10) {
      controladoresPesagem.mapa130.text = "714";
    } else {
      controladoresPesagem.mapa130.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna11) {
      controladoresPesagem.mapa131.text = "715";
    } else {
      controladoresPesagem.mapa131.text = "";
    }

    if (temValor716Coluna11) {
      controladoresPesagem.mapa132.text = "716";
    } else {
      controladoresPesagem.mapa132.text = "";
    }
    if (temValor717Coluna11) {
      controladoresPesagem.mapa133.text = "717";
    } else {
      controladoresPesagem.mapa133.text = "";
    }
    if (temValorGrandeColuna11) {
      controladoresPesagem.mapa134.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa134.text = "";
    }
    if (temValor529Coluna11) {
      controladoresPesagem.mapa135.text = "529";
    } else {
      controladoresPesagem.mapa135.text = "";
    }
    if (temValor530Coluna11) {
      controladoresPesagem.mapa136.text = "530";
    } else {
      controladoresPesagem.mapa136.text = "";
    }
    if (temValor531Coluna11) {
      controladoresPesagem.mapa137.text = "531";
    } else {
      controladoresPesagem.mapa137.text = "";
    }
    if (temValor532Coluna11) {
      controladoresPesagem.mapa138.text = "532";
    } else {
      controladoresPesagem.mapa138.text = "";
    }
    if (temValor533Coluna11) {
      controladoresPesagem.mapa139.text = "533";
    } else {
      controladoresPesagem.mapa139.text = "";
    }
    if (temValor633a641Coluna11) {
      controladoresPesagem.mapa140.text = "633 a 641";
    } else {
      controladoresPesagem.mapa140.text = "";
    }
    if (temValor642a650Coluna11) {
      controladoresPesagem.mapa141.text = "642 a 650";
    } else {
      controladoresPesagem.mapa141.text = "";
    }
    if (temValor713Coluna11) {
      controladoresPesagem.mapa142.text = "713";
    } else {
      controladoresPesagem.mapa142.text = "";
    }
    if (temValor714Coluna11) {
      controladoresPesagem.mapa143.text = "714";
    } else {
      controladoresPesagem.mapa143.text = "";
    }
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
////////////////////
    if (temValor715Coluna12) {
      controladoresPesagem.mapa144.text = "715";
    } else {
      controladoresPesagem.mapa144.text = "";
    }

    if (temValor716Coluna12) {
      controladoresPesagem.mapa145.text = "716";
    } else {
      controladoresPesagem.mapa145.text = "";
    }
    if (temValor717Coluna12) {
      controladoresPesagem.mapa146.text = "717";
    } else {
      controladoresPesagem.mapa146.text = "";
    }
    if (temValorGrandeColuna12) {
      controladoresPesagem.mapa147.text =
          "534, 536, 542, 548 a 552, 663, 681, 682  e 708";
    } else {
      controladoresPesagem.mapa147.text = "";
    }
    if (temValor529Coluna12) {
      controladoresPesagem.mapa148.text = "529";
    } else {
      controladoresPesagem.mapa148.text = "";
    }
    if (temValor530Coluna12) {
      controladoresPesagem.mapa149.text = "530";
    } else {
      controladoresPesagem.mapa149.text = "";
    }
    if (temValor531Coluna12) {
      controladoresPesagem.mapa150.text = "531";
    } else {
      controladoresPesagem.mapa150.text = "";
    }
    if (temValor532Coluna12) {
      controladoresPesagem.mapa151.text = "532";
    } else {
      controladoresPesagem.mapa151.text = "";
    }
    if (temValor533Coluna12) {
      controladoresPesagem.mapa152.text = "533";
    } else {
      controladoresPesagem.mapa152.text = "";
    }
    if (temValor633a641Coluna12) {
      controladoresPesagem.mapa153.text = "633 a 641";
    } else {
      controladoresPesagem.mapa153.text = "";
    }
    if (temValor642a650Coluna12) {
      controladoresPesagem.mapa154.text = "642 a 650";
    } else {
      controladoresPesagem.mapa154.text = "";
    }
    if (temValor713Coluna12) {
      controladoresPesagem.mapa155.text = "713";
    } else {
      controladoresPesagem.mapa155.text = "";
    }
    if (temValor714Coluna12) {
      controladoresPesagem.mapa156.text = "714";
    } else {
      controladoresPesagem.mapa156.text = "";
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

    var coluna1 = [
      controladoresPesagem.aPesoPadrao1,
      controladoresPesagem.aPesoPadrao2,
      controladoresPesagem.aPesoPadrao3,
      controladoresPesagem.aPesoPadrao4,
      controladoresPesagem.aPesoPadrao5,
    ];

    var coluna2 = [
      controladoresPesagem.aPesoPadrao6,
      controladoresPesagem.aPesoPadrao7,
      controladoresPesagem.aPesoPadrao8,
      controladoresPesagem.aPesoPadrao9,
      controladoresPesagem.aPesoPadrao10,
    ];
    var coluna3 = [
      controladoresPesagem.aPesoPadrao11,
      controladoresPesagem.aPesoPadrao12,
      controladoresPesagem.aPesoPadrao13,
      controladoresPesagem.aPesoPadrao14,
      controladoresPesagem.aPesoPadrao15,
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

    controladoresPesagem.result1.text =
        somaColuna1.toStringAsFixed(7).replaceAll(".", ",");
    controladoresPesagem.result2.text =
        somaColuna2.toStringAsFixed(7).replaceAll(".", ",");
    controladoresPesagem.result3.text =
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
                                controladoresPesagem.aPesoPadrao1,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao2,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao3,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao4,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao5,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 1),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(controladoresPesagem.result1,
                              numPontosApoio >= 1),
                          mapasNumeros(controladoresPesagem.mapa),
                          mapasNumeros(controladoresPesagem.mapa2),
                          mapasNumeros(controladoresPesagem.mapa3),
                          mapasNumeros(controladoresPesagem.mapa4),
                          mapasNumeros(controladoresPesagem.mapa5),
                          mapasNumeros(controladoresPesagem.mapa6),
                          mapasNumeros(controladoresPesagem.mapa7),
                          mapasNumeros(controladoresPesagem.mapa8),
                          mapasNumeros(controladoresPesagem.mapa9),
                          mapasNumeros(controladoresPesagem.mapa10),
                          mapasNumeros(controladoresPesagem.mapa11),
                          mapasNumeros(controladoresPesagem.mapa12),
                          mapasNumeros(controladoresPesagem.mapa13),
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
                                controladoresPesagem.aPesoPadrao6,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao7,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao8,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao9,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao10,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 2),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(controladoresPesagem.result2,
                              numPontosApoio >= 2),
                          mapasNumeros(controladoresPesagem.mapa14),
                          mapasNumeros(controladoresPesagem.mapa15),
                          mapasNumeros(controladoresPesagem.mapa16),
                          mapasNumeros(controladoresPesagem.mapa17),
                          mapasNumeros(controladoresPesagem.mapa18),
                          mapasNumeros(controladoresPesagem.mapa19),
                          mapasNumeros(controladoresPesagem.mapa20),
                          mapasNumeros(controladoresPesagem.mapa21),
                          mapasNumeros(controladoresPesagem.mapa22),
                          mapasNumeros(controladoresPesagem.mapa23),
                          mapasNumeros(controladoresPesagem.mapa24),
                          mapasNumeros(controladoresPesagem.mapa25),
                          mapasNumeros(controladoresPesagem.mapa26),
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
                                controladoresPesagem.aPesoPadrao11,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao12,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao13,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao14,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                            const SizedBox(height: 10),
                            pesoPad(
                                controladoresPesagem.aPesoPadrao15,
                                [controladores.aPesoPadrao1F],
                                numPontosApoio >= 3),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      Column(
                        children: [
                          resultBox(controladoresPesagem.result3,
                              numPontosApoio >= 3),
                          mapasNumeros(controladoresPesagem.mapa27),
                          mapasNumeros(controladoresPesagem.mapa28),
                          mapasNumeros(controladoresPesagem.mapa29),
                          mapasNumeros(controladoresPesagem.mapa30),
                          mapasNumeros(controladoresPesagem.mapa31),
                          mapasNumeros(controladoresPesagem.mapa32),
                          mapasNumeros(controladoresPesagem.mapa33),
                          mapasNumeros(controladoresPesagem.mapa34),
                          mapasNumeros(controladoresPesagem.mapa35),
                          mapasNumeros(controladoresPesagem.mapa36),
                          mapasNumeros(controladoresPesagem.mapa37),
                          mapasNumeros(controladoresPesagem.mapa38),
                          mapasNumeros(controladoresPesagem.mapa39),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                    child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          processAllColumns();
                        },
                        child: Text('data')),
                    mapasNumeros(
                      controladoresPesagem.idMapas1,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas2,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas3,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas4,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas5,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas6,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas7,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas8,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas9,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas10,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas11,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas12,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas13,
                    ),
                  ],
                )),
                Flexible(
                    child: Column(
                  children: [
                    mapasNumeros(
                      controladoresPesagem.idMapas1desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas2desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas3desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas4desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas5desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas6desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas7desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas8desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas9desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas10desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas11desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas12desc,
                    ),
                    mapasNumeros(
                      controladoresPesagem.idMapas13desc,
                    ),
                  ],
                ))
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
