import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  static const String routeName = 'StartQuiz';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50 , left: 20 , bottom: 20),
                child: Icon(Icons.arrow_back,
                  color: Color(0xff1B406D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50 , left: 40 , bottom: 20 ),
                child: Text(
                  'Quiz',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50 , left: 130 , bottom: 20 ),
                child: Row(
                  children: [
                    Icon(Icons.query_builder,
                    color: Color(0xff3550DC),
                    ),
                    Text('16:35',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight:FontWeight.w400 ,
                      color: Color(0xff3550DC),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
