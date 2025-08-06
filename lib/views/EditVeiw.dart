import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/CustomWidgets/CustomAppBar.dart';
import 'package:noteapp/CustomWidgets/CustomTextFeild.dart';
import 'package:noteapp/CustomWidgets/customColor_Listview.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';

class Editveiw extends StatefulWidget {
  const Editveiw({super.key, required this.noteModel});
  static String Id = "EditView";
  final NoteModel noteModel;

  @override
  State<Editveiw> createState() => _EditveiwState();
}

class _EditveiwState extends State<Editveiw> {
  late TextEditingController controller1;
  late TextEditingController controller2;

  @override
  void initState() {
    super.initState();
    // Step 2: Set the value
    controller1 = TextEditingController(text: widget.noteModel.Title);
    controller2 = TextEditingController(text: widget.noteModel.Descraption);
  }

  String? Title, Description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomNoteAppBar(
            Onpressed: () {
              widget.noteModel.Title = Title ?? widget.noteModel.Title;
              widget.noteModel.Descraption =
                  Description ?? widget.noteModel.Descraption;
              widget.noteModel.color = currentc ?? widget.noteModel.color;
              widget.noteModel.save();
              setState(() {});
              Navigator.pop(context);
              BlocProvider.of<NotesCubitCubit>(context).GetAllNotes();
            },
            Str: "Edit",
            SearchIcon: Icons.edit_attributes,
          ),
          TextCustomField(
              controller: controller1,
              Onchange: (val) {
                Title = val;
              },
              Str: "",
              OnSaved: (val) {},
              Size: 20,
              maxLines: 1),
          TextCustomField(
              controller: controller2,
              Onchange: (val) {
                Description = val;
                widget.noteModel.color = currentc;
              },
              Str: "",
              OnSaved: (value) {},
              Size: 60,
              maxLines: 3),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: ListViewColor()),
        ],
      ),
    );
  }
}
