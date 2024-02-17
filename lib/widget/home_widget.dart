import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../models/home_model.dart';

class HomeWidget extends StatelessWidget {
  HomeModel homeModel;
  HomeWidget(this.homeModel, {super.key});

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
            child: Image.asset(homeModel.image),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Text(
              homeModel.title,
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
