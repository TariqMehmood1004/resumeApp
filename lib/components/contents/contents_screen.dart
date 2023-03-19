import 'package:flutter/material.dart';
import 'package:resume/widgets/card_widget.dart';
import 'package:resume/utils/colors/app_colors.dart';

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
      backgroundColor: AppColorController.backgroundDark,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(top: 50.0),
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
                const CardWidget(
                    imagePath: 'assets/images/objective.png',
                    fontSize: 12,
                    title: 'Objective'),
                const CardWidget(
                    imagePath: 'assets/images/exp.png',
                    fontSize: 12,
                    title: 'Experience'),
              ],
            ),
            //card 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CardWidget(
                    imagePath: 'assets/images/skills.png',
                    fontSize: 12,
                    title: 'Skils'),
                const CardWidget(
                    imagePath: 'assets/images/acheivements.png',
                    fontSize: 12,
                    title: 'Achievements'),
              ],
            ),
            //
            //card 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CardWidget(
                    imagePath: 'assets/images/expertise.png',
                    fontSize: 12,
                    title: 'Expertise'),
                const CardWidget(
                    imagePath: 'assets/images/qualification.png',
                    fontSize: 12,
                    title: 'Qualification'),
              ],
            ),

            //
            //card 5
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CardWidget(
                    imagePath: 'assets/images/hobbies.png',
                    fontSize: 12,
                    title: 'Hobbies'),
                const CardWidget(
                    imagePath: 'assets/images/ref.png',
                    fontSize: 12,
                    title: 'References'),
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
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: AppColorController.blueBlack,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/tm.jpg'),
          ),
          const SizedBox(width: 20),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: AppColorController.blueLight,
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
