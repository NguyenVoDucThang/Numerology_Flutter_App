import 'package:app_project/models/personal_year.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:app_project/widgets/nine_years_cycle_item.dart';
import 'package:app_project/widgets/personal_year_item.dart';
import 'package:flutter/material.dart';
import 'package:numerology/numerology.dart';

class PersonalYearScreen extends StatelessWidget {
   PersonalYearScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersonalYear personalYear = PersonalYear(birthday: DateTime.now());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.purple, Colors.blue])),
        child: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          children: [
            const NineYearsCycleItem(),
            PersonalYearItem(),
          ],
        ),
      ),
    );
  }
  PageController controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
}
