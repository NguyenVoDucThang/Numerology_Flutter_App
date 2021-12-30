import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:app_project/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:numerology/numerology.dart';
import 'package:provider/provider.dart';

class LifeCycleScreen extends StatefulWidget {
  const LifeCycleScreen({Key? key}) : super(key: key);
  static const String routeName = '/life_cycle_screen';

  @override
  _LifeCycleScreenState createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final number = Provider.of<Numerology>(context, listen: false).numerology;
    var nc = NumerologyCalculator();

    var lifePathNumber = nc.lifePathNumber(number.birthday);

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
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff283c86), Color(0xff45a247)])),
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: [
                DescriptionNumberItem(
                  title: 'Life Cycle Number',
                  description: "Your three numerology life cycles are literally like deep ocean currents running throughout your life. They are powerful and exert much influence throughout your lifepath, but because these life cycle periods are stretched out over long periods of time, their impact is not felt as intensely as is for example, your four pinnacles. Knowing your numerology life cycles, when they begin and end, provides critically important futurist data to help you manage major lifepath transitions!",
                  image: 'assets/images/life_cycle.png',
                  height: 300.0,
                  width: 300.0,
                ),
                DescriptionNumberItem(
                  title: number.getLifeAgeFirstCycle(lifePathNumber),
                  description: number.getLifeFirstCycleMeaning(lifePathNumber),
                  image: 'assets/images/early_years.png',
                  height: 300.0,
                  width: 300.0,
                ),
                DescriptionNumberItem(
                  title: number.getLifeAgeSecondCycle(lifePathNumber),
                  description: number.getLifeSecondCycleMeaning(lifePathNumber),
                  image: 'assets/images/productive_years.png',
                  height: 300.0,
                  width: 300.0,
                ),
                DescriptionNumberItem(
                  title: number.getLifeAgeThirdCycle(lifePathNumber),
                  description: number.getLifeSecondCycleMeaning(lifePathNumber),
                  image: 'assets/images/later_years.png',
                  height: 300.0,
                  width: 300.0,
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
            child: IconButton(icon: const Icon(Icons.menu, color: Colors.white), onPressed: () {
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
