import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: camel_case_types, must_be_immutable
class customTextField extends StatelessWidget {
  customTextField(
      {super.key,
      this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.initalValue, this.onChanged});

  String? hintText;
  int? maxLines;
  String? initalValue;

  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      initialValue: initalValue,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter some text";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: kPrimaryColor, fontSize: 16, letterSpacing: 1),
          border: builtBorder(),
          enabledBorder: builtBorder(),
          focusedBorder: builtBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder builtBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
