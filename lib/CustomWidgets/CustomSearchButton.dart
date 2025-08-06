// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:noteapp/Models/Constants.dart';

class CustomSearchButton extends StatefulWidget {
  const CustomSearchButton({
    super.key,
    required this.SearchIcon,
    required this.Onpressed,
  });
  final IconData SearchIcon;
  final VoidCallback Onpressed;

  @override
  State<CustomSearchButton> createState() => _CustomSearchButtonState();
}

class _CustomSearchButtonState extends State<CustomSearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Themecolor,
      ),
      child: IconButton(
          onPressed: widget.Onpressed,
          icon: Icon(
            widget.SearchIcon,
            color: Colors.white,
          )),
    );
  }
}
