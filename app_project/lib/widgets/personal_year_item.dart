import 'package:app_project/models/main_number.dart';
import 'package:app_project/models/personal_year.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

import 'body_personal_year_item.dart';

class PersonalYearItem extends StatelessWidget {
  const PersonalYearItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = Provider.of<Numerology>(context, listen: false).numerology;
    final personalYear = PersonalYear(birthday: number.birthday);
    final FlutterTts textToSpeak = FlutterTts();

    return GestureDetector(
      onTap: () async {
        textToSpeak.setVolume(1);
        await textToSpeak.setLanguage('en-US');
        await textToSpeak.speak(personalYear.meaningOfYearNumber);
      },
      child: BodyPersonalYearItem(
        personalYear: personalYear,
      ),
    );
  }
}
