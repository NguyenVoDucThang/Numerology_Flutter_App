import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("Hello world"),
      ),
    );
  }
}
