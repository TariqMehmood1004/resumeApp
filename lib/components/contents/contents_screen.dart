import 'package:flutter/material.dart';
import 'package:resume/widgets/card_widget.dart';
import 'package:resume/utils/colors/app_colors.dart';
import 'package:resume/widgets/show_dialog_box.dart';

class ContentScreenController extends StatefulWidget {
  const ContentScreenController({super.key});

  @override
  State<ContentScreenController> createState() =>
      _ContentScreenControllerState();
}

class _ContentScreenControllerState extends State<ContentScreenController> {
  var contentsList = {
    "Objective":
        "I have had some bad experiences in the past. Only the person experiencing the pain can know how bad that pain is,' she said. The foundation also carries out research on the economic experiences of people who earn low wages. You know how it made you feel after one experience.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorController.chocolateColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: Text(
                'Resume'.toUpperCase(),
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: AppColorController.white,
                ),
              ),
            ),
            resumeHeading(context),

            //card 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 150,
                  boxHeight: 130,
                  imagePath: 'assets/images/objective.png',
                  fontSize: 11,
                  title: 'Objective',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(
                        context, 'Objective', TabSkills.description[0]);
                  },
                ),
                CardWidget(
                  boxWidth: 200,
                  boxHeight: 130,
                  imagePath: 'assets/images/exp.png',
                  fontSize: 11,
                  title: 'Experience',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(
                      context,
                      'Experiences',
                      "C# , C/C++, Flutter Development, Java, Dart Programming, Computer Teacher, Xamarin, ASP.NET, Database  Developer , Web Development, Mobile Development, Python",
                    );
                  },
                ),
              ],
            ),
            //card 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 355,
                  boxHeight: 100,
                  imagePath: 'assets/images/skills.png',
                  fontSize: 11,
                  title: 'Skils',
                  topLeft: 20,
                  topRight: 0,
                  bottomLeft: 0,
                  bottomRight: 20,
                  controller: () {
                    ShowDialogBox(context, 'Skills Set',
                        "C# , C/C++, Flutter Development, Java, Dart Programming, Computer Teacher, Xamarin, ASP.NET, Database  Developer , Web Development, Mobile Development, Python");
                  },
                ),
              ],
            ),
            //
            //card 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 355,
                  boxHeight: 100,
                  imagePath: 'assets/images/acheivements.png',
                  fontSize: 11,
                  title: 'Achievements',
                  topLeft: 0,
                  topRight: 20,
                  bottomLeft: 20,
                  bottomRight: 0,
                  controller: () {
                    ShowDialogBox(context, 'Hi', 'descriptions');
                  },
                ),
              ],
            ),
            //card 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 175,
                  boxHeight: 130,
                  imagePath: 'assets/images/expertise.png',
                  fontSize: 11,
                  title: 'Expertise',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(context, 'Hi', 'descriptions');
                  },
                ),
                CardWidget(
                  boxWidth: 175,
                  boxHeight: 130,
                  imagePath: 'assets/images/qualification.png',
                  fontSize: 11,
                  title: 'Qualification',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(context, 'Hi', 'descriptions');
                  },
                ),
              ],
            ),

            //
            //card 5
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 200,
                  boxHeight: 130,
                  imagePath: 'assets/images/hobbies.png',
                  fontSize: 11,
                  title: 'Hobbies',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(context, 'Hi', 'descriptions');
                  },
                ),
                CardWidget(
                  boxWidth: 150,
                  boxHeight: 130,
                  imagePath: 'assets/images/ref.png',
                  fontSize: 11,
                  title: 'References',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(context, 'Hi', 'descriptions');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container resumeHeading(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.10,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          color: AppColorController.palleteColor1,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/p1.jpg'),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: AppColorController.reddish,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              'Tariq Mehmood'.toUpperCase(),
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: AppColorController.cardBGColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
