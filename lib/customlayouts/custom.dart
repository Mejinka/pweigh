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
      width: 300,
      child: Column(
        children: [
          Text(labelText),
          TextField(
            decoration: InputDecoration(
              hintText: labelText,
              border: OutlineInputBorder(),
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
    children: [
      Text(labelText, textAlign: TextAlign.center),
      TextField(
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: labelText,
          border: OutlineInputBorder(),
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
            border: OutlineInputBorder(),
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
            border: OutlineInputBorder(),
          ),
          inputFormatters: formatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildDropdownButton(
  String labelText,
  String dropdownValue,
  List<String> items,
  ValueChanged<String?> onChanged,
) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Text(labelText),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
              width: 1.0,
            ),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            dropdownColor: Colors.white,
            elevation: 2,
            underline: Container(),
            focusColor: Colors.transparent,
          ),
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
            border: OutlineInputBorder(),
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
            border: OutlineInputBorder(),
          ),
          controller: controller,
          inputFormatters: inputFormatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildFlexibleColumn(String labelText, TextEditingController controller,
    List<TextInputFormatter>? inputFormatters) {
  return Flexible(
    child: Column(
      children: [
        Text(labelText),
        TextField(
          enabled: true,
          decoration: InputDecoration(
            hintText: labelText,
            border: OutlineInputBorder(),
          ),
          controller: controller,
          inputFormatters: inputFormatters,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
