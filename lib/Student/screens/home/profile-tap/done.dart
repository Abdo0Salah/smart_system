import 'package:flutter/material.dart';
import 'package:smart_system/Student/screens/home/home.dart';

class Done extends StatelessWidget {
  const Done({super.key});
  static const String routeName = 'Done';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F7),

      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              HomeScreen.routeName,
            );

          },
            child: const Text("Done")),
      ),
    );
  }
}
