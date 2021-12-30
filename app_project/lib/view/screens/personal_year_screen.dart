import 'package:app_project/models/personal_year.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:app_project/widgets/navigation_drawer_widget.dart';
import 'package:app_project/widgets/nine_years_cycle_item.dart';
import 'package:app_project/widgets/personal_year_item.dart';
import 'package:flutter/material.dart';
import 'package:numerology/numerology.dart';

class PersonalYearScreen extends StatelessWidget {
  PersonalYearScreen({Key? key}) : super(key: key);
  static const String routeName = '/personal_year_screen';
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    PersonalYear personalYear = PersonalYear(birthday: DateTime.now());

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
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xff0099F7), Color(0xffF11712)])),
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: [
                const NineYearsCycleItem(),
                PersonalYearItem(),
              ],
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
