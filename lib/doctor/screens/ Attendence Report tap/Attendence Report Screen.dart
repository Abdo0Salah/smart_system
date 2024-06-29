import 'package:flutter/material.dart';

class AttendenceReportScreen extends StatefulWidget {
  static const String routeName = 'AttendenceReportScreen';

  @override
  State<AttendenceReportScreen> createState() => _AttendenceReportScreenState();
}

class _AttendenceReportScreenState extends State<AttendenceReportScreen> {
  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Computer Vision"), value: "Computer Vision"),
      DropdownMenuItem(
          child: Text("Selected topic "), value: " Selected topic"),
      DropdownMenuItem(child: Text("Robotic"), value: "Robotic"),
      DropdownMenuItem(
          child: Text("micro controller"), value: "micro controller"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFF3F7FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Attendance Report',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              DropdownButtonFormField(
                  hint: Text("Select Course name"),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Select Subject name';
                    }
                    return null;
                  },
                  dropdownColor: Colors.white,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems),
            ),
            SizedBox(
              height: 20,
            ),

            Expanded(
              flex: 5,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEFF3F7FF),
                ),
                child: Column(
                  children: [

                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: .1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              color: Color.fromRGBO(208, 208, 206, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("#",
                                    style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "ID",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Week1",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Week2",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Week3",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green
                                        ),
                                        child: Text(
                                          "present",
                                             style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                         ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text("-",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "201255554554",
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Text(
                                            "present",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent
                                        ),
                                        child: Text(
                                            "Absent",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          
                          ],
                        )),
                 
                  ],
                ),
              ),
            )
                ],
        ));
  }
}
