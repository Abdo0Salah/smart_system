import 'package:flutter/material.dart';

import '../models/group_model.dart';

class GroubItem extends StatelessWidget {
  GroupModel groubModel;
  GroubItem({required this.groubModel});

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
              height: 70,
              width: 70,),
            ),
            Column(
              children: [
                Text(groubModel.groupName,style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
                Row(
                  children: [
                    Icon(Icons.person,
                    color: Colors.blue),
                    Text(groubModel.doctorName,style: TextStyle(
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
                    Text(groubModel.subjectName,style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
