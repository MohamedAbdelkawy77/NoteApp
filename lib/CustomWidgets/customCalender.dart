import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';

class Customcalender extends StatefulWidget {
  const Customcalender({super.key});

  @override
  State<Customcalender> createState() => _CustomcalenderState();
}

class _CustomcalenderState extends State<Customcalender> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 30,
        children: [
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.utc(2035));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Calender",
                  style: TextStyle(color: Themecolor, fontSize: 25),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
              showTimePicker(context: context, initialTime: TimeOfDay.now());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Page",
                  style: TextStyle(color: Themecolor, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
