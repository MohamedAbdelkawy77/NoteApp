// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:noteapp/Models/Constants.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    super.key,
    required this.SearchIcon,
    required this.Onpressed,
  });
  final IconData SearchIcon;
  final VoidCallback Onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Themecolor,
      ),
      child: IconButton(
          onPressed: Onpressed,
          icon: Icon(
            SearchIcon,
            color: Colors.white,
          )),
    );
  }
}
