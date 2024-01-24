import 'package:flutter/material.dart';
import 'package:smart_system/ui_splashes/splash0/splash0_screen.dart';
import 'package:smart_system/ui_splashes/splash1/splash1_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splash0.routename,
      routes: {
        splash0.routename : (context) => splash0(),
        splash1.routename : (context) => splash1(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}