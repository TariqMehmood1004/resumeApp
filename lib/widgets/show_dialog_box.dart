// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/app_colors.dart';

// ignore: non_constant_identifier_names
Future<dynamic> ShowDialogBox(
    BuildContext context, String showTitle, String desciption) {
  return showDialog(
    barrierColor: AppColorController.blackTransparent,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColorController.chocolateColor,
        title: Text(
          showTitle.toUpperCase(),
          style: TextStyle(
            color: AppColorController.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        content: Text(
          desciption.toString(),
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColorController.colorBox2,
            fontSize: 12,
          ),
        ),
      );
    },
  );
}
