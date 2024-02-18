import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});
  static const String routeName = 'post';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              Row(
                children: [
                  CircleAvatar( radius: 30,),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Dr Ehab"),
                    Text("1214554441@fci.zu"),
                    
                  ],),
                  Spacer(),
                  Icon(Icons.add),

                ],
              ),
              SizedBox(height: 30,),
              Container(width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" data data data  data datadatata data data  data datadatadata   data data datata data data  data datadatadata   data data datadata   data data data data data",
                  style: TextStyle(fontSize: 20)
                  ),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 10), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              SizedBox(height: 40,),

              Container(width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:     Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                      ),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("STUDENT"),
                          Text("تمام يا ضاكتور"),

                        ],),


                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 10), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
                  Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}
