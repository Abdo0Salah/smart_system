import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LectureTap extends StatefulWidget {
  const LectureTap({super.key});

  @override
  State<LectureTap> createState() => _LectureTapState();
}

class _LectureTapState extends State<LectureTap> {
  var _myColorOne = Colors.grey;

  var _myColorTwo = Colors.grey;

  var _myColorThree = Colors.grey;

  var _myColorFour = Colors.grey;

  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              "Share your experience in scaling.",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right:  25, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 35,
                  onPressed: () => setState(() {
                    _myColorOne = Colors.orange;
                    _myColorTwo = Colors.grey;
                    _myColorThree = Colors.grey;
                    _myColorFour = Colors.grey;
                    _myColorFive = Colors.grey;
                  }),
                  color: _myColorOne,
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 35,
                  onPressed: () => setState(() {
                    _myColorOne = Colors.orange;
                    _myColorTwo = Colors.orange;
                    _myColorThree = Colors.grey;
                    _myColorFour = Colors.grey;
                    _myColorFive = Colors.grey;
                  }),
                  color: _myColorTwo,
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 35,
                  onPressed: () => setState(() {
                    _myColorOne = Colors.orange;
                    _myColorTwo = Colors.orange;
                    _myColorThree = Colors.orange;
                    _myColorFour = Colors.grey;
                    _myColorFive = Colors.grey;
                  }),
                  color: _myColorThree,
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 35,
                  onPressed: () => setState(() {
                    _myColorOne = Colors.orange;
                    _myColorTwo = Colors.orange;
                    _myColorThree = Colors.orange;
                    _myColorFour = Colors.orange;
                    _myColorFive = Colors.grey;
                  }),
                  color: _myColorFour,
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 35,
                  onPressed: () => setState(() {
                    _myColorOne = Colors.orange;
                    _myColorTwo = Colors.orange;
                    _myColorThree = Colors.orange;
                    _myColorFour = Colors.orange;
                    _myColorFive = Colors.orange;
                  }),
                  color: _myColorFive,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
