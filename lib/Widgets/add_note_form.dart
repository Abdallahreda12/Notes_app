import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/add-note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/noteModel.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';

import 'color_list_view.dart';
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

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subtitle;
  MaterialColor? color;
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
            height: 15,
          ),
          ColorsListView(
            ColorsData: (val) => color = val,
          ),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomButton(
                  isLoading: state is AddNoteCubitLoading,
                  onTap: () {
                    var currentDate = DateTime.now();
                    var formatCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      var note = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: formatCurrentDate,
                          color:
                              color == null ? Colors.blue.value : color!.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                      BlocProvider.of<NotesCubit>(context).fetchNotes();
                      setState(() {});
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
