import 'package:flutter/material.dart';
import 'package:resume/widgets/show_dialog_box.dart';
import 'package:resume/utils/colors/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.fontSize,
  });

  final String imagePath;
  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    var lists = [
      "I have had some bad experiences in the past. Only the person experiencing the pain can know how bad that pain is,' she said. The foundation also carries out research on the economic experiences of people who earn low wages. You know how it made you feel after one experience.",
    ];
    return Container(
      width: 175,
      height: 120,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: AppColorController.blueBlackOff,
          borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: () {
          debugPrint('tapped');
          ShowDialogBox(context, lists[0]);
        },
        highlightColor: AppColorController.blackTransparent,
        focusColor: AppColorController.blackTransparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
