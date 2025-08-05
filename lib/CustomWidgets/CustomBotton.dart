// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:noteapp/Models/Constants.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.onpressed,
      required this.TitleOfBotton,
      required this.Isloading});
  final VoidCallback onpressed;
  final String TitleOfBotton;
  final bool Isloading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ElevatedButton(
        onPressed: widget.onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Themecolor,
          fixedSize: Size(double.maxFinite, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: widget.Isloading
            ? CircularProgressIndicator(
                backgroundColor: Colors.white,
              )
            : Text(
                widget.TitleOfBotton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
      ),
    );
  }
}
