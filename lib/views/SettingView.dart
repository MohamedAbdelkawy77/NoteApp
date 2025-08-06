import 'package:flutter/material.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/views/RegistrationPage.dart';

class Settingview extends StatelessWidget {
  const Settingview({super.key});
  static final String id = "SettingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Registrationpage();
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(border: Border.all(color: Themecolor)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Registration Page",
                      style: TextStyle(fontSize: 20, color: Themecolor),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "📌 Overview: This is a simple yet elegant Note-Taking App built using Flutter. It allows users to create, read, and manage notes efficiently with a clean UI and smooth performance.  🚀 Tech Stack: Flutter – for building beautiful and responsive cross-platform UI.  Hive – a lightweight and blazing fast NoSQL database for local storage. ",
                          style: TextStyle(fontSize: 20, color: Themecolor),
                        ),
                      );
                    });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(border: Border.all(color: Themecolor)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "About Us",
                      style: TextStyle(fontSize: 20, color: Themecolor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
