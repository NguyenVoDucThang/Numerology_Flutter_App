import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'yellow_title_components/body_nine_years_cycle_item.dart';

class NineYearsCycleItem extends StatelessWidget {
  const NineYearsCycleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlutterTts textToSpeak = FlutterTts();
    String script = 'Personal year number gives you the prediction of the past years and the future. Each personal year is part of a nine-year cycle, starting from when you were born and repeatedly renewing after every ninth year.';

    return GestureDetector(
      onTap: () async {
        textToSpeak.setVolume(1);
        await textToSpeak.setLanguage('en-US');
        await textToSpeak.speak(script);
      },
      child: BodyNineYearsCycleItem(
        script: script,
      ),
    );;
  }
}
