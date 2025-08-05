import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomListTile.dart';
import 'package:noteapp/views/EditVeiw.dart';

// ignore: must_be_immutable
class Customnoteitem extends StatelessWidget {
  Customnoteitem({super.key, required this.themecoloritem});
  Color themecoloritem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Editveiw.Id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16),
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themecoloritem,
        ),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Customlisttile(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  DateTime.now().toString().split(" ").first,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
