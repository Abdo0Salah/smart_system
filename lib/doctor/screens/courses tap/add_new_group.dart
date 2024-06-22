import 'package:flutter/material.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_attachment.dart';

import 'doctor_subject_group.dart.dart';

class AddNewGroup extends StatelessWidget {
  static const String routeName = 'AddNewGroup';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 48,
            width: 48,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  DoctorSubjectGroups.routeName,
                );
              },
              elevation: 10,
              backgroundColor: Color(0xff4C6ED7),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Image.asset('assets/images/doctor/correct.png'),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
                child: Text(
                  'Selected Topic',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  'Group name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
                child: Text(
                  'Doctor /Staff ‘s name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Ehab Rousdy',
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
                child: Text(
                  'Description of Group',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 35.0, horizontal: 5.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText:
                      'موضوعات مختاره /الفرقه التالته /التيرم التاني 2023_2024',
                )),
              ),
              SizedBox(
                  height: 50),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.push_pin_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pin Group',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color(0xff554A4A),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/doctor/line-md_switch-filled.png'),
                    ],
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
