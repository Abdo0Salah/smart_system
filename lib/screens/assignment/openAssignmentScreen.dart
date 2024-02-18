import 'package:flutter/material.dart';

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
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
              borderRadius: BorderRadius.all(Radius.circular(8))

            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " Assignment sheet ex",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,
                    color: Colors.black),
              ),
            ),),
            SizedBox(height: 30,),
            Row(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  constraints: BoxConstraints(),
                  elevation: 2.0,
                  fillColor: Colors.blue,
                  child: Icon(
                    Icons.add,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
                SizedBox(width: 15,),
              Text(
                "add answer",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,
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
