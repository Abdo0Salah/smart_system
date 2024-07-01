import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Write-message.dart';

class StudentListResult extends StatefulWidget {
  const StudentListResult({super.key});
  static const String routeName = 'StudentListResult';

  @override
  State<StudentListResult> createState() => _StudentListResultState();
}

class _StudentListResultState extends State<StudentListResult> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3= false;
  bool _isChecked4 = false;
  bool _isCheckedall = false;
  @override

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, WriteMessage.routeName);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Send To",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
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
                            Expanded(flex: 1,
                              child: Checkbox(
                                value: _isCheckedall,
                                onChanged: (bool? value) {
                                  _isChecked = true;
                                  _isChecked2 = true;
                                  _isChecked3 = true;
                                  _isChecked4 = true;

                                  setState(() {
                                    _isCheckedall = value ?? false;
                                    _isChecked = value ?? false;
                                    _isChecked2 = value ?? false;
                                    _isChecked3 = value ?? false;
                                    _isChecked4 = value ?? false;
                                  });
                                },
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Student ID",
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Parent ID",
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Cources",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Rate",
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
                            Expanded(flex: 1,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value ?? false;
                                  });
                                },
                              ),
                            ),

                            Expanded(
                              flex: 2,
                              child: Text(
                                "2014421240",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2065484511",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-sellect"),
                                    Text("3-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("75%"),
                                    Text("60%"),
                                    Text("44%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Expanded(flex: 1,
                              child: Checkbox(
                                value: _isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked2 = value ?? false;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2049420540",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2064473421",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-Image processing"),
                                    Text("3-Android"),
                                    Text("4-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("70%"),
                                    Text("47%"),
                                    Text("56%"),
                                    Text("58%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Expanded(flex: 1,
                              child: Checkbox(
                                value: _isChecked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked3 = value ?? false;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2092585525",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2084315214",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-IOt"),
                                    Text("2-Animation"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("74%"),
                                    Text("49%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Expanded(flex: 1,
                              child: Checkbox(
                                value: _isChecked4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked4 = value ?? false;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2439547522",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2301425945",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-sellect"),
                                    Text("3-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("30%"),
                                    Text("64%"),
                                    Text("70%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
