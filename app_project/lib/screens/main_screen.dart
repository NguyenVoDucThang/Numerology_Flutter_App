import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/page_one/attitude_number.dart';
import 'package:app_project/widgets/page_one/destiny_number.dart';
import 'package:app_project/widgets/page_one/expression_number.dart';
import 'package:app_project/widgets/page_one/life_path_number.dart';
import 'package:app_project/widgets/page_one/personality_number.dart';
import 'package:app_project/widgets/page_one/soul_urge_number.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    MainNumber number =
        ModalRoute.of(context)!.settings.arguments as MainNumber;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(100, 101, 236, 1),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          LifePathNumberItem(
            number: number,
          ),
          AttitudeNumberItem(
            number: number,
          ),
          DestinyNumberItem(
            number: number,
          ),
          ExpressionNumberItem(
            number: number,
          ),
          PersonalityNumberItem(
            number: number,
          ),
          SoulUrgeNumberItem(
            number: number,
          ),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  PageController controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
}
