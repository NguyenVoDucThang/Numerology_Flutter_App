import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_project/models/main_number.dart';
import 'package:flutter/material.dart';
import '../animation.dart';

class BodyDescription extends StatelessWidget {
  final String title;
  final String number;
  final String description;
  final double height;
  final double width;

  BodyDescription({
    Key? key,
    required this.title,
    required this.number,
    required this.description,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        FadeAnimation(
          0.6,
          SizedBox(
            width: double.infinity,
            child: Text(
              title,
              style: const TextStyle(
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
              number,
              height: height,
              width: width,
            ),
          ),
        ),
        const SizedBox(height: 30),
        SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 380,
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(
                    description,
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
        ),
        const Spacer(),
      ],
    );
  }
}
