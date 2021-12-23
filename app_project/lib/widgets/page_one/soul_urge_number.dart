import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/page_one/animation.dart';
import 'package:flutter/material.dart';
import 'package:numerology/numerology.dart';

class SoulUrgeNumberItem extends StatelessWidget {
  final MainNumber number;

  const SoulUrgeNumberItem({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nc = NumerologyCalculator();
    final myNumber = nc.soulUrgeNumber(number.name);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        FadeAnimation(
          0.6,
          const SizedBox(
            width: double.infinity,
            child: Text(
              "SOUL URGE NUMBER",
              style: TextStyle(
                fontFamily: 'Magic',
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Color(0xfff1e7fe),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 30),
        FadeAnimation(
          0.8,
          Center(
            child: Image.asset(
              number.getUrlImage(myNumber),
              height: 200,
              width: 200,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Center(
          child: SizedBox(
            width: 380,
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  number.getMeaningOfSoulUrge(myNumber),
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
