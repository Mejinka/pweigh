import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../pages/first_page_extends/balanca.dart';

class Controllers with ChangeNotifier {
  final TextEditingController regCali = TextEditingController();
  final TextEditingController data = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(DateTime.now()));
  final TextEditingController certificado = TextEditingController();
  final TextEditingController year =
      TextEditingController(text: DateFormat('yyyy').format(DateTime.now()));

  final TextEditingController cliente = TextEditingController();
  final TextEditingController morada = TextEditingController();
  final TextEditingController morada2 = TextEditingController();
  //11

  final TextEditingController objeto = TextEditingController();
  final TextEditingController marca = TextEditingController();
  final TextEditingController modelo = TextEditingController();
  final TextEditingController nserie = TextEditingController();
  final TextEditingController idinterna = TextEditingController();

  final TextEditingController altitude = TextEditingController();
  final MaskTextInputFormatter altitudeF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController latitude = TextEditingController();
  final MaskTextInputFormatter latitudeF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController cepController = TextEditingController();
  final MaskTextInputFormatter cepF =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController cepController2 = TextEditingController();
  final MaskTextInputFormatter cepF2 =
      MaskTextInputFormatter(mask: '0000-000', filter: {"0": RegExp(r'[0-9]')});

  final TextEditingController cimax = TextEditingController();
  final MaskTextInputFormatter cimaxF = MaskTextInputFormatter(
      mask: '0000000000', filter: {"0": RegExp(r'[0-9]')});

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

  void clearAllFields() {
    regCali.clear();
    certificado.clear();
    year.clear();
    cliente.clear();
    morada.clear();
    morada2.clear();
    objeto.clear();
    marca.clear();
    modelo.clear();
    nserie.clear();
    idinterna.clear();
    altitude.clear();
    latitude.clear();
    cepController.clear();
    cepController2.clear();
    cimax.clear();
    d.clear();
    dT.clear();
    tempInit.clear();
    tempFinal.clear();
    horaInit.clear();
    horaFinal.clear();
    switchbalanca;
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
    switchbalanca;
    notifyListeners();
  }
}
