import 'package:flutter/material.dart';

class CreateQuiz extends StatefulWidget {
  static const String routeName = 'CreateQuiz';

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  String? selectedValue = null;

  final _dropdownFormKey = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("CV"), value: "CV"),
      DropdownMenuItem(child: Text("Select topic"), value: "Select topic"),
      DropdownMenuItem(child: Text("Robotics"), value: "Robotics"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    'Create Quiz',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Form(
                key: _dropdownFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 380,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                            hint: Text("Select Course name"),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) =>
                                value == null ? "Select Course name" : null,
                            dropdownColor: Colors.white,
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: dropdownItems),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Questions',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , bottom: 40 , left: 20 , right: 20),
                      child: TextFormField(
                        style: TextStyle(color: Color(0xff746868)),
                        decoration: const InputDecoration(
                          hintTextDirection: TextDirection.ltr,
                          hintText: '1. Create new question',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30 , top: 20),
                      child: TextButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xff4084C3),
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          fixedSize: Size(125, 50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                         // Navigator.of(context).pushNamed(LoginScreenDoctor.routeName);
                        },
                        child: const Text(
                          "Add Option",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
