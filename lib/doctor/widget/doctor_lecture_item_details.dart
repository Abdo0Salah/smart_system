import 'package:flutter/material.dart';

class DoctorLectureItemDetails extends StatelessWidget {
  const DoctorLectureItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFAAC8E4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
       mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
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