import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';
// ignore: must_be_immutable

// ignore: must_be_immutable
class Customregisterpage extends StatefulWidget {
  @override
  Customregisterpage(
      {super.key,
      required this.Str,
      required this.Onchange,
      required this.textInputType,required this.iconData});
  String Str;
  dynamic Function(dynamic) Onchange;
  TextInputType textInputType;
  IconData iconData;
  @override
  State<Customregisterpage> createState() => _TextCustomFieldState();
}

class _TextCustomFieldState extends State<Customregisterpage> {
  bool Visabilityoff = true;
  bool Visability = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: widget.textInputType,
                  onChanged: widget.Onchange,
                  obscureText: Visability,
                  decoration: InputDecoration(
                    fillColor: Themecolor,
                    focusColor: Themecolor,
                    icon: Icon(
                      widget.iconData,
                      color: Themecolor,
                    ),
                    hintText: widget.Str,
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
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (Visability == false) {
                        Visability = true;
                      } else if (Visability == true) {
                        Visability = false;
                      }
                    });
                  },
                  icon: Visability
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility)),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
