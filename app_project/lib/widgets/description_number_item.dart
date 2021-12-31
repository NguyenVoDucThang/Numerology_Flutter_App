import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_project/models/main_number.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'yellow_title_components/body_description.dart';

class DescriptionNumberItem extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  double height;
  double width;
  DescriptionNumberItem({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    this.height = 200,
    this.width = 200,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlutterTts textToSpeak = FlutterTts();
    return GestureDetector(
      onTap: () async {
        textToSpeak.setVolume(1);
        await textToSpeak.setLanguage('en-US');
        await textToSpeak.speak(description);
      },
      child: BodyDescription(
        number: image,
        description: description,
        title: title,
        height: height,
        width: width,
      ),
    );
  }
}
