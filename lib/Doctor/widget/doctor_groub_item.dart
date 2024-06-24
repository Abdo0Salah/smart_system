import 'package:flutter/material.dart';

import '../model/doctor_group_model.dart';


class DoctorGroubItem extends StatelessWidget {
  DoctorGroupModel doctorgroubModel;
  DoctorGroubItem({required this.doctorgroubModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://news.mit.edu/sites/default/files/styles/news_article__image_gallery/public/images/201706/MIT-Predicting-Reactions-1_0.jpg?itok=q5Dlcw3w",
              fit: BoxFit.cover,
              height: 90,
              width: 90,),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Text(doctorgroubModel.groupName,style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.edit,
                            size: 15,
                            color: Color(0xff14CA1B),),
                          onPressed: () {

                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete,
                            size: 15,
                            color: Color(0xffD91C1C),),
                          onPressed: () {
                            // Handle delete action
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person,
                      color: Colors.blue),
                      Text(doctorgroubModel.doctorName,style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.message,
                          color: Colors.blue,
                      size: 20,),
                      Text(doctorgroubModel.subjectName,style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
