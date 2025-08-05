// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomBotton.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/views/OnboardingScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Custompageview extends StatelessWidget {
  const Custompageview({
    super.key,
    required this.ImagePath,
    required this.TextDes,
    required this.NameButton,
    required this.Onpreesd,
  });
  final String ImagePath;

  final String TextDes;

  final String NameButton;
  final VoidCallback Onpreesd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(90.0),
              child: Image.asset(
                ImagePath,
                height: 200,
                width: 200,
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.grey,
                expansionFactor: 3,
                spacing: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                TextDes,
                style: TextStyle(color: Themecolor, fontSize: 25),
              ),
            ),
            CustomButton(
              Isloading: false,
              onpressed: Onpreesd,
              TitleOfBotton: NameButton,
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
