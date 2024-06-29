import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_progress_bar/animated_progress_bar.dart';

import '../qr/Qr_read_screen.dart';

class AllTaps extends StatelessWidget {
  const AllTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(

                  /// set the [width] and [height] of the displayable area
                    height: 150.h,
                    width: 170.w,
                    child: AnimatedProgressBar(
                      /// set [stroke]
                      stroke: 20,

                      /// set the [foreground color] of the progress bar
                      color: Color.fromRGBO(229, 198, 70, 1),

                      /// The progress bar style can be [stroke] or [fill]
                      style: PaintingStyle.fill,

                      /// Percentage progress is a number between [0] and [1], for example, to display [50] percent of the graph, this number must be [0.5].
                      percentage: 0.50,
                    )),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25.h,
                          width: 25.w,
                          color: Color.fromRGBO(229, 198, 70, 1),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          "absent",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 25.h, width: 25.w, color: Colors.grey),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          "present",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
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
                        padding: const EdgeInsets.all(4.0).w,
                        child: Row(
                          children: [
                            Icon(
                              Icons.square,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "ID",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Date",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Status",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0).w,
                        child: Row(
                          children: [
                            Icon(
                              Icons.done_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "201255554554",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "20/10/2024",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Present",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0).w,
                        child: Row(
                          children: [
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "201255554554",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "30/10/2024",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Absent",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, QrReadScreen.routeName);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(105, 121, 248, 1))),
                child: Text(
                  "Scane QR",
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );

  }
}
