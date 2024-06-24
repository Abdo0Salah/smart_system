import 'package:flutter/material.dart';
import 'package:smart_system/doctor/model/DoctotMaterialModel.dart';



class DoctorMaterialItem extends StatelessWidget {
  DoctorMaterialMoel doctormaterialModel;
  @override
  Widget build(BuildContext context) {
    return Container(
     

      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          )),
      child: Column(
        children: [
          Expanded(child: Image.asset(doctormaterialModel.image,
          width: 70,height: 70,)),
          Text(doctormaterialModel.name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ],
      ),
    );
  }

  DoctorMaterialItem(this.doctormaterialModel);
}
