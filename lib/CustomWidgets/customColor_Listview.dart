import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';

class ColorPick extends StatefulWidget {
  ColorPick({super.key, required this.IsActive, required this.color});
  bool IsActive;
  Color color;
  @override
  State<ColorPick> createState() => _ColorPickState();
}

class _ColorPickState extends State<ColorPick> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        minRadius: widget.IsActive ? 45 : 32,
        backgroundColor: Themecolor,
        child: CircleAvatar(
          minRadius: widget.IsActive ? 40 : 30,
          backgroundColor: widget.color,
        ),
      ),
    );
  }
}

class ListViewColor extends StatefulWidget {
  ListViewColor({super.key});
  int currentColor = 0;
  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, Index) {
          return GestureDetector(
            onTap: () {
              widget.currentColor = Index;
              currentc = Index;
              setState(() {});
            },
            child: ColorPick(
              IsActive: widget.currentColor == Index,
              color: colors[Index],
            ),
          );
        });
  }
}
