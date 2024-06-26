import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/material_model.dart';

class MaterialItem extends StatelessWidget {
  MaterialMoel materialMoel;
  @override
  Widget build(BuildContext context) {
    return Container(
     

      padding: EdgeInsets.all(18).w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20).r
          )),
      child: Column(
        children: [
          Expanded(child: Image.asset(materialMoel.image,
          width: 70.w,height: 70.h,)),
          Text(materialMoel.name,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ],
      ),
    );
  }

  MaterialItem(this.materialMoel);
}
