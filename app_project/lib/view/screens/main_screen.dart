import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:flutter/material.dart';
import 'package:numerology/numerology.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final number = Provider.of<Numerology>(context, listen: false).numerology;
    var nc = NumerologyCalculator();

    var lifePathNumber = nc.lifePathNumber(number.birthday);
    var attitudeNumber = nc.attitudeNumber(number.birthday);
    var destinyNumber = nc.destinyNumber(number.birthday);
    var expressionNumber = nc.expressionNumber(number.name);
    var personalityNumber = nc.personalityNumnber(number.name);
    var soulUrgeNumber = nc.soulUrgeNumber(number.name);

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
            DescriptionNumberItem(
              title: 'Life Path Number',
              description: number.getMeaningOfLifePath(lifePathNumber),
              number: number.getUrlImage(lifePathNumber),
            ),
            DescriptionNumberItem(
              title: 'Attitude Number',
              description: number.getMeaningOfLifePath(attitudeNumber),
              number: number.getUrlImage(attitudeNumber),
            ),
            DescriptionNumberItem(
              title: 'Destiny Number',
              description: number.getMeaningOfLifePath(destinyNumber),
              number: number.getUrlImage(destinyNumber),
            ),
            DescriptionNumberItem(
              title: 'Expression Number',
              description: number.getMeaningOfLifePath(expressionNumber),
              number: number.getUrlImage(expressionNumber),
            ),
            DescriptionNumberItem(
              title: 'Personality Number',
              description: number.getMeaningOfLifePath(personalityNumber),
              number: number.getUrlImage(personalityNumber),
            ),
            DescriptionNumberItem(
              title: 'Soul Urge Number',
              description: number.getMeaningOfLifePath(soulUrgeNumber),
              number: number.getUrlImage(soulUrgeNumber),
            ),
          ],
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  PageController controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
}
