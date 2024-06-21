import 'package:flutter/material.dart';


class AddAttachment extends StatelessWidget {
  static const String routeName = 'AddAttachment';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 20, top: 50, bottom: 30),
                  child: Text(
                    'Add Attachment',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
