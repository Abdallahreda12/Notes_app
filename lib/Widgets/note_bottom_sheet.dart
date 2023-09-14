import 'package:flutter/material.dart';

import 'custom_text_field.dart';

// ignore: camel_case_types
class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          customTextField(
            hintText: "Title",
          ),
          const SizedBox(
            height: 30,
          ),
          customTextField(
            hintText: "Descraption",
          ),
        ],
      ),
    );
  }
}
