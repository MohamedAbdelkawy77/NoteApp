import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';

class Customlisttile extends StatelessWidget {
  const Customlisttile(
      {super.key,
      required this.TextNew,
      required this.Descraption,
      required this.noteModel});
  final String TextNew;
  final String Descraption;
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(0),
      title: Text(
        TextNew,
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text(
          Descraption,
          style: TextStyle(
              fontSize: 15, color: const Color.fromARGB(255, 65, 59, 59)),
        ),
      ),
      trailing: IconButton(
          onPressed: () {
            noteModel.delete();
            BlocProvider.of<NotesCubitCubit>(context).GetAllNotes();
          },
          icon: Icon(
            Icons.delete,
            color: Colors.black,
          )),
    );
  }
}
