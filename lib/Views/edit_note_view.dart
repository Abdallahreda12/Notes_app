import 'package:flutter/material.dart';
import 'package:notes_app/models/noteModel.dart';

import '../Widgets/edite_view_body.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditeNoteViewBody(note: note),
    );
  }
}
