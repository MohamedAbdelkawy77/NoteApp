import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';

class Listviewnote extends StatelessWidget {
  const Listviewnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext, index) {
            return Listcustomitem[index];
          }),
    );
  }
}
