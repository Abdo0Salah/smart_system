import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/home_material_model.dart';

class HomeMaterialWidget extends StatelessWidget {
  HomeMaterialModel homeMaterialModel;
  HomeMaterialWidget(this.homeMaterialModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(homeMaterialModel.image , width: 200, )),
            const SizedBox(
              height: 30,
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
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
