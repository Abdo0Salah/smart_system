import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../attachment/lecture_atta.dart';
import 'add_answer_screen.dart';

class OpenAssignmentScreen extends StatelessWidget {
  const OpenAssignmentScreen({super.key});
  static const String routeName = 'OpenAssignmentScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF3F7FF),
      appBar: AppBar(
        backgroundColor:Color(0xffEFF3F7FF) ,
        elevation: 0,
        title: Text('Assignment  ',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            Container(decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8).r)

            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Text(
                " Assignment sheet ex",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp,
                    color: Colors.black),
              ),
            ),),
            SizedBox(height: 30.h,),
            Row(
              children: [
                RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddAnswerScreen.routeName);
                  },
                  constraints: BoxConstraints(),
                  elevation: 2.0,
                  fillColor: Colors.blue,
                  child: InkWell(
                    onTap: (){ Navigator.popAndPushNamed(context, AddAnswerScreen.routeName);},

                    child: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(15.0).w,
                  shape: CircleBorder(),
                ),
                SizedBox(width: 15.w,),
              Text(
                "add answer",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
