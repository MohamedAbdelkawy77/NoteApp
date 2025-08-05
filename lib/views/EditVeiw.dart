import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomAppBar.dart';
import 'package:noteapp/CustomWidgets/CustomTextFeild.dart';

class Editveiw extends StatelessWidget {
  const Editveiw({super.key});
  static String Id = "EditView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomNoteAppBar(
            Onpressed: () {},
            Str: "Edit",
            SearchIcon: Icons.edit_attributes,
          ),
          TextCustomField(
              Str: "Title Edit", OnSaved: (value) {}, Size: 20, maxLines: 1),
          TextCustomField(
              Str: "Descraption Edit",
              OnSaved: (value) {},
              Size: 60,
              maxLines: 3),
        ],
      ),
    );
  }
}
