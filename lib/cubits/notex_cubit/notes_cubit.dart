import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants/constant_keys.dart';
import 'package:note_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    // since the data will come fast and no need of await, then we do not need to 
    // emit loading state.
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notes = noteBox.values.toList();
      // loads notes from hive box
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}