import 'package:flutter/material.dart';


import '../../../widget/doctor_lecture_item.dart';
import '../add_attachment.dart';
import 'doctor_lecture_atta.dart';



class DoctorAttachmentScreen extends StatelessWidget {
  static const String routeName = 'DoctorAttachmentScreen';
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Network"),
          ),
          backgroundColor: const Color(0xffEFF3F7FF),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
            ),
            child:   Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Lectures",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 5,
                                width: 80,
                                color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 5,)

                        ],
                      ),
                    IconButton(
                        onPressed: (){

                          Navigator.pushNamed(
                            context,
                            AddAttachment.routeName,
                          );
                        },
                        color: Colors.black,
                        iconSize: 30,
                        style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFAAC8E4))
                    ),
                       // hoverColor:  Colors.black,
                        icon:   Icon(Icons.add))
                    ],
                  ),
                  Expanded(
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      children:<Widget>[
                        InkWell(
                          child: DoctorLectureItem(num: "01",),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              DoctorLectureAttavhment.routeName,
                            );
                          },),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                DoctorLectureAttavhment.routeName,
                              );
                            },
                            child: DoctorLectureItem(num: "02",)),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                DoctorLectureAttavhment.routeName,
                              );
                            },
                            child: DoctorLectureItem(num: "03",)),

                                
                      ],
                                
                                
                    ),
                  ),
                ],
              ),
            )
          )),
    );
  }
}
