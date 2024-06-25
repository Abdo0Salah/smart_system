import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});
  static const String routeName = 'post';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20).w,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr Ehab"),
                          Text("1214554441@fci.zu"),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0).w,
                      child: Text(
                          " there is no lecture in this  week good Good luck for all dear student.",
                          style: TextStyle(fontSize: 20.sp)),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 10), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).r)),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0).w,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("STUDENT"),
                              Text("تمام يا دكتور"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 10), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).r)),
                  ),
                ],
              ),
            ),
            Spacer(),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter task name';
                } else
                  return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    CircleAvatar(),
                    SizedBox(
                      width: 5.w,
                    )
                  ],
                ),
                suffixIcon:Icon(Icons.send,color: Colors.black) ,
                enabled: true,
                label: Text("Add Comment",style: TextStyle(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10).r,
                        topLeft: Radius.circular(10).r),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.only(
                        topRight: Radius.circular(10).r,
                        topLeft: Radius.circular(10).r),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
