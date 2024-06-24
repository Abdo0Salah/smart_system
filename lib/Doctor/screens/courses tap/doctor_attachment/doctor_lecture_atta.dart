import 'package:flutter/material.dart';



class DoctorLectureAttavhment extends StatelessWidget {
  const DoctorLectureAttavhment({super.key});
  static const String routeName = 'DoctorLectureAttavhment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFAAC8E4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/images/doctor/pdf.png'),                        ),
                        Text(
                          "Lecture 01.pdf",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 21),
                        ),
                        Text(
                          "Topic of the Lecture",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              icon: const Icon(
                                Icons.delete,
                                size: 20,
                                color: Color(0xffD91C1C),
                              ),
                              onPressed: () {
                                // Handle delete action
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFAAC8E4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/images/doctor/video.png'),                        ),
                        Text(
                          "Lecture 01.pdf",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 21),
                        ),
                        Text(
                          "Topic of the Lecture",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              icon: const Icon(
                                Icons.delete,
                                size: 20,
                                color: Color(0xffD91C1C),
                              ),
                              onPressed: () {
                                // Handle delete action
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ///
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Download All",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.download,
                      color: Colors.white,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
