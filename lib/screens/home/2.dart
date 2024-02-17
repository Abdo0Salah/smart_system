
import 'package:flutter/material.dart';

class M extends StatelessWidget {
  static const String routeName = 'M';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.transparent ,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
