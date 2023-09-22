import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Widgets/add_note_form.dart';
import 'package:notes_app/add-note_cubit/add_note_cubit.dart';

// ignore: camel_case_types
class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitFailure) {
            print('failed ${state.errorMessage}');
          } else if (state is AddNoteCubitSeccuss) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteCubitLoading,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
