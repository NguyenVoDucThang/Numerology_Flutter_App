import 'package:app_project/view/screens/address_number_screen/get_address_number_screen.dart';
import 'package:app_project/view/screens/life_cycle_screen.dart';
import 'package:app_project/view/screens/main_screen.dart';
import 'package:app_project/view/screens/personal_year_screen/personal_year_screen.dart';
import 'package:app_project/view/screens/phone_number_screen/get_phone_number_screen.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xff0f0c29), Color(0xff302b63)])),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/title.png',
              height: 100,
              width: double.infinity,
            ),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Main Numbers',
                icon: Icons.accessibility,
                onClicked: () {
                  selectedItem(context, 0);
                }),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Year Numbers Cycle',
                icon: Icons.access_time_sharp,
                onClicked: () {
                  selectedItem(context, 1);
                }),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Life Cycle Period',
                icon: Icons.all_inclusive,
                onClicked: () {
                  selectedItem(context, 2);
                }),

            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Your Phone Number',
                icon: Icons.app_settings_alt_sharp,
                onClicked: () {
                  selectedItem(context, 3);
                }),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Address Number',
                icon: Icons.location_on,
                onClicked: () {
                  selectedItem(context, 4);
                }),
          ], // <Widget>[]
        ), // ListView
      ), // Container
    );
  }

  Widget buildMenuItem(
      {required String text,
      required IconData icon,
      required VoidCallback? onClicked}) {
    const color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: const TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
          )),
      onTap: onClicked,
    ); // ListTile
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).pushNamed(MainScreen.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(PersonalYearScreen.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(LifeCycleScreen.routeName);
        break;
      case 3:
        Navigator.of(context).pushNamed(GetPhoneNumberScreen.routeName);
        break;
      case 4:
        Navigator.of(context).pushNamed(GetAddressScreen.routeName);
        break;
    }
  }
}
