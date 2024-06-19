import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/adminHome_courses_model.dart';
import '../screens/admin_home/edit_course.dart';

class AdminHomeCoursesWidget extends StatelessWidget {
  AdminHomeCoursesModel adminHomeCoursesModel;
  AdminHomeCoursesWidget(this.adminHomeCoursesModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  adminHomeCoursesModel.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                adminHomeCoursesModel.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.fjordOne(
                    fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.edit,
                  color: Color(0xff14CA1B),),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      EditCourseScreen.routeName,
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete,
                    color: Color(0xffD91C1C),),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
