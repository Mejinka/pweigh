import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Controllers {
  final TextEditingController user = TextEditingController();
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
}

void clearAllFields(Controllers controllers) {
  controllers.user.clear();
  controllers.certificado.clear();
  controllers.year.clear();
  controllers.cliente.clear();
  controllers.morada.clear();
  controllers.morada2.clear();
  controllers.objeto.clear();
  controllers.marca.clear();
  controllers.modelo.clear();
  controllers.nserie.clear();
  controllers.idinterna.clear();
  controllers.altitude.clear();
  controllers.latitude.clear();
  controllers.cepController.clear();
  controllers.cepController2.clear();
  controllers.cimax.clear();
  controllers.d.clear();
  controllers.dT.clear();
  controllers.tempInit.clear();
  controllers.tempFinal.clear();
}
