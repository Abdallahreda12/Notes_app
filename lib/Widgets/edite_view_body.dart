import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Widgets/color_list_view.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';
import 'package:notes_app/add-note_cubit/add_note_cubit.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';

import '../models/noteModel.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();

              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: "Edite Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          customTextField(
            onChanged: (p0) {
              title = p0;
            },
            initalValue: widget.note.title,
          ),
          const SizedBox(
            height: 30,
          ),
          customTextField(
            onChanged: (p0) {
              subtitle = p0;
            },
            initalValue: widget.note.subtitle,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          ColorsListView(
            ColorsData: (val) {
              widget.note.color = val.value;
            },
          )
        ],
      ),
    );
  }
}
