import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';

class TextCustomField extends StatelessWidget {
  @override
  const TextCustomField(
      {super.key,
      required this.Str,
      required this.OnSaved,
      required this.Size,
      required this.maxLines, required this.Onchange, required this.controller});
  final String Str;
  final void Function(String?)? OnSaved;
  final double Size;
  final int maxLines;
  final void Function(String) Onchange;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      child: TextFormField(
        controller:controller ,
        validator: (value) {
          if (value!.isEmpty) {
            return "Field Is Empty";
          }
          return null;
        },
        maxLines: maxLines,
        cursorColor: Themecolor,
        onSaved: OnSaved,
        onChanged: Onchange
        ,decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: Size, horizontal: 10),
          fillColor: Colors.black,
          focusColor: Colors.black,
          icon: Icon(
            Icons.note,
            color: Themecolor,
          ),
          hintText: Str,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Themecolor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Themecolor),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
