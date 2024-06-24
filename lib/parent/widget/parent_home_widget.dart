import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/parent_home_model.dart';


class ParentHomeWidget extends StatelessWidget {
  ParentHomeModel parentHomeModel;
  ParentHomeWidget(this.parentHomeModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Image.asset(parentHomeModel.image),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Text(
              parentHomeModel.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.gabriela(
                  fontSize: 15.sp, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
