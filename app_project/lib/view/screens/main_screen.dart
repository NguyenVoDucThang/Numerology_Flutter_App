import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:app_project/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:numerology/numerology.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: const SizedBox(
        width: 250,
        child: NavigationDrawerWidget(),
      ),
      body: Stack(
        children: [
          Container(
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
                  image: number.getUrlImage(lifePathNumber),
                ),
                DescriptionNumberItem(
                  title: 'Attitude Number',
                  description: number.getMeaningOfLifePath(attitudeNumber),
                  image: number.getUrlImage(attitudeNumber),
                ),
                DescriptionNumberItem(
                  title: 'Destiny Number',
                  description: number.getMeaningOfLifePath(destinyNumber),
                  image: number.getUrlImage(destinyNumber),
                ),
                DescriptionNumberItem(
                  title: 'Expression Number',
                  description: number.getMeaningOfLifePath(expressionNumber),
                  image: number.getUrlImage(expressionNumber),
                ),
                DescriptionNumberItem(
                  title: 'Personality Number',
                  description: number.getMeaningOfLifePath(personalityNumber),
                  image: number.getUrlImage(personalityNumber),
                ),
                DescriptionNumberItem(
                  title: 'Soul Urge Number',
                  description: number.getMeaningOfLifePath(soulUrgeNumber),
                  image: number.getUrlImage(soulUrgeNumber),
                ),
              ],
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            top: 2,
            left: 1,
            child: IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                }),
          ),
        ],
      ),
    );
  }

  PageController controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
}
