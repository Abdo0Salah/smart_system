
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen2.dart';

class ProfileAdmin extends StatelessWidget {
  static const String routeName = 'ProfileAdmin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40 , left: 20),
                    child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff1B406D),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40 , left: 100),
                    child: Column(children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff292A2E)
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/admin/profile1.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("admin name",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2C3E50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6 , bottom: 40),
                    child: Text("20CS1H2103@kristujayanti.com",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2C3E50),
                      ),
                    ),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xff2C3E50),
                        style: BorderStyle.solid,
                        width: 2.5,
                      ),
                      fixedSize: Size(224, 60),
                      backgroundColor: Color(0xff2C3E50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushNamed(Profile2Admin.routeName);
                    },
                    child:
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                            Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffD5F4FF),
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  color: Color(0xffD5F4FF),
                                  size: 28,
                                  Icons.edit
                                ),
                              ),
                          ],),
                        ),
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xff2C3E50),
                        style: BorderStyle.solid,
                        width: 2.5,
                      ),
                      fixedSize: Size(224, 60),
                      backgroundColor: Color(0xff2C3E50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: (){},
                    child:
                        Text(
                          "Back To Home",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffD5F4FF),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
