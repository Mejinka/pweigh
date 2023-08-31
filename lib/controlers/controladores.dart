import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../pages/first_page_extends/balanca.dart';
import 'package:cachapuz_2/pages/calibration.dart';

class Controllers with ChangeNotifier {
  final TextEditingController regCali = TextEditingController();
  final TextEditingController data =
      TextEditingController(text: DateTime.now().toString().split(' ')[0]);

  final TextEditingController certificado = TextEditingController();
  final TextEditingController cliente = TextEditingController();
  final TextEditingController morada = TextEditingController();
  final TextEditingController morada2 = TextEditingController();

  final TextEditingController objeto = TextEditingController();
  final TextEditingController marca = TextEditingController();
  final TextEditingController modelo = TextEditingController();
  final TextEditingController nserie = TextEditingController();
  final TextEditingController idinterna = TextEditingController();

  final TextEditingController cepController = TextEditingController();
  final MaskTextInputFormatter cepF =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController cepController2 = TextEditingController();
  final MaskTextInputFormatter cepF2 =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController altitude = TextEditingController();
  final MaskTextInputFormatter altitudeF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController latitude = TextEditingController();
  final MaskTextInputFormatter latitudeF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController cimax = TextEditingController();
  final MaskTextInputFormatter cimaxF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController dropdownController = TextEditingController();

