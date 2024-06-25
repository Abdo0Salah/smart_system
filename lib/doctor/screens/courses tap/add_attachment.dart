import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AddAttachment extends StatelessWidget {
  static const String routeName = 'AddAttachment';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Text(
                    'Add Attachment',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
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
                  'Title',
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
                    hintText: 'Enter the Title',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 5),
                child: Text(
                  'Description',
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xffFDFDFD),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffADA4A4),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 5),
                child: Text(
                  'Upload File',
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
                      hintText: 'Select  file',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 5),
                child: Text(
                  'Upload Video',
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
                      hintText: 'Select video',
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15 , top: 50, bottom: 15 , right: 15),
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
                   Navigator.of(context).pop(AddAttachment.routeName);
                  },
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.file_upload_outlined,
                      color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      const Text(
                        "Upload",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
