import 'package:flutter/material.dart';
import 'package:smart_system/admin/screens/admin_home/Students%20Tap/message_list.dart';

import 'Student_list-result.dart';

class WriteMessage extends StatefulWidget {
  const WriteMessage({super.key});
  static const String routeName = 'WriteMessage';

  @override
  State<WriteMessage> createState() => _WriteMessageState();
}

class _WriteMessageState extends State<WriteMessage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
    ),
    backgroundColor: Color(0xffEFF3F7FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 56,
                          backgroundColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(8), // Border radius
                            child: ClipOval(child: Image.asset("assets/images/sendmessage.png")),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Write the Message Below :",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 40,),
                        Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                            decoration: InputDecoration(
                              enabled:true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                hintText: "Title")),
                        SizedBox(height: 20,),
                        TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
                                enabled:true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                hintText: "Message")),
                        SizedBox(height: 20,),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "  Attach File",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                      fontSize: 17, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                           color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black,
                          width: 1)
                        ),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Spacer(),
                            TextButton(onPressed: (){
                              Navigator.pop(
                                context,
                                StudentListResult.routeName,
                              );

                            },
                                style: const ButtonStyle(

                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.white
                                    )
                                ),
                                child: const Text("  Cancel   ",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue
                                  ),)),
                            const SizedBox(width: 15,),

                            TextButton(onPressed: (){
                              Navigator.of(context).pushNamed(MessageList.routeName);
                            },
                                style: const ButtonStyle(

                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.blue
                                    )
                                ),
                                child: const Text("  Send   ",
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
                ),
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
     );
  }
}
