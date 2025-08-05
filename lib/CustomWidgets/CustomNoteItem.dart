import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomListTile.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/views/EditVeiw.dart';

// ignore: must_be_immutable
class Customnoteitem extends StatelessWidget {
  const Customnoteitem({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Editveiw.Id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16),
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey,
        ),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Customlisttile(
              TextNew: noteModel.Title,
              Descraption: noteModel.Descraption,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  noteModel.dateTime.split(" ").first,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
