import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import 'custom_text_field.dart';

// ignore: camel_case_types
class addNoteBottomSheet extends StatelessWidget {
  addNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            customTextField(
              hintText: "Title",
            ),
            const SizedBox(
              height: 20,
            ),
            customTextField(
              hintText: "Content",
              maxLines: 4,
            ),
            const SizedBox(
              height: 120,
            ),
            const customButton()
          ],
        ),
      ),
    );
  }
}

class customButton extends StatelessWidget {
  const customButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KprimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
