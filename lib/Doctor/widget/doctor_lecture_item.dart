import 'package:flutter/material.dart';

class DoctorLectureItem extends StatelessWidget {
  const DoctorLectureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFAAC8E4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lecture 01",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21),
            ),
            Text(
              "Topic of the Lecture",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.file_copy_outlined, size: 15),
                Text(
                  "01 files",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.ondemand_video_sharp, size: 15),
                Text(
                  "01 video",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 30,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  icon: const Icon(Icons.edit,
                    size: 20,

                    color: Colors.black,),
                  onPressed: () {

                  },
                ),
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  icon: const Icon(Icons.delete,
                    size: 20,
                    color: Color(0xffD91C1C),),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}