import 'package:flutter/material.dart';
class MyTheme {
  //static Color primary = const Color(0xFFB7935F);
  static Color blackColor =const Color(0xFF000000);
  //static Color whiteColor =const Color(0xFFFFFFFF);
//                                      0xFFAAC8E4
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor:const Color(0xFFCCDBD9),
      appBarTheme:  AppBarTheme(
        //  iconTheme: IconThemeData(color: blackColor),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w400)),
      // textTheme: TextTheme(
      //   bodyLarge: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 30,
      //   ),
      //   bodyMedium: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w600,
      //     fontSize: 25,
      //   ),
      //   bodySmall: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 20,
      //   ),
      // ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     backgroundColor: primary,
      //     type: BottomNavigationBarType.shifting,
      //     unselectedItemColor: whiteColor,
      //     selectedItemColor: blackColor,
      //     selectedLabelStyle: TextStyle(color: blackColor),
      //     selectedIconTheme: IconThemeData(color: blackColor))
  );
  static ThemeData darkTheme= ThemeData(
      // appBarTheme:  AppBarTheme(
      //     iconTheme: IconThemeData(color: blackColor),
      //     backgroundColor: Colors.transparent,
      //     centerTitle: true,
      //     elevation: 0.0),
      // textTheme: TextTheme(
      //   bodyLarge: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 30,
      //   ),
      //   bodyMedium: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w600,
      //     fontSize: 25,
      //   ),
      //   bodySmall: TextStyle(
      //     color: blackColor,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 20,
      //   ),
      // ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     backgroundColor: primary,
      //     type: BottomNavigationBarType.shifting,
      //     unselectedItemColor: whiteColor,
      //     selectedItemColor: blackColor,
      //     selectedLabelStyle: TextStyle(color: blackColor),
      //     selectedIconTheme: IconThemeData(color: blackColor)),

  );

}
