import 'package:flutter/material.dart';

class Customlisttile extends StatelessWidget {
  const Customlisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(0),
      title: Text(
        "New Note",
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text(
          "Descraption of the note I Think!",
          style: TextStyle(
              fontSize: 15, color: const Color.fromARGB(255, 65, 59, 59)),
        ),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: Colors.black,
          )),
    );
  }
}
