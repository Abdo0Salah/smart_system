import 'package:flutter/material.dart';
import 'package:smart_system/models/group_model.dart';
import 'package:smart_system/widget/groub_item.dart';
class SubjectGroups extends StatelessWidget {
  static const String routeName = 'SubjectGroups';
  const SubjectGroups({super.key});
  @override
  Widget build(BuildContext context) {
GroupModel c =GroupModel(groupName: "groupName", doctorName: "doctorName", subjectName: "subjectName");
    return Scaffold(
      backgroundColor:Color(0xffEFF3F7FF)
      ,
      appBar: AppBar(
        backgroundColor:Colors.transparent ,
        elevation: 0,
        title: Text('Selected topic',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black
        )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 110,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("All Groups"),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder:  (context, index) =>
                          GroubItem(groubModel: c
                      ),
                      itemCount: 9,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
