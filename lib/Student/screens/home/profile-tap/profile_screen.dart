// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smart_system/Student/screens/home/profile-tap/profile_screen2.dart';
//
// import '../../../../cubit/user_cubit.dart';
// import '../home.dart';
//
//
// class Profile extends StatelessWidget {
//   static const String routeName = 'profile';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Edit Profile",
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 22.sp,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//         iconTheme: const IconThemeData(color: Colors.black),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       backgroundColor: Color(0xffF0F3F7),
//       body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//
//             Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Center(
//                 child: Column(
//                   children: [
//                     Image.asset('assets/images/profile/Vector.png'),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("Student name",
//                         style: TextStyle(
//                           fontSize: 36,
//                           fontWeight: FontWeight.w700,
//                           color: Color(0xff2C3E50),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 6 , bottom: 40),
//                       child: Text("20CS1H2103@kristujayanti.com",
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xff2C3E50),
//                         ),
//                       ),
//                     ),
//                     TextButton(
//                       style: OutlinedButton.styleFrom(
//                         side: const BorderSide(color: Color(0xff2C3E50),
//                           style: BorderStyle.solid,
//                           width: 2.5,
//                         ),
//                         fixedSize: Size(224, 60),
//                         backgroundColor: Color(0xff2C3E50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       onPressed: (){
//                         context.read<UserCubit>().getUserProfile();
//                         Navigator.of(context).pushNamed(Profile2.routeName);
//                       },
//                       child:
//                           Padding(
//                             padding: const EdgeInsets.only(left: 30),
//                             child: Row(
//                               children: [
//                               Text(
//                                 "Edit Profile",
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xffD5F4FF),
//                                 ),
//                               ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 20),
//                                   child: Icon(
//                                     color: Color(0xffD5F4FF),
//                                     size: 28,
//                                     Icons.edit
//                                   ),
//                                 ),
//                             ],),
//                           ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                       height: 20,
//                     ),
//                     TextButton(
//                       style: OutlinedButton.styleFrom(
//                         side: const BorderSide(color: Color(0xff2C3E50),
//                           style: BorderStyle.solid,
//                           width: 2.5,
//                         ),
//                         fixedSize: Size(224, 60),
//                         backgroundColor: Color(0xff2C3E50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       onPressed: (){
//                         Navigator.of(context).pushNamed(HomeScreen.routeName);
//                       },
//                       child:
//                           Text(
//                             "Back To Home",
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xffD5F4FF),
//                             ),
//                           ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ]),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/Student/screens/home/profile-tap/profile_screen2.dart';
import 'package:smart_system/cubit/user_cubit.dart';
import 'package:smart_system/cubit/user_state.dart';

import '../home.dart';

class Profile extends StatelessWidget {
  static const String routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(listener: (context, state) {
      if (state is GetUserFailure) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.errMessage)));
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            " Profile",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22.sp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        body: state is GetUserLoading
            ? const CircularProgressIndicator()
            : state is GetUserSuccess
            ? SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset('assets/images/profile/Vector.png'),
                            Padding(
                              padding:  EdgeInsets.all(8.w),
                              child: Text("${state.user.name}",
                                style: TextStyle(
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff2C3E50),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 6.h , bottom: 40.h),
                              child: Text("${state.user.email}",
                                style:  TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff2C3E50),
                                ),
                              ),
                            ),
                            TextButton(
                              style: OutlinedButton.styleFrom(
                                side:  BorderSide(color: Color(0xff2C3E50),
                                  style: BorderStyle.solid,
                                  width: 2.5.w,
                                ),
                                fixedSize: Size(224.w, 60.h),
                                backgroundColor: const Color(0xff2C3E50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                              ),
                              onPressed: (){
                                context.read<UserCubit>().getUserProfile();
                                context.read<UserCubit>().updateUserProfile();
                                Navigator.of(context).pushNamed(Profile2.routeName);
                              },
                              child:
                                  Padding(
                                    padding:  EdgeInsets.only(left: 30.w),
                                    child: Row(
                                      children: [
                                      Expanded(flex:2,
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffD5F4FF),
                                          ),
                                        ),
                                      ),
                                        Expanded(flex:1,
                                          child: Padding(
                                            padding:  EdgeInsets.only(left: 20.w),
                                            child: Icon(
                                              color: const Color(0xffD5F4FF),
                                              size: 28.sp,
                                              Icons.edit
                                            ),
                                          ),
                                        ),
                                    ],),
                                  ),
                            ),
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                            ),
                            TextButton(
                              style: OutlinedButton.styleFrom(
                                side:  BorderSide(color: const Color(0xff2C3E50),
                                  style: BorderStyle.solid,
                                  width: 2.5.w,
                                ),
                                fixedSize: Size(224.w, 60.h),
                                backgroundColor: const Color(0xff2C3E50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                              ),
                              onPressed: (){
                                Navigator.of(context).pushNamed(HomeScreen.routeName);
                              },
                              child:
                                  Text(
                                    "Back To Home",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffD5F4FF),
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ]),
        )
            : Container(color: Colors.blue,),
      );
    });
  }
}
