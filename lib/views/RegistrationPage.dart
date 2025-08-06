import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomBotton.dart';
import 'package:noteapp/CustomWidgets/CustomRegisterPage.dart';
import 'package:noteapp/Models/Constants.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF452262),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "Assets/Images/Notespurpleicon.jpg",
            height: 400,
            width: 400,
          ),
          Customregisterpage(
              Str: "Enter Your Email",
              Onchange: (value) {},
              textInputType: TextInputType.text),
          Customregisterpage(
              Str: "Enter Your PassWord!",
              Onchange: (value) {},
              textInputType: TextInputType.text),
          CustomButton(
              onpressed: () {}, TitleOfBotton: "Register", Isloading: false),
        ],
      ),
    );
  }
}
