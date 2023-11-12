import 'package:flutter/material.dart';

class T extends StatelessWidget {
  static const String routeName = 'T';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.transparent ,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
