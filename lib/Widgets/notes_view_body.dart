import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_note_item.dart';

class NotesNiewBody extends StatelessWidget {
  const NotesNiewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        const CustomAppBar(),
        const SizedBox(
          height: 10,
        ),
        NoteItem()
      ],
    );
  }
}
