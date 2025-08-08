import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/CustomWidgets/CustomBotton.dart';
import 'package:noteapp/CustomWidgets/CustomTextFeild.dart';
import 'package:noteapp/CustomWidgets/customColor_Listview.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/cubit/Add_Note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';

class Customaddnote extends StatefulWidget {
  const Customaddnote({super.key});

  @override
  State<Customaddnote> createState() => _CustomaddnoteState();
}

class _CustomaddnoteState extends State<Customaddnote> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? Title, DescText;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: MediaQuery.of(context).viewInsets.top),
      child: BlocProvider(
        create: (context) => AddNoteCubit(),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: SingleChildScrollView(
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                if (state is AddNoteFailure) {
                  print("failed");
                } else if (state is AddNoteSuccess) {
                  BlocProvider.of<NotesCubitCubit>(context).GetAllNotes();

                  print("Successful Operation!");
                }
              },
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state is AddNoteLoading ? true : false,
                  child: Column(
                    children: [
                      TextCustomField(
                        controller: controller1,
                        Onchange: (p) {},
                        Str: "Title of Note",
                        OnSaved: (value) {
                          Title = value;
                        },
                        Size: 20,
                        maxLines: 1,
                      ),
                      TextCustomField(
                        controller: controller2,
                        Onchange: (value) {},
                        Str: "Description Of Note",
                        OnSaved: (value) {
                          DescText = value;
                        },
                        Size: 60,
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          child: ListViewColor()),
                      CustomButton(
                        Isloading: state is AddNoteLoading ? true : false,
                        onpressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            NoteModel Note = NoteModel(
                                Title: Title!,
                                Descraption: DescText!,
                                dateTime: DateTime.now().toString(),
                                color: currentc);
                            BlocProvider.of<AddNoteCubit>(context)
                                .Addnote(Note);
                            Navigator.pop(context);
                          } else {
                            autovalidateMode = AutovalidateMode.always;
                            setState(() {});
                          }
                        },
                        TitleOfBotton: "AddNote",
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
