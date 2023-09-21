import 'package:flutter/material.dart';

import 'custom_Button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final AutovalidateMode autovalidateMode = AutovalidateMode.always;
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          customTextField(
            onSaved: (p0) {
              title = p0;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          customTextField(
            onSaved: (p0) {
              subtitle = p0;
            },
            hintText: "Content",
            maxLines: 4,
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}