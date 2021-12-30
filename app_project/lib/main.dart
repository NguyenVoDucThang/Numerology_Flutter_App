import 'package:app_project/view/complete_sign_up_screen/get_information_screen.dart';
import 'package:app_project/view/onboarding/onboarding_screen.dart';
import 'package:app_project/view/screens/life_cycle_screen.dart';
import 'package:app_project/view/screens/personal_year_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_project/view/screens/main_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'models/main_number.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Numerology(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Numerology',
        theme: ThemeData(
          primaryColor: Colors.purple[800],
          appBarTheme: AppBarTheme(
            color: Colors.purple[800],
          ),
          fontFamily: "Helvetica",
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 16),
          ),
        ),
        home: const MyHomePage(title: 'Numerology'),
        routes: {
          GetInformationScreen.routeName: (context) =>
              const GetInformationScreen(),
          MainScreen.routeName: (context) => const MainScreen(),
          PersonalYearScreen.routeName: (context) => PersonalYearScreen(),
          LifeCycleScreen.routeName: (context) => const LifeCycleScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final isGetNumber =
        Provider.of<Numerology>(context, listen: false).isGetNumber;
    if (isGetNumber == false) {
      return OnBoardingScreen();
    } else {
      return MainScreen();
    }
  }
}
