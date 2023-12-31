import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/noteModel.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(noteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotesCubit>(
          create: (BuildContext context) => NotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
