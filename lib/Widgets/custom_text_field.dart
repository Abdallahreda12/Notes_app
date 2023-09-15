import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: camel_case_types, must_be_immutable
class customTextField extends StatelessWidget {
  customTextField({super.key, this.hintText, this.maxLines = 1});

  String? hintText;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: KprimaryColor, fontSize: 16, letterSpacing: 1),
          border: builtBorder(),
          enabledBorder: builtBorder(),
          focusedBorder: builtBorder(KprimaryColor)),
    );
  }

  OutlineInputBorder builtBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
