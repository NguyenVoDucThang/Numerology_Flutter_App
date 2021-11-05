import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'animation.dart';
import 'sign_form.dart';
import 'social_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 36),
              FadeAnimation(
                0.4,
                const Text(
                  'About You',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FadeAnimation(
                0.5,
                const Text(
                  'Tell us about you\nWe will get your number and meaning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 46),
              FadeAnimation(0.6, SignForm()),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
