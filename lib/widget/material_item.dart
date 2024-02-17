import 'package:flutter/material.dart';

import '../models/material_model.dart';

class MaterialItem extends StatelessWidget {
  MaterialMoel materialMoel;
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
          Expanded(child: Image.asset(materialMoel.image,
          width: 70,height: 70,)),
          Text(materialMoel.name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ],
      ),
    );
  }

  MaterialItem(this.materialMoel);
}
