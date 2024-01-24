import 'package:flutter/material.dart';
import 'package:smart_system/screens/ui_splashes/splash1/splash1_screen.dart';


class splash0 extends StatelessWidget{
  static const String routeName = 'splash0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4084C3),
      body: Center(
        child: Column(
          children:[
            Spacer(),
            Image.asset('assets/images/splash0/school-management.png',
              width: 300,
              height: 256,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text(
                     "FCI",
                     style: TextStyle(
                       fontSize:40,
                       fontWeight: FontWeight.w700,
                       color: Colors.white,
                     )
                 ),
                 Text(
                     " GUIDER",
                     style: TextStyle(
                       fontSize:30,
                       fontWeight: FontWeight.w700,
                       color: Color(0xffE1E423)
                     ),
                 ),
               ],
           ),
            ),
            SizedBox(
              width: 80,
              height: 80,
            ),
            TextButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff2C4A7A),
                  style: BorderStyle.solid,
                    width: 3,
                  ),
                fixedSize: Size(250, 60),
                backgroundColor: Color(0xffF5F5F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(splash1.routeName);
              },
                child:
                const Text(
                  "Let ‘s Start",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}