  final TextEditingController d = TextEditingController();
  final MaskTextInputFormatter dF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController dT = TextEditingController();
  final MaskTextInputFormatter dTF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController tempInit = TextEditingController();
  final MaskTextInputFormatter tempInitF =
      MaskTextInputFormatter(mask: '00.0', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController tempFinal = TextEditingController();
  final MaskTextInputFormatter tempFinalF =
      MaskTextInputFormatter(mask: '00.0', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController horaInit = TextEditingController();
  final MaskTextInputFormatter horaInitF =
      MaskTextInputFormatter(mask: '00.0', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController horaFinal = TextEditingController();
  final MaskTextInputFormatter horaFinalF =
      MaskTextInputFormatter(mask: '00.0', filter: {"0": RegExp(r'[0-9]')});

  bool switchbalanca = false;

  void setSwitchValue(bool value) {
    switchbalanca = value;
    notifyListeners();
  }

  bool checkboxValue = false;

  void setCheckboxValue(bool value) {
    checkboxValue = value;
    notifyListeners();
  }

  void clearAllFields() {
    //cliente.clear();
    //morada.clear();
    //morada2.clear();
    //objeto.clear();
    //marca.clear();
    //modelo.clear();
    //nserie.clear();
    //idinterna.clear();
    //altitude.clear();
    //latitude.clear();
    //cepController.clear();
    //cepController2.clear();
    //cimax.clear();
    //d.clear();
    //dT.clear();
    //tempInit.clear();
    //tempFinal.clear();
    //horaInit.clear();
    //horaFinal.clear();
    //switchbalanca;
    //showExtraWidget;
    //showExtraWidget1;
    //isSwitchOn;
    notifyListeners();
  }

  void updateCimax(String value) {
    cimax.text = value;
    notifyListeners();
  }
}

class ControllersEnsarioPrevio with ChangeNotifier {
  final TextEditingController pontosCali = TextEditingController();
  final TextEditingController pontosCali2 = TextEditingController();

  final TextEditingController indicaBalanca = TextEditingController();
  final TextEditingController indicaBalanca2 = TextEditingController();

  final TextEditingController cargaAjuste = TextEditingController();
  final TextEditingController ref = TextEditingController();

  void clearAllFieldsEP() {
    pontosCali.clear();
    pontosCali2.clear();
    indicaBalanca.clear();
    indicaBalanca2.clear();
    cargaAjuste.clear();
    ref.clear();
    showExtraWidget;
    notifyListeners();
  }
}

class EnsaioExcentricoControllers with ChangeNotifier {
  final TextEditingController pontosApoioController = TextEditingController();
  final TextEditingController cargaUti = TextEditingController();
  final TextEditingController ponto1 = TextEditingController();
  final MaskTextInputFormatter ponto1F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto2 = TextEditingController();
  final MaskTextInputFormatter ponto2F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto3 = TextEditingController();
  final MaskTextInputFormatter ponto3F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto4 = TextEditingController();
  final MaskTextInputFormatter ponto4F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto5 = TextEditingController();
  final MaskTextInputFormatter ponto5F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto6 = TextEditingController();
  final MaskTextInputFormatter ponto6F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto7 = TextEditingController();
  final MaskTextInputFormatter ponto7F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto8 = TextEditingController();
  final MaskTextInputFormatter ponto8F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto9 = TextEditingController();
  final MaskTextInputFormatter ponto9F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto10 = TextEditingController();
  final MaskTextInputFormatter ponto10F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto11 = TextEditingController();
  final MaskTextInputFormatter ponto11F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController ponto12 = TextEditingController();
  final MaskTextInputFormatter ponto12F =
      MaskTextInputFormatter(mask: '00', filter: {"0": RegExp(r'[0-9]')});

  Map<int, List<TextEditingController>> controladoresPontosApoio = {};

  List<TextEditingController> getPontoApoioControllers(int index) {
    if (!controladoresPontosApoio.containsKey(index)) {
      controladoresPontosApoio[index] = [
        TextEditingController(),
        TextEditingController()
      ];
    }

    return controladoresPontosApoio[index]!;
  }

  void disposePontoApoioControllers(int index) {
    if (controladoresPontosApoio.containsKey(index)) {
      for (var controller in controladoresPontosApoio[index]!) {
        controller.dispose();
      }
    }
  }

  void clearAllFields() {
    pontosApoioController.clear();
    cargaUti.clear();
    controladoresPontosApoio.forEach((key, controllers) {
      for (var controller in controllers) {
        controller.clear();
      }
    });
    notifyListeners();
  }
}

class EnsaioState extends ChangeNotifier {
  int _numPontosApoio = 0;

  int get numPontosApoio => _numPontosApoio;

  set numPontosApoio(int value) {
    _numPontosApoio = value;
    notifyListeners();
  }
}

class EnsaioPesagemControllers with ChangeNotifier {
  final TextEditingController pontosApoioController = TextEditingController();
  final TextEditingController cargaUti = TextEditingController();
  final TextEditingController aPesoPadrao1 = TextEditingController();
  final MaskTextInputFormatter aPesoPadrao1F =
      MaskTextInputFormatter(mask: '000000', filter: {"0": RegExp(r'[0-9]')});
  final TextEditingController aPesoPadrao2 = TextEditingController();
  final TextEditingController aPesoPadrao3 = TextEditingController();
  final TextEditingController aPesoPadrao4 = TextEditingController();
  final TextEditingController aPesoPadrao5 = TextEditingController();
  final TextEditingController aPesoPadrao6 = TextEditingController();
  final TextEditingController aPesoPadrao7 = TextEditingController();
  final TextEditingController aPesoPadrao8 = TextEditingController();
  final TextEditingController aPesoPadrao9 = TextEditingController();
  final TextEditingController aPesoPadrao10 = TextEditingController();
  final TextEditingController aPesoPadrao11 = TextEditingController();
  final TextEditingController aPesoPadrao12 = TextEditingController();
  final TextEditingController aPesoPadrao13 = TextEditingController();
  final TextEditingController aPesoPadrao14 = TextEditingController();
  final TextEditingController aPesoPadrao15 = TextEditingController();
  final TextEditingController aPesoPadrao16 = TextEditingController();
  final TextEditingController aPesoPadrao17 = TextEditingController();
  final TextEditingController aPesoPadrao18 = TextEditingController();
  final TextEditingController aPesoPadrao19 = TextEditingController();
  final TextEditingController aPesoPadrao20 = TextEditingController();
  final TextEditingController aPesoPadrao21 = TextEditingController();
  final TextEditingController aPesoPadrao22 = TextEditingController();
  final TextEditingController aPesoPadrao23 = TextEditingController();
  final TextEditingController aPesoPadrao24 = TextEditingController();
  final TextEditingController aPesoPadrao25 = TextEditingController();
  final TextEditingController aPesoPadrao26 = TextEditingController();
  final TextEditingController aPesoPadrao27 = TextEditingController();
  final TextEditingController aPesoPadrao28 = TextEditingController();
  final TextEditingController aPesoPadrao29 = TextEditingController();
  final TextEditingController aPesoPadrao30 = TextEditingController();
  final TextEditingController aPesoPadrao31 = TextEditingController();
  final TextEditingController aPesoPadrao32 = TextEditingController();
  final TextEditingController aPesoPadrao33 = TextEditingController();
  final TextEditingController aPesoPadrao34 = TextEditingController();
  final TextEditingController aPesoPadrao35 = TextEditingController();
  final TextEditingController aPesoPadrao36 = TextEditingController();
  final TextEditingController aPesoPadrao37 = TextEditingController();
  final TextEditingController aPesoPadrao38 = TextEditingController();
  final TextEditingController aPesoPadrao39 = TextEditingController();
  final TextEditingController aPesoPadrao40 = TextEditingController();
  final TextEditingController aPesoPadrao41 = TextEditingController();
  final TextEditingController aPesoPadrao42 = TextEditingController();
  final TextEditingController aPesoPadrao43 = TextEditingController();
  final TextEditingController aPesoPadrao44 = TextEditingController();
  final TextEditingController aPesoPadrao45 = TextEditingController();
  final TextEditingController aPesoPadrao46 = TextEditingController();
  final TextEditingController aPesoPadrao47 = TextEditingController();
  final TextEditingController aPesoPadrao48 = TextEditingController();
  final TextEditingController aPesoPadrao49 = TextEditingController();
  final TextEditingController aPesoPadrao50 = TextEditingController();
  final TextEditingController aPesoPadrao51 = TextEditingController();
  final TextEditingController aPesoPadrao52 = TextEditingController();
  final TextEditingController aPesoPadrao53 = TextEditingController();
  final TextEditingController aPesoPadrao54 = TextEditingController();
  final TextEditingController aPesoPadrao55 = TextEditingController();
  final TextEditingController aPesoPadrao56 = TextEditingController();
  final TextEditingController aPesoPadrao57 = TextEditingController();
  final TextEditingController aPesoPadrao58 = TextEditingController();
  final TextEditingController aPesoPadrao59 = TextEditingController();
  final TextEditingController aPesoPadrao60 = TextEditingController();
  final TextEditingController aPesoPadrao61 = TextEditingController();
  final TextEditingController aPesoPadrao62 = TextEditingController();
  final TextEditingController aPesoPadrao63 = TextEditingController();
  final TextEditingController aPesoPadrao64 = TextEditingController();
  final TextEditingController aPesoPadrao65 = TextEditingController();
  final TextEditingController aPesoPadrao66 = TextEditingController();
  final TextEditingController aPesoPadrao67 = TextEditingController();
  final TextEditingController aPesoPadrao68 = TextEditingController();
  final TextEditingController aPesoPadrao69 = TextEditingController();
  final TextEditingController aPesoPadrao70 = TextEditingController();
  final TextEditingController aPesoPadrao71 = TextEditingController();
  final TextEditingController aPesoPadrao72 = TextEditingController();
  final TextEditingController aPesoPadrao73 = TextEditingController();
  final TextEditingController aPesoPadrao74 = TextEditingController();
  final TextEditingController aPesoPadrao75 = TextEditingController();
  final TextEditingController aPesoPadrao76 = TextEditingController();
  final TextEditingController aPesoPadrao77 = TextEditingController();
  final TextEditingController aPesoPadrao78 = TextEditingController();
  final TextEditingController aPesoPadrao79 = TextEditingController();
  final TextEditingController aPesoPadrao80 = TextEditingController();
  final TextEditingController aPesoPadrao81 = TextEditingController();
  final TextEditingController aPesoPadrao82 = TextEditingController();
  final TextEditingController aPesoPadrao83 = TextEditingController();
  final TextEditingController aPesoPadrao84 = TextEditingController();
  final TextEditingController aPesoPadrao85 = TextEditingController();
  final TextEditingController aPesoPadrao86 = TextEditingController();
  final TextEditingController aPesoPadrao87 = TextEditingController();
  final TextEditingController aPesoPadrao88 = TextEditingController();
  final TextEditingController aPesoPadrao89 = TextEditingController();
  final TextEditingController aPesoPadrao90 = TextEditingController();
  final TextEditingController aPesoPadrao91 = TextEditingController();
  final TextEditingController aPesoPadrao92 = TextEditingController();
  final TextEditingController aPesoPadrao93 = TextEditingController();
  final TextEditingController aPesoPadrao94 = TextEditingController();
  final TextEditingController aPesoPadrao95 = TextEditingController();
  final TextEditingController aPesoPadrao96 = TextEditingController();
  final TextEditingController aPesoPadrao97 = TextEditingController();
  final TextEditingController aPesoPadrao98 = TextEditingController();
  final TextEditingController aPesoPadrao99 = TextEditingController();
  final TextEditingController aPesoPadrao100 = TextEditingController();
  final TextEditingController aPesoPadrao101 = TextEditingController();
  final TextEditingController aPesoPadrao102 = TextEditingController();
  final TextEditingController aPesoPadrao103 = TextEditingController();
  final TextEditingController aPesoPadrao104 = TextEditingController();
  final TextEditingController aPesoPadrao105 = TextEditingController();
  final TextEditingController aPesoPadrao106 = TextEditingController();
  final TextEditingController aPesoPadrao107 = TextEditingController();
  final TextEditingController aPesoPadrao108 = TextEditingController();
  final TextEditingController aPesoPadrao109 = TextEditingController();
  final TextEditingController aPesoPadrao110 = TextEditingController();
  final TextEditingController aPesoPadrao111 = TextEditingController();
  final TextEditingController aPesoPadrao112 = TextEditingController();
  final TextEditingController aPesoPadrao113 = TextEditingController();
  final TextEditingController aPesoPadrao114 = TextEditingController();
  final TextEditingController aPesoPadrao115 = TextEditingController();
  final TextEditingController aPesoPadrao116 = TextEditingController();
  final TextEditingController aPesoPadrao117 = TextEditingController();
  final TextEditingController aPesoPadrao118 = TextEditingController();
  final TextEditingController aPesoPadrao119 = TextEditingController();
  final TextEditingController aPesoPadrao120 = TextEditingController();

  final TextEditingController result1 = TextEditingController();
  final TextEditingController result2 = TextEditingController();
  final TextEditingController result3 = TextEditingController();
  final TextEditingController result4 = TextEditingController();
  final TextEditingController result5 = TextEditingController();
  final TextEditingController result6 = TextEditingController();
  final TextEditingController result7 = TextEditingController();
  final TextEditingController result8 = TextEditingController();
  final TextEditingController result9 = TextEditingController();
  final TextEditingController result10 = TextEditingController();
  final TextEditingController result11 = TextEditingController();
  final TextEditingController result12 = TextEditingController();

  Map<int, List<TextEditingController>> controladoresPontosApoio = {};

  List<TextEditingController> getPontoApoioControllers(int index) {
    if (!controladoresPontosApoio.containsKey(index)) {
      controladoresPontosApoio[index] = [
        TextEditingController(),
        TextEditingController()
      ];
    }

    return controladoresPontosApoio[index]!;
  }

  void disposePontoApoioControllers(int index) {
    if (controladoresPontosApoio.containsKey(index)) {
      for (var controller in controladoresPontosApoio[index]!) {
        controller.dispose();
      }
    }
  }

  void clearAllFields() {
    pontosApoioController.clear();
    cargaUti.clear();
    controladoresPontosApoio.forEach((key, controllers) {
      for (var controller in controllers) {
        controller.clear();
      }
    });
    notifyListeners();
  }
}
