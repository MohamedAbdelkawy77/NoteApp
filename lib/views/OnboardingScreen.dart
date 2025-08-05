import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomPageView.dart';
import 'package:noteapp/views/NoteView.dart';  
final PageController controller =
    PageController(viewportFraction: 1, keepPage: true);

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Custompageview> ListPageView = [
      Custompageview(
        ImagePath: "Assets/Images/business-strategy.png",
        TextDes: "Write Your  Habits And Ideas Come In Your Head.",
        NameButton: "Next",
        Onpreesd: () {
          controller.nextPage(
              curve: Curves.bounceIn, duration: Duration(milliseconds: 100));
        },
      ),
      Custompageview(
        ImagePath: "Assets/Images/graph.png",
        TextDes: "It Is Improve Your Discliplines and Mantelity.",
        NameButton: "Next",
        Onpreesd: () {
          controller.nextPage(
              curve: Curves.bounceIn, duration: Duration(milliseconds: 100));
        },
      ),
      Custompageview(
        ImagePath: "Assets/Images/registration.png",
        TextDes: "And You GET IN App A Registration To Keep Your Notes.",
        NameButton: "GetStarted",
        Onpreesd: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Noteview.Id,
            (Route<dynamic> route) => false,
          );
        },
      ),
    ];
    return PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, Index) {
          return ListPageView[Index];
        });
  }
}
