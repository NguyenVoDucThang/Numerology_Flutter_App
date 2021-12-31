import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../animation.dart';

class BodyNineYearsCycleItem extends StatelessWidget {
  final String script;

  const BodyNineYearsCycleItem({
    Key? key,
    required this.script,
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
              'assets/images/9 year cycle.png',
              height: 400,
              width: 400,
            ),
          ),
        ),
        const SizedBox(height: 25),
        FadeAnimation(
          0.6,
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Nine Years Cycle',
              style: TextStyle(
                fontFamily: 'Magic',
                fontSize: 40,
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
                  script,
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
