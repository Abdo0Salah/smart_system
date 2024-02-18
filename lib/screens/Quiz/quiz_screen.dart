import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/screens/Quiz/lecture_tab.dart';
import 'package:smart_system/screens/Quiz/section-tap.dart';

class QuizScreen extends StatelessWidget {
  static const String routeName = 'Quiz';
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [LecturTab(), SectionTap()];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        body: DefaultTabController(
          length: 3,
          child: Container(
            child: Column(
                children: [
                  Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20 , left: 20 , bottom: 20),
                       child: InkWell(
                           onTap: (){},
                           child: Icon(Icons.arrow_back,
                             color: Color(0xff1B406D),
                           )),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20 , left: 20 , bottom: 20),
                       child: Text(
                         'Quiz',
                         style: TextStyle(
                           fontSize: 24,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                     ),
                   ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 100 , left: 20 , bottom: 10),
                    child: TabBar(tabs: [
                      Tab(
                        child: Text("Lectuers",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Sections",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ]),
                  ),
                  Expanded(child: TabBarView(children: tabs)),
                ]),
          ),
        ),
      ),
    );
  }
}
