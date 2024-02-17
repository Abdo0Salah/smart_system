import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';





class SignUpScreen extends StatefulWidget {
  static const String routeName = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: Column(
        children: [
          Image.asset('assets/images/Login/login_logo.png'),
          Padding(
            padding: const EdgeInsets.only(bottom: 8,right: 15,left: 15),
            child: Container(
              width: 390,
              height: 400,
              decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , top: 20 , right: 20 , bottom: 10),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(LoginScreen.routeName);
                          },
                          child: Text('Login',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight:FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , top: 20 , right: 20 , bottom: 10),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(SignUpScreen.routeName);
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight:FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Color(0xff1B406D),
                    indent: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8 , right: 15 , left: 15 , bottom: 8),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Student name',
                        prefixIcon: const Icon(Icons.person_rounded, color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8 , right: 15 , left: 15 , bottom: 8),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Email',
                        prefixIcon: const Icon(Icons.mail, color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8 , right: 15 , left: 15 , bottom: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'password',
                        prefixIcon: const Icon(Icons.key, color: Color(0xff1B406D)),
                        suffixIcon: const Icon(Icons.remove_red_eye, color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8 , right: 15 , left: 15 , bottom: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Confirm Password',
                        prefixIcon: const Icon(Icons.key, color: Color(0xff1B406D)),
                        suffixIcon: const Icon(Icons.remove_red_eye, color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8 , right: 15 , left: 15 , bottom: 8),
            child: TextButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xff7aa1c9),
                  style: BorderStyle.solid,
                  width: 2,
                ),
                fixedSize: Size(390, 70),
                backgroundColor: Color(0xff8bb8e3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: (){
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);

              },
              child:
              const Text(
                "Sign Up",
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
    );
  }
}
