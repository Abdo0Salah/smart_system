// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smart_system/cubit/user_cubit.dart';
// import 'package:smart_system/cubit/user_state.dart';
//
// class UserProfileScreen extends StatefulWidget {
//   static const String routeName = 'UserProfileScreen';
//
//   @override
//   _UserProfileScreenState createState() => _UserProfileScreenState();
// }
//
// class _UserProfileScreenState extends State<UserProfileScreen> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<UserCubit>().getUserProfile();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('User Profile'),
//         ),
//         body: BlocBuilder<UserCubit, UserState>(
//           builder: (context, state) {
//             if (state is GetUserLoading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (state is GetUserSuccess) {
//               final user = state.user;
//               print('Rendering user data: $user');
//
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 50,
//                         child: Icon(Icons.person, size: 50),
//                       ),
//                       SizedBox(height: 20),
//                       _buildInfoRow('Name', state.user.name),
//                       _buildInfoRow('Email Id', user.email),
//                       _buildInfoRow('SSN', user.ssn),
//                       _buildInfoRow('Phone Number', user.phone),
//                       _buildInfoRow('Gender', user.gender),
//                       _buildInfoRow('Level', user.level.toString()),
//                       _buildInfoRow('Term', user.term.toString()),
//                     ],
//                   ),
//                 ),
//               );
//             } else if (state is GetUserFailure) {
//               return Center(
//                   child: Text('Failed to load profile: ${state.errMessage}'));
//             } else {
//               return Container();
//             }
//           },
//         ));
//   }
//
//   Widget _buildInfoRow(String label, dynamic value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             label,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(value),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/Student/screens/home/profile-tap/profile_screen.dart';
import 'package:smart_system/cubit/user_cubit.dart';
import 'package:smart_system/cubit/user_state.dart';
import 'package:smart_system/ui_splashes/splash0/splash0_screen.dart';
import '../../../../cache/cache_helper.dart';
import '../../../../core/api/end_ponits.dart';
import '../home.dart';
import 'done.dart';

class Profile2 extends StatefulWidget {
  static const String routeName = 'profile2';

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UpdateUserFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
        else if (state is UpdateUserSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Profile updated successfully')));

          Navigator.pushReplacementNamed(
            context,
            Profile.routeName,
          );
        }
      },
      builder: (context, state) {
        if (state is GetUserSuccess) {
          final user = state.user;
          context.read<UserCubit>().nameController0.text = user.name ?? '';
          context.read<UserCubit>().emailController0.text = user.email ?? '';
          context.read<UserCubit>().universityEmailController0.text =
              user.universityEmail ?? '';
          context.read<UserCubit>().ssnController0.text = user.ssn ?? '';
          context.read<UserCubit>().phoneController0.text = user.phone ?? '';
          context.read<UserCubit>().genderController0.text = user.gender ?? '';
          context.read<UserCubit>().levelController0.text =
              user.level.toString();
          context.read<UserCubit>().termController0.text = user.term.toString();
          context.read<UserCubit>().parentPhoneController0.text =
              user.parentPhone ?? '';
          context.read<UserCubit>().parentEmailController0.text =
              user.parentEmail ?? '';

          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Edit Profile",
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
            backgroundColor: Color(0xffF0F3F7),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField("Student Name",
                        context.read<UserCubit>().nameController0),
                    _buildTextField("Student Email",
                        context.read<UserCubit>().emailController0),
                    _buildTextField("University Email",
                        context.read<UserCubit>().universityEmailController0),
                    _buildTextField("Password",
                        context.read<UserCubit>().passwordController0,
                        obscureText: true),
                    _buildTextField(
                        "SSN", context.read<UserCubit>().ssnController0),
                    _buildTextField("Phone Number",
                        context.read<UserCubit>().phoneController0),
                    _buildTextField(
                        "Gender", context.read<UserCubit>().genderController0),
                    _buildTextField(
                        "Level", context.read<UserCubit>().levelController0),
                    _buildTextField(
                        "Term", context.read<UserCubit>().termController0),
                    _buildTextField("Parent Phone",
                        context.read<UserCubit>().parentPhoneController0),
                    _buildTextField("Parent Email",
                        context.read<UserCubit>().parentEmailController0),
                    SizedBox(height: 20),
                    Center(
                      child: state is UpdateUserLoading
                          ? CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () {
                                final cubit = context.read<UserCubit>();
                                final userId =
                                    CacheHelper().getData(key: ApiKey.id) ?? '';
                                cubit.updateUserProfile();
                                // context.read<UserCubit>().getUserProfile();
                                setState(() {});

                                // context.read<UserCubit>().getUserProfile();
                              },
                              child: Text("Update"),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is GetUserLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is GetUserFailure) {
          return Center(
              child: Text('Failed to load profile: ${state.errMessage}'));
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
