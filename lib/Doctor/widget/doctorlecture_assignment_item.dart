import 'package:flutter/material.dart';
class DoctorlectureAssignmentItem  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/doctor/file.png',
                ),                        ),
              Text(
                "  Assignment 1",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),

            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
            Icon(Icons.calendar_month),
              Text(
                "17 nov 2024",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(Icons.access_time_sharp),
              Text(
                "12:00 PM",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(2, 4) // changes position of shadow
                            ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: const Color.fromRGBO(162, 221, 171, 1)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.edit),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Edit" ,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(2, 4) // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromARGB(255, 251, 177, 177)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.edit),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Delete" ,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
         
        ]),
      ),
    );
  }
}
