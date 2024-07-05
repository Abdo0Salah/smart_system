// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../../../cubit/user_cubit.dart';
// import '../../../../cubit/user_state.dart';
// import '../../../apiModels/getByLevelAndTerm.dart';
// import '../../../cache/cache_helper.dart';
// import '../../../core/api/end_ponits.dart';
// import 'materials-tap/subject_group.dart';
//
// class Testooo extends StatefulWidget {
//   static const String routeName = 'Testooo';
//
//   @override
//   _TestoooState createState() => _TestoooState();
// }
//
// class _TestoooState extends State<Testooo> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<UserCubit>().GetCoursesbyLevelAndTerm();
//   }
//
//   String? selectedValue = null;
//   String? selectedValue2 = null;
//   GlobalKey<FormState> quitionFormKey = GlobalKey();
//   final _dropdownFormKey = GlobalKey<FormState>();
//   List<DropdownMenuItem<String>> get dropdownTerm {
//     List<DropdownMenuItem<String>> menuItemsTerm = [
//       DropdownMenuItem(child: Text("1"), value: "1"),
//       DropdownMenuItem(child: Text("2"), value: "2"),
//     ];
//     return menuItemsTerm;
//   }
//
//   List<DropdownMenuItem<String>> get dropdownLevel {
//     List<DropdownMenuItem<String>> menuItemsLevel = [
//       DropdownMenuItem(child: Text("1"), value: "1"),
//       DropdownMenuItem(child: Text("2"), value: "2"),
//       DropdownMenuItem(child: Text("3"), value: "3"),
//       DropdownMenuItem(child: Text("4"), value: "4"),
//     ];
//     return menuItemsLevel;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SafeArea(
//         child: BlocConsumer<UserCubit, UserState>(
//           listener: (context, state) {
//             if (state is GetCoursesbyLevelAndTermFailure) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text(state.errMessage),
//                 ),
//               );
//             }
//           },
//           builder: (context, state) {
//             return Scaffold(
//               body: Column(
//                 children: [
//                   Form(
//                     key: _dropdownFormKey,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           flex: 3,
//                           child: Container(
//                             height: 80,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: DropdownButtonFormField(
//                                   hint: Text("Term"),
//                                   decoration: InputDecoration(
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     disabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                   // validator: (value) =>
//                                   //     value == null ? "Select Course name" : null,
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return "Select Term";
//                                     }
//                                     return null;
//                                   },
//                                   dropdownColor: Colors.white,
//                                   value: selectedValue,
//                                   onChanged: (String? newValue) {
//                                     setState(() {
//                                       selectedValue = newValue!;
//                                       CacheHelper().saveData(
//                                           key: ApiKey.selectedTerm,
//                                           value: selectedValue);
//                                       print(CacheHelper()
//                                           .getData(key: ApiKey.selectedTerm));
//                                     });
//                                   },
//                                   items: dropdownTerm),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: Container(
//                             height: 80,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: DropdownButtonFormField(
//                                   hint: Text("Level "),
//                                   decoration: InputDecoration(
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     disabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                           color: Colors.white, width: 1),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                   // validator: (value) =>
//                                   //     value == null ? "Select Course name" : null,
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return "Select Level";
//                                     }
//                                     return null;
//                                   },
//                                   dropdownColor: Colors.white,
//                                   value: selectedValue2,
//                                   onChanged: (String? newValue) {
//                                     setState(() {
//                                       selectedValue2 = newValue!;
//                                       CacheHelper().saveData(
//                                           key: ApiKey.selectedLevel,
//                                           value: selectedValue2);
//                                       print(CacheHelper()
//                                           .getData(key: ApiKey.selectedLevel));
//                                     });
//                                   },
//                                   items: dropdownLevel),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 2,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: const Color(0xff8EAFD9),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 TextButton(
//                                   onPressed: () {
//                                     if (_dropdownFormKey.currentState!
//                                         .validate()) {
//                                       // Navigator.of(context).pushNamed(
//                                       //   DoctorObtionsQuis.routeName,
//                                       // );
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(SnackBar(
//                                               content:
//                                                   Text('Question added!')));
//                                     }
//                                   },
//                                   child: Text(
//                                     'Done',
//                                     style: GoogleFonts.aBeeZee(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 14.sp,
//                                         fontStyle: FontStyle.italic,
//                                         color: Colors.black),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   state is GetCoursesbyLevelAndTermSuccess
//                       ? _buildSubjectList(state.courseR)
//                       : state is GetCoursesbyLevelAndTermLoading
//                           ? Center(child: CircularProgressIndicator())
//                           : Container()
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSubjectList(List<GetCoursesbyLevelAndTermModel> courses) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // Adjust the number of columns here
//                 childAspectRatio:
//                     0.75, // Adjust the aspect ratio to fit your design
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: courses.length,
//               itemBuilder: (context, index) {
//                 final subject = courses[index];
//                 return _buildSubjectItem(subject, index + 1);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSubjectItem(GetCoursesbyLevelAndTermModel subject, int index) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             "assets/images/Selected Topic.png",
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   subject.name ?? '-',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.fjordOne(
//                       fontSize: 12.sp, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               color: const Color(0xff8EAFD9),
//               borderRadius: BorderRadius.circular(5),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pushNamed(SubjectGroups.routeName);
//                   },
//                   child: Text(
//                     'Details',
//                     style: GoogleFonts.aBeeZee(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 12.sp,
//                         fontStyle: FontStyle.italic,
//                         color: Colors.black),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                   child: VerticalDivider(
//                     color: Colors.black,
//                     thickness: 1,
//                   ),
//                 ),
//                 const Icon(
//                   Icons.arrow_forward_ios,
//                   size: 12,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/Student/screens/home/materials-tap/subject_group.dart';
import 'package:smart_system/Student/screens/home/notification/notification_screen.dart';
import '../../../../apiModels/getByLevelAndTerm.dart';
import '../../../../cache/cache_helper.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../cubit/user_cubit.dart';
import '../../../../cubit/user_state.dart';
import '../TESTO.dart';

class MaterialsScreen extends StatefulWidget {
  static const String routeName = 'MaterialsScreen';
  final String genderValue = CacheHelper().getData(key: ApiKey.userGenderSaved);

  @override
  _MaterialsScreenState createState() => _MaterialsScreenState();
}

class _MaterialsScreenState extends State<MaterialsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetCoursesbyLevelAndTerm();
  }

  String? selectedValue = null;
  String? selectedValue2 = null;
  GlobalKey<FormState> quitionFormKey = GlobalKey();
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownTerm {
    List<DropdownMenuItem<String>> menuItemsTerm = [
      DropdownMenuItem(child: Text("1"), value: "1"),
      DropdownMenuItem(child: Text("2"), value: "2"),
    ];
    return menuItemsTerm;
  }

  List<DropdownMenuItem<String>> get dropdownLevel {
    List<DropdownMenuItem<String>> menuItemsLevel = [
      DropdownMenuItem(child: Text("1"), value: "1"),
      DropdownMenuItem(child: Text("2"), value: "2"),
      DropdownMenuItem(child: Text("3"), value: "3"),
      DropdownMenuItem(child: Text("4"), value: "4"),
    ];
    return menuItemsLevel;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetCoursesbyLevelAndTermLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetCoursesbyLevelAndTermSuccess) {
              return _buildSubjectList(state.courseR);
            } else if (state is GetCoursesbyLevelAndTermFailure) {
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            } else {
              return Center(child: Text('Unknown state'));
            }
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetCoursesbyLevelAndTermModel> courses) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 15.w),
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: const Color(0xffC4C4C4),
                  child: ClipOval(
                    child: Image.asset(
                      widget.genderValue == "male"
                          ? "assets/images/avatar1.png"
                          : "assets/images/avatar3.png",
                      fit: BoxFit.fitWidth,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${CacheHelper().getData(key: ApiKey.userNameSaved)}",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold, fontSize: 15.sp),
                      ),
                      Text(
                        "${CacheHelper().getData(key: ApiKey.userEmailSaved)}",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 8.sp),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    NotificationScreen.routeName,
                  );
                },
                child: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          ),
          Form(
            key: _dropdownFormKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10).w,
                          child: Text(
                            "Level",
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10).w,
                          child: Text(
                            "Term",
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        )),
                    Expanded(flex: 2, child: Spacer())
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                              hint: Text("${CacheHelper().getData(key: ApiKey.selectedLevel) ??CacheHelper().getData(key: ApiKey.userLevelSaved)}"
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              // validator: (value) =>
                              //     value == null ? "Select Course name" : null,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Select Level";
                                }
                                return null;
                              },
                              dropdownColor: Colors.white,
                              value: selectedValue2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue2 = newValue!;
                                  CacheHelper().saveData(
                                      key: ApiKey.selectedLevel,
                                      value: selectedValue2);
                                  print(CacheHelper()
                                          .getData(key: ApiKey.selectedLevel) ??
                                      "Level");
                                });
                              },
                              items: dropdownLevel),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                              hint: Text("${CacheHelper().getData(key: ApiKey.selectedTerm) ?? CacheHelper().getData(key: ApiKey.userTermSaved)}"),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              // validator: (value) =>
                              //     value == null ? "Select Course name" : null,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Select Term";
                                }
                                return null;
                              },
                              dropdownColor: Colors.white,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                  CacheHelper().saveData(
                                      key: ApiKey.selectedTerm,
                                      value: selectedValue);
                                  print(CacheHelper()
                                      .getData(key: ApiKey.selectedTerm));
                                });
                              },
                              items: dropdownTerm),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff8EAFD9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {
                                if (_dropdownFormKey.currentState!.validate()) {
                                  // Navigator.of(context).pushNamed(
                                  //   DoctorObtionsQuis.routeName,
                                  // );

                                  context
                                      .read<UserCubit>()
                                      .GetCoursesbyLevelAndTerm();
                                }
                              },
                              child: Text(
                                'Done',
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 30.h, bottom: 10.h),
            child: Text(
              'Subjects of the Year',
              style: GoogleFonts.fjordOne(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, bottom: 20.h),
            child: Container(
              height: 5.h,
              width: 235.w,
              color: const Color(0xff2C4A7A),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Adjust the number of columns here
                childAspectRatio:
                    0.75, // Adjust the aspect ratio to fit your design
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final subject = courses[index];
                return _buildSubjectItem(subject, index + 1);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubjectItem(GetCoursesbyLevelAndTermModel subject, int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/Selected Topic.png",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  subject.name ?? '-',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fjordOne(
                      fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff8EAFD9),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                     CacheHelper().saveData(key: ApiKey.courseIdSaved, value:  subject.courseId);
                    Navigator.of(context).pushNamed(Testooo.routeName);

                  },
                  child: Text(
                    'Details',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
