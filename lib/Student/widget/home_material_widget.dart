import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/home_material_model.dart';
import '../screens/home/materials-tap/subject_group.dart';

class HomeMaterialWidget extends StatelessWidget {
  HomeMaterialModel homeMaterialModel;
  HomeMaterialWidget(this.homeMaterialModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5).w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(homeMaterialModel.image , width: 200, )),
             SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: Text(
                homeMaterialModel.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.fjordOne(
                    fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: const Color(0xff8EAFD9),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              child: Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SubjectGroups.routeName);
                      },
                      child: Text(
                        'Details',
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.sp,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
