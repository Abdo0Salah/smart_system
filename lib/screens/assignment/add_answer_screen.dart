import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAnswerScreen extends StatelessWidget {
  const AddAnswerScreen({super.key});
  static const String routeName = 'AddAnswerScreen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        padding:EdgeInsets.only(top: 150,bottom: 150),
        child: Container(height: 400,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration:  BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(4))

                  ),height: 5,width: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                children: [

                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                        " Add answer",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,
                            color: Colors.black),),
                        Spacer(),
                        Text(
                          " Assigned",
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18,
                              color: Colors.grey),),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(
                     border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))

                  ),
                    child:  Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.blue),
                          Text(
                            " Add attachment",
                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18,
                                color: Colors.blue),
                          ),
                          Spacer(),
                          Icon(Icons.upload,color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  TextButton(onPressed: (){},
                      style: ButtonStyle(

                          backgroundColor: MaterialStatePropertyAll(Colors.blue)
                      ),
                      child: Text("Submit Assignment",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),)),
                ],
        ),
              ],
            ),
          ),
          decoration: BoxDecoration(
         // border:Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))

        ),
        ),
      ),
    );
  }
}
