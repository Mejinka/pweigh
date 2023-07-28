import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customCheckbox(
    {required String label,
    required bool checkboxValue,
    required void Function(bool?) onChanged}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        child: Text(
          label,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Checkbox(
        value: checkboxValue,
        onChanged: onChanged,
      ),
    ],
  );
}

Widget buildAddressRow(String labelText, TextEditingController controller,
    List<TextInputFormatter>? inputFormatters) {
  return Flexible(
    child: SizedBox(
      width: 200,
      child: Column(
        children: [
          Text(labelText),
          TextField(
            decoration: InputDecoration(
              hintText: labelText,
              border: const OutlineInputBorder(),
            ),
            controller: controller,
            inputFormatters: inputFormatters,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

Widget customTextField({
  required String labelText,
  required TextEditingController controller,
  bool enabled = true,
  Function(String)? onChanged,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(labelText, textAlign: TextAlign.center),
      TextField(
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: labelText,
          border: const OutlineInputBorder(),
        ),
        controller: controller,
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget buildTextFieldColumn(String labelText, TextEditingController controller,
    List<TextInputFormatter> inputFormatters) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Text(labelText),
        TextField(
          enabled: true,
          decoration: InputDecoration(
            hintText: labelText,
            border: const OutlineInputBorder(),
          ),
          controller: controller,
          inputFormatters: inputFormatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildSwitchRow(
    String label1, String label2, bool switchValue, Function(bool) onChanged) {
  return Row(
    children: [
      Text(label1),
      Switch(value: switchValue, onChanged: onChanged),
      Text(label2),
    ],
  );
}

Widget buildTextField(String labelText, TextEditingController controller,
    List<TextInputFormatter> formatters) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Text(labelText),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: labelText,
            border: const OutlineInputBorder(),
          ),
          inputFormatters: formatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildTextField2(String labelText, TextEditingController controller,
    List<TextInputFormatter> formatters) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Text(labelText),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: labelText,
            border: const OutlineInputBorder(),
          ),
          inputFormatters: formatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildSizedBoxColumn(String labelText, TextEditingController controller,
    List<TextInputFormatter>? inputFormatters) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Text(labelText),
        TextField(
          enabled: true,
          decoration: InputDecoration(
            hintText: labelText,
            border: const OutlineInputBorder(),
          ),
          controller: controller,
          inputFormatters: inputFormatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget customTextField1(String labelText, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(labelText),
      const Divider(height: 10),
      SizedBox(
        width: 100,
        child: TextField(
          enabled: true,
          decoration: const InputDecoration(
            hintText: "",
            border: OutlineInputBorder(),
          ),
          controller: controller,
          textAlign: TextAlign.center,
        ),
      ),
      const Divider(height: 5),
    ],
  );
}

Widget customPontosApoio(String labelText, TextEditingController controller,
    List<TextInputFormatter> inputFormatters, bool enabled) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        labelText,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        width: 50,
        child: TextField(
          enabled: enabled,
          decoration: InputDecoration(
            filled: true,
            fillColor: enabled ? Colors.white : Colors.black12,
            hintText: "",
            border: const OutlineInputBorder(),
          ),
          controller: controller,
          inputFormatters: inputFormatters,
          textAlign: TextAlign.center,
        ),
      ),
      const Divider(height: 5),
    ],
  );
}

Widget pesoPad(TextEditingController controller,
    List<TextInputFormatter> inputFormatters, bool enabled) {
  return SizedBox(
    width: 100,
    child: TextField(
      enabled: enabled,
      decoration: InputDecoration(
        filled: true,
        fillColor: enabled ? Colors.white : Colors.black12,
        hintText: "Peso Padrao",
        border: const OutlineInputBorder(),
      ),
      controller: controller,
      textAlign: TextAlign.center,
    ),
  );
}

Widget caixaCustom(TextEditingController controller, bool enabled) {
  return SizedBox(
    width: 100,
    child: TextField(
      enabled: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: enabled ? Colors.white : Colors.black12,
        hintText: "",
        border: const OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
      controller: controller,
    ),
  );
}

Widget ajustesCheckBox(String labelText, TextEditingController controller,
    List<TextInputFormatter>? inputFormatters) {
  return Flexible(
    child: SizedBox(
      width: 2,
      child: Column(
        children: [
          Text(labelText),
          TextField(
            decoration: InputDecoration(
              hintText: labelText,
              border: const OutlineInputBorder(),
            ),
            controller: controller,
            inputFormatters: inputFormatters,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}



//Widget abrevPesos(TextEditingController controller) {
//  return Column(
//    children: [
//      Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Column(
//            children: [
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//            ],
//          ),
//          Container(width: 10),
//          Column(
//            children: [
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//              const SizedBox(height: 10),
//              pesoPad(controller),
//            ],
//          ),
//        ],
//      ),
//    ],
//  );
//}
//
