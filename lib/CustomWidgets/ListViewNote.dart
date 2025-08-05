import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/CustomWidgets/CustomNoteItem.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';

class Listviewnote extends StatelessWidget {
  const Listviewnote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes!;
        return Expanded(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (BuildContext, index) {
                return Customnoteitem(
                  noteModel: notes[index],
                );
              }),
        );
      },
    );
  }
}
