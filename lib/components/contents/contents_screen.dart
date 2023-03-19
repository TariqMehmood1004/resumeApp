import 'package:flutter/material.dart';
import 'package:resume/utils/colors/app_colors.dart';

class ContentScreenController extends StatefulWidget {
  const ContentScreenController({super.key});

  @override
  State<ContentScreenController> createState() =>
      _ContentScreenControllerState();
}

class _ContentScreenControllerState extends State<ContentScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 50.0),
            child: Text(
              'Resume'.toUpperCase(),
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 80.0,
            margin: const EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
              color: AppColorController.colorBox2,
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/tm.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
