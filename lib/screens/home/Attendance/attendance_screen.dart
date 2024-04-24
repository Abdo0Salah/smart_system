import 'package:flutter/material.dart';
import 'package:smart_system/screens/home/Attendance/Tabs/all_taps.dart';
import 'package:smart_system/screens/home/Attendance/Tabs/lecture_tabs.dart';
import 'package:smart_system/screens/home/Attendance/Tabs/section-taps.dart';




class AttendanceScreen extends StatefulWidget {
  static const String routeName = 'AttendanceScreen';
  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("CV"),value: "CV"),
      DropdownMenuItem(child: Text("Select topic"),value: "Select topic"),
      DropdownMenuItem(child: Text("Robotics"),value: "Robotics"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }


  @override

  Widget build(BuildContext context) {
    List<Widget> tabs = [AllTaps(), LectureTaps(), SectionTaps()];
    return Scaffold(
        backgroundColor: Color(0xffEFF3F7FF),
       appBar: AppBar(
    backgroundColor:Colors.transparent ,
    elevation: 0,
    title: Text('Attendance  ',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.black
    )),
    ),
      body:  Form(
          key: _dropdownFormKey,
          child: Column(
       //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  hint: Text("Select Subject name"),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) => value == null ? "Select Subject name" : null,
                    dropdownColor: Colors.white,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: dropdownItems),
              ),
              SizedBox(height: 20,),
              Expanded(
                flex: 5,
                child: Container(
                  height: 450,width: double.infinity,decoration: BoxDecoration(
                  color:Color(0xffEFF3F7FF),

                ),
                  child:    DefaultTabController(

                    length: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
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
                  ),
                ),
              )


            ],
          ))
    );
  }
}
