import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/Admin/screens/admin_home/admin-home.dart';
import 'package:smart_system/Student/screens/home/materials-tap/assignment/Tabs/all_tap.dart';
import 'package:smart_system/Student/screens/home/materials-tap/assignment/Tabs/lecture_tab.dart';
import 'package:smart_system/Student/screens/home/materials-tap/assignment/Tabs/section-tap.dart';



class AssinmentScreen extends StatelessWidget {
  const AssinmentScreen({super.key});
  static const String routeName = 'ass';


  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [AllTap(), LectureTap(), SectionTap()];
    return SafeArea(
      child: Scaffold(
          backgroundColor:Color(0xffEFF3F7FF)
          ,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor:Color(0xffEFF3F7FF) ,
            elevation: 0,
            title: Text('Assignment of network',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                )),
          ),

          body: Container( decoration: BoxDecoration(
         color:Color(0xffEFF3F7FF),
          ),
            child: DefaultTabController(

              length: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30).r),
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
            ),
          )),
    );
  }
}

