import 'package:flutter/material.dart';

import 'Student_list-result.dart';

class StudentsList extends StatefulWidget {
  static const String routeName = 'StudentsList';

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  var selectedDate = DateTime.now();
  var selectedDate2 = DateTime.now();
  String? selectedValue = null;
  String? selectedValue2 = null;
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("First Level"), value: "First Level"),
      DropdownMenuItem(child: Text("Second Level "), value: " Second Level"),
      DropdownMenuItem(child: Text("Third Level"), value: "Third Level"),
      DropdownMenuItem(child: Text("Fourth Level"), value: "Fourth Level"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems2 = [
      DropdownMenuItem(child: Text("All"), value: "All"),
      DropdownMenuItem(
          child: Text("Selected topic "), value: " Selected topic"),
      DropdownMenuItem(child: Text("Robotic"), value: "Robotic"),
      DropdownMenuItem(
          child: Text("micro controller"), value: "micro controller"),
    ];
    return menuItems2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XF0F4F8FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Student List  ',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _dropdownFormKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Select level year",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      hint: Text("Select level year"),
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
                      validator: (value) =>
                          value == null ? "Select Subject name" : null,
                      dropdownColor: Colors.white,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "From date:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => selectDate(context),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        selectedDate
                                            .toString()
                                            .substring(0, 10),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.calendar_month)
                                ],
                              ),
                            ),
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "To date:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => selectDate2(context),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        selectedDate2
                                            .toString()
                                            .substring(0, 10),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.calendar_month)
                                ],
                              ),
                            ),
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    " Course name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      hint: Text("Course name"),
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
                      validator: (value) =>
                          value == null ? "Course name" : null,
                      dropdownColor: Colors.white,
                      value: selectedValue2,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue2 = newValue!;
                        });
                      },
                      items: dropdownItems2),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    " Attendanse rate %",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: ">=75%")),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, StudentListResult.routeName);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Select",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  selectDate(context) async {
    DateTime? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate == null) {
      return;
    } else
      selectedDate = chosenDate;
    setState(() {});
  }

  selectDate2(context) async {
    DateTime? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate == null) {
      return;
    } else
      selectedDate2 = chosenDate;
    setState(() {});
  }
}
