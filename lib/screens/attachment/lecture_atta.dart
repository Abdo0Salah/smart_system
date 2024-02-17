import 'package:flutter/material.dart';

import '../../widget/lecture_item.dart';



class LectureAttavhment extends StatelessWidget {
  const LectureAttavhment({super.key});
static const String routeName ='LectureAttavhment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              children:<Widget>[
                LectureItem(),
                LectureItem(),
     
   
              ],


            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 30,
              bottom: 30

            ),
            child: TextButton(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)
                ),
                child: Row(
mainAxisAlignment: MainAxisAlignment.center,                  children: [
                    Text("Download All",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),),
                    Icon(Icons.download,color: Colors.white,)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
