import 'package:flutter/material.dart';

import 'doctorpost_screen.dart';


class AddNewPost extends StatelessWidget {
  static const String routeName = 'AddNewPost';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 60, bottom: 30),
                    child: Text(
                      'Add New Post',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20 , top: 5),
                  child: Text(
                    'Post Text',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 10, bottom: 15 , right: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 15.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        filled: true,
                        fillColor: Color(0xffFDFDFD),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffADA4A4),
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        hintText: 'Enter Post Text',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20 , top: 5),
                  child: Text(
                    'Attachment File',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 10, bottom: 15 , right: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        filled: true,
                        fillColor: Color(0xffFDFDFD),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffADA4A4),
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        prefixIcon: Image.asset('assets/images/doctor/select_file.png'),
                        hintText: 'Select  Post File',
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 240, bottom: 15 , right: 15),
                  child: TextButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xff82A0D2),
                        style: BorderStyle.solid,
                        width: 2.5,
                      ),
                      fixedSize: Size(450, 70),
                      backgroundColor: Color(0xff8EAFD9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: (){
                   Navigator.of(context).pop(DoctorPostScreen.routeName);
                    },
                    child: const Text(
                          "Add Post",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
