import 'package:flutter/material.dart';
import 'package:resume/widgets/show_dialog_box.dart';
import 'package:resume/utils/colors/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.fontSize,
    required this.boxWidth,
    required this.boxHeight,
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.backContainerColor = const Color(0xFF260615),
  });

  final String imagePath;
  final String title;
  final double fontSize;
  final double boxWidth;
  final double boxHeight;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color backContainerColor;

  @override
  Widget build(BuildContext context) {
    var lists = [
      "I have had some bad experiences in the past. Only the person experiencing the pain can know how bad that pain is,' she said. The foundation also carries out research on the economic experiences of people who earn low wages. You know how it made you feel after one experience.",
    ];
    return InkWell(
      onTap: () {},
      child: Container(
        width: boxWidth,
        height: boxHeight,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: backContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
        ),
        child: InkWell(
          onTap: () {
            ShowDialogBox(context, lists[0]);
          },
          highlightColor: AppColorController.blackTransparent,
          focusColor: AppColorController.blackTransparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imagePath),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: AppColorController.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
