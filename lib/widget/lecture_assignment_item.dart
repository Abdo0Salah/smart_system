import 'package:flutter/material.dart';

import '../screens/assignment/openAssignmentScreen.dart';

class LectureAssignmentItem extends StatelessWidget {
   LectureAssignmentItem(this.ifSubmitted);
 bool ifSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(

        children: [
        Text(
        "Assignment name",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        Spacer(),
        Icon(Icons.file_copy_outlined, size: 15),

          ],
      ),
            SizedBox(
              height: 15,
            ),
            Row(

              children: [
                Text(
                  "assign date",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,
                  color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "17 nov 2024",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(

              children: [
                Text(
                  "last date",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,
                      color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "20 nov 2024",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Row(

              children: [
                Text(
                  " status",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,
                      color: Colors.grey),
                ),
                Spacer(),
             Container(decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 2,
                     blurRadius: 10,
                       offset: Offset(2, 4) // changes position of shadow
                   ),
                 ],
               borderRadius: BorderRadius.all(Radius.circular(12)),
               color: Color.fromARGB(255, 251, 177, 177)

             ),

               child:   Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Text(
                 ifSubmitted ?  " Submitted" :  " not Submitted",
                   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,
                      ),
                 ),
               ),
             ),

              ],
            ),
            SizedBox(
              height: 25,
            ),
            Visibility(
              visible:   ifSubmitted ?  false :  true,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      OpenAssignmentScreen.routeName,
                    );
                },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll( Color.fromARGB(
                          255, 170, 200, 228)),

                  ),
                  child:  Text(
                  "Open Assignment ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,color: Colors.black),
                ),),
              ),
            )


    ]),
      ),
    );
  }
}
