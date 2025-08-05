part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitFailur extends NotesCubitState {
  final String Error;

  NotesCubitFailur({required this.Error});
}

final class NotesCubitSeccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSeccess({required this.notes});
}
