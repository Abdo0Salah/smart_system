import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/admin_home_model.dart';



class AdminHomeWidget extends StatelessWidget {
  AdminHomeModel adminHomeModel;
  AdminHomeWidget(this.adminHomeModel, {super.key});

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
            child: Image.asset(adminHomeModel.image),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Text(
              adminHomeModel.title,
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
