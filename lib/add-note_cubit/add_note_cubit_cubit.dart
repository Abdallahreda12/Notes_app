import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/noteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) {
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      noteBox.add(note);
      emit(AddNoteCubitSeccuss());
    } on Exception catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
