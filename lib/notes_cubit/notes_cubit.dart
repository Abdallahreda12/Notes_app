import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/noteModel.dart';

import '../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() async {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(Notessuccess(notes));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
