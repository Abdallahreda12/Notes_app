import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/notes_view_body.dart';

import '../Widgets/note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const addNoteBottomSheet();
              });
        },
      ),
      body: const NotesViewBody(),
    );
  }
}
