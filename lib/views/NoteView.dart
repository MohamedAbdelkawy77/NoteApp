import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';
import 'package:noteapp/views/NoteViewbody.dart';

class Noteview extends StatefulWidget {
  const Noteview({super.key});
  static String Id = "NoteVeiw";

  @override
  State<Noteview> createState() => _NoteviewState();
}

class _NoteviewState extends State<Noteview> {
  int BarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        body: Noteviewbody(),
        // bottomNavigationBar: BottomNavigationBar(
        //     onTap: (value) {
        //       BarIndex = value;
        //       setState(() {});
        //     },
        //     currentIndex: BarIndex,
        //     unselectedItemColor: Colors.white,
        //     selectedItemColor: Themecolor,
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.calendar_month,
        //           ),
        //           label: "Calender"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.settings), label: "Settings"),
        //     ]),
      ),
    );
  }
}

// Widget PageView(int Index) {
//   if (Index == 0) {
//     return Noteviewbody();
//   } else if (Index == 1) {
//     return Customcalender();
//   } else {
//     return Text("Upcoming Page");
//   }
// }
