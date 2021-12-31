import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_project/models/personal_year.dart';
import 'package:flutter/material.dart';

import '../animation.dart';

class BodyPersonalYearItem extends StatelessWidget {
  final PersonalYear personalYear;

  const BodyPersonalYearItem({
    Key? key,
    required this.personalYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        FadeAnimation(
          0.8,
          Center(
            child: Image.asset(
              personalYear.imageUrlOfPersonalYear,
              height: 200,
              width: 200,
            ),
          ),
        ),
        const SizedBox(height: 25),
        FadeAnimation(
          0.6,
          SizedBox(
            width: double.infinity,
            child: Text(
              personalYear.titleOfYearNumber,
              style: const TextStyle(
                fontFamily: 'Magic',
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(249,213,19,1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Center(
          child: SizedBox(
            width: 380,
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  personalYear.meaningOfYearNumber,
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    height: 1.3,
                    fontWeight: FontWeight.w300,
                    color: Color(0xfff1e7fe),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
