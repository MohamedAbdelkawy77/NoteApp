import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/Models/Constants.dart';

class Customlisttile extends StatelessWidget {
  const Customlisttile(
      {super.key, required this.TextNew, required this.Descraption});
  final String TextNew;
  final String Descraption;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(0),
      title: Text(
        TextNew,
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text(
          Descraption,
          style: TextStyle(
              fontSize: 15, color: const Color.fromARGB(255, 65, 59, 59)),
        ),
      ),
      trailing: IconButton(
          onPressed: () {
            Hive.box(BoxNote).delete(key);
          },
          icon: Icon(
            Icons.delete,
            color: Colors.black,
          )),
    );
  }
}
