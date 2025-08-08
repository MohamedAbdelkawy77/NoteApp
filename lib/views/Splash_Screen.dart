import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/views/NoteView.dart';
import 'package:noteapp/views/OnboardingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String Id = "SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    GetDataofOnBoarding();
  }

  Future<void> GetDataofOnBoarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Onboardingwork = prefs.getBool("Onboardingsee");
    Timer(Duration(seconds: 2), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Onboardingwork == null ? Onboardingscreen() : Noteview()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF452262),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset("Assets/Images/Notespurpleicon.jpg")
              .animate(onPlay: (controller) => controller.repeat())
              .shake(hz: 2),
        ),
      ),
    );
  }
}
