import 'package:app_project/models/main_number.dart';
import 'package:app_project/widgets/description_number_item.dart';
import 'package:app_project/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:numerology/numerology.dart';
import 'package:provider/provider.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);
  static const String routeName = '/phone_number_screen';

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final passedData = ModalRoute.of(context)!.settings.arguments as Map;
    MainNumber numberData = MainNumber(name: "hihi", birthday: DateTime.now());
    final phoneNumber = passedData['phone_number'];
    int phoneNumerology = numberData.getPhoneNumberNumerology(phoneNumber);
    String numberMeaning = numberData.getPhoneNumberMeaning(phoneNumerology);

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
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Color(0xffcc2b5e), Color(0xff753a88)],
              ),
            ),
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: [
                DescriptionNumberItem(
                  title: 'Phone Number Meaning',
                  description:
                      'Numerology as a study of numbers, when we say every number leaves impact then the mobile number is one which becomes very important as it is directly linked to us and influences our life.',
                  image: 'assets/images/phone_number.png',
                  height: 300,
                  width: 300,
                ),
                DescriptionNumberItem(
                  title: 'Your Phone Number',
                  description: numberMeaning,
                  image: numberData.getUrlPhoneNumImage(phoneNumerology),
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
