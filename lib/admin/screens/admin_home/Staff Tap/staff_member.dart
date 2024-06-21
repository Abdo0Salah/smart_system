import 'package:flutter/material.dart';

import 'add_staff.dart';

class StaffMember extends StatelessWidget {
  static const String routeName = 'StaffMember';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 65,
            width: 65,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AddStaff.routeName,
                );
              },
              elevation: 10,
              backgroundColor: Colors.black,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: const Icon(Icons.add)),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:
                  const EdgeInsets.only(right: 20, top: 60, bottom: 20),
                  child: Text(
                    'Staff Member',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                      color: Color(0xffF8F8F8),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Text(
                                "#",
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "information",
                              ),
                            ),
                            const Expanded(
                              flex: 3,
                              child: Text(
                                "Email",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Action",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "2",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Ehab Rushdy",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "ehab@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "3",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Nabile lashin",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "nabile@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "4",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Marwa khashba",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Marwa@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "5",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Hannaa Hamza",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Hanna@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "6",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Osama Elkomy",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "   osama@fci.zu.edu.",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "7",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Waleed Khader",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "waleed@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "8",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Osama Elkomy",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "   osama@fci.zu.edu.",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "9",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Waleed Khader",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "waleed@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "10",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Osama Elkomy",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "   osama@fci.zu.edu.",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffD0D0CE),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "11",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Waleed Khader",
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "waleed@fci.zu.edu.eg",
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.mode_edit_outlined,
                                      color: Color(0xffD0D0CE),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.delete_outlined,
                                        color: Color(0xffD0D0CE)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
