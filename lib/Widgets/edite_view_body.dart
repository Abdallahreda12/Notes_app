import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          const CustomAppBar(
            title: "Edite Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          customTextField(
            hintText: "Title",
          ),
          const SizedBox(
            height: 30,
          ),
          customTextField(
            hintText: "Content",
            maxLines: 3,
          )
        ],
      ),
    );
  }
}
