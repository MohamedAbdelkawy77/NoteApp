import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  GetAllNotes() {
    var Allnotes = Hive.box<NoteModel>(BoxNote);
    notes = Allnotes.values.toList();
    emit(NotesCubitSuccess());
  }
}
