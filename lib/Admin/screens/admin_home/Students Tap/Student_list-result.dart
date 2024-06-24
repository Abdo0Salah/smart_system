import 'package:flutter/material.dart';

import 'Write-message.dart';

class StudentListResult extends StatelessWidget {
  const StudentListResult({super.key});
  static const String routeName = 'StudentListResult';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, WriteMessage.routeName);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Send To",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 5,
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
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Student ID",
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Parent ID",
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Cources",
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Rate",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "201442140",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2065484511",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-sellect"),
                                    Text("3-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("75%"),
                                    Text("60%"),
                                    Text("44%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "20494261540",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2064473421",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-Image processing"),
                                    Text("3-Android"),
                                    Text("4-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("70%"),
                                    Text("47%"),
                                    Text("56%"),
                                    Text("58%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2092585525",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2084315214",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-IOt"),
                                    Text("2-Animation"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("74%"),
                                    Text("49%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2439547522",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "2301425945",
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1-robotic"),
                                    Text("2-sellect"),
                                    Text("3-cloud"),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("30%"),
                                    Text("64%"),
                                    Text("70%"),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
