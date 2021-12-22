import 'package:flutter/material.dart';
import 'animation.dart';
import 'sign_form.dart';

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
            children: const [
              SizedBox(height: 36),
              FadeAnimation(
                0.4,
                Text(
                  'About you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 16),
              FadeAnimation(
                0.5,
                Text(
                  'Tell me about yourself\nI\'ll show your number and also its meaning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(height: 46),
              FadeAnimation(0.6, SignForm()),
              SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
