import 'package:flutter/material.dart';



class CourseNameQr extends StatelessWidget {
  static const String routeName = 'CourseNameQr';

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
              Padding(
                padding:
                const EdgeInsets.only(left: 30 ,  top: 20, bottom: 30),
                child: Text(
                  'Course Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.only(left: 50),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 405,
                  height: 425,
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
                        color: Color(0xffF8F8F8),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.rectangle_outlined),
                                ),
                              ),
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Student ID",
                                ),
                              ),
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Time In",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                  flex: 2,
                                  child: Icon(Icons.delete_outlined,
                                          color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                flex: 2,
                                child: Icon(Icons.delete_outlined,
                                    color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                flex: 2,
                                child: Icon(Icons.delete_outlined,
                                    color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                flex: 2,
                                child: Icon(Icons.delete_outlined,
                                    color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                flex: 2,
                                child: Icon(Icons.delete_outlined,
                                    color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                      Container(
                        width: 406,
                        height: 64,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/images/doctor/vector_profile_logo.png')
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2025255255458",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Text(
                                    "08:53 Am",
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              Expanded(
                                flex: 2,
                                child: Icon(Icons.delete_outlined,
                                    color: Color(0xffD0D0CE)),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffD0D0CE),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15 , top: 20, bottom: 15 , right: 15),
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff82A0D2),
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    fixedSize: Size(380, 70),
                    backgroundColor: Color(0xff8EAFD9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  onPressed: (){
                    //   Navigator.of(context).pop(AddAttachment.routeName);
                  },
                  child: const Text(
                    "Save Attendence",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
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
