import 'package:flutter/material.dart';

import 'Tabs/all_tap.dart';
import 'Tabs/lecture_tab.dart';
import 'Tabs/section-tap.dart';

class AttachmentScreen extends StatelessWidget {
  static const String routeName = 'att';
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [AllTap(), LectureTap(), SectionTap()];
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Network"),
          ),
          body: DefaultTabController(
            length: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  TabBar(
                      tabs: [
                    Tab(
                      child: Text("All", style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text("Lectuers", style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text("Sections", style: TextStyle(color: Colors.black)),


                    ),
                  ]),
                  Expanded(child: TabBarView(children: tabs))
                ],
              ),
            ),
          )),
    );
  }
}
