import 'package:flutter/material.dart';

class LectureItem extends StatelessWidget {
  const LectureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFAAC8E4)
          
      ),
      child: Column(
        children: [
          Text("Lecture 01",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 21),),
          Text("Topic of the Lecture",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),),
Row(children: [
  Icon(Icons.file_copy_outlined),
  Text("01 files",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),),

],)
        ],
      ),
    );
  }
}
