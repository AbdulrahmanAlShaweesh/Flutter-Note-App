import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants/constant_keys.dart';
import 'package:note_app/model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  bool isLoading = false; 
  // adding the note to hive.
  addNote(NoteModel note) async {
    isLoading = true; 
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      isLoading = false;
      await noteBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      isLoading = false; 
      emit(AddNotesFailure(e.toString()));
    }
  }
}
