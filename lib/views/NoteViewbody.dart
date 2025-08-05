import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomAddNote.dart';
import 'package:noteapp/CustomWidgets/CustomAppBar.dart';
import 'package:noteapp/CustomWidgets/ListViewNote.dart';
import 'package:noteapp/Models/Constants.dart';

class Noteviewbody extends StatelessWidget {
  const Noteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Customaddnote();
              });
          // showTimePicker(context: context, initialTime: TimeOfDay.now(),
          // onEntryModeChanged: (value){},
          // );
        },
        backgroundColor: Themecolor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomNoteAppBar(
              Str: "Notes",
              SearchIcon: Icons.search,
              Onpressed: (){},
            ),
            Listviewnote()
          ],
        ),
      ),
    );
  }
}
