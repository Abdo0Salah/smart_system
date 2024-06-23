import 'package:flutter/material.dart';

import '../../../widget/add_option_widget.dart';

class DoctorObtionsQuis extends StatefulWidget {
  const DoctorObtionsQuis({super.key});
  static const String routeName = 'DoctorObtionsQuis';

  @override
  State<DoctorObtionsQuis> createState() => _DoctorObtionsQuisState();
}

class _DoctorObtionsQuisState extends State<DoctorObtionsQuis> {
  @override
  int numberOfOptions=1;
  bool _isChecked = false;

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Quiz "),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Network",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
              ),
            ),
            Text(
              "Questions",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "what is tcp/ip ?",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.grey),
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Network",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "#Answer Text",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text(
                      "Correct",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return   AddOptionWidget();
                },
                itemCount: numberOfOptions,


              ),
            ),

            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton
                (onPressed: (){
                  setState(() {
                    numberOfOptions++;
                   });
                  },
                  child: Text("Add Option",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.blue
                  ),),
              style: ButtonStyle(

                backgroundColor: WidgetStatePropertyAll(Colors.white)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Enter the Degree of the Question:",
                     style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                   ),
                   TextFormField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Colors.white,
                       enabled: true,
                       enabledBorder: OutlineInputBorder(

                       ),

                     ),
                   ),
                 ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Spacer(),
                  TextButton(onPressed: (){},
                    child: Text("Add New Question",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,

                      ),),
                    style: ButtonStyle(

                        backgroundColor: WidgetStatePropertyAll(Colors.black)
                    ),),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: TextButton(onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Create Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,

                        ),),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
