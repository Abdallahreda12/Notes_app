import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/noteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteCubitSeccuss());
    } on Exception catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
