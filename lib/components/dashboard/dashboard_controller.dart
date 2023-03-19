import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resume/components/contents/contents_screen.dart';
import 'package:resume/utils/colors/app_colors.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({super.key});

  @override
  State<DashboardController> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/tm.jpg'),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 380, right: 80),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: AppColorController.transparent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        'I\'m Tariq Mehmood'.toUpperCase(),
                        style: TextStyle(
                          color: AppColorController.backgroundLight,
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Timer(const Duration(milliseconds: 100), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ContentScreenController()));
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: AppColorController.blueBlack,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Text(
                              'Explore my Resume'.toUpperCase(),
                              style: TextStyle(
                                color: AppColorController.backgroundLight,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_right,
                              color: AppColorController.backgroundLight,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
