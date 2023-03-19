import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/components/dashboard/dashboard_controller.dart';
import 'package:resume/utils/colors/appColors.dart';

class SplashScreenController extends StatefulWidget {
  const SplashScreenController({super.key});

  @override
  State<SplashScreenController> createState() => _SplashScreenControllerState();
}

class _SplashScreenControllerState extends State<SplashScreenController> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColorController.transparent,
    ));

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorController.backgroundDark,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColorController.backgroundLight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 730,
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        width: 25,
                        height: 25,
                        color: Colors.black,
                        image: AssetImage('assets/images/resumeSplash.png'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Resume app'.toUpperCase(),
                        style: TextStyle(
                          color: AppColorController.backgroundDark,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                // height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end, //y-axis
                  crossAxisAlignment: CrossAxisAlignment.center, //x-axis
                  children: [
                    const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'From',
                      style: TextStyle(
                          color: AppColorController.backgroundDark,
                          fontSize: 8.0),
                    ),
                    Text(
                      'Notio Software Solutions',
                      style: TextStyle(
                          color: AppColorController.backgroundDark,
                          fontSize: 8.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
