import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubit/user_cubit.dart';
import '../../../cubit/user_state.dart';
import '../../../widgets/custom_form_button.dart';
import '../../../widgets/custom_input_field.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<UserCubit, UserState>(listener: (context, state) {
      if (state is SignUpSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                "created successfully,check your email for confirmation and login"),
          ),
        );
        Navigator.pop(context, LoginScreen.routeName);
      } else if (state is SignUpFailure) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.errMessage),
        ));
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Form(
            key: context.read<UserCubit>().signUpFormKey,
            child: Column(
              children: [
                Image.asset('assets/images/Login/login_logo.png'),
                Padding(
                  padding:
                       EdgeInsets.only(bottom: 8.h
                           , right: 15.w, left: 15.w),
                  child: Container(
                     width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 2.r,
                            blurRadius: 5.r,
                            offset: Offset(0.w, 3.h),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                  left: 20.w, top: 20.h, right: 20.w, bottom: 10.h),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pop(LoginScreen.routeName);
                                },
                                child:  Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  left: 20.w, top: 20.h, right: 20.w, bottom: 10.h),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pop(SignUpScreen.routeName);
                                },
                                child:  Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 10.w),
                           child: Divider(
                            thickness: 3.h,
                            color: const Color(0xff1B406D),
                            indent: 200.w,
                        ),
                         ),
                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.person_rounded,
                                hintText: 'Your UserName',
                                isDense: true,
                                controller:
                                    context.read<UserCubit>().signUpUserName,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.person,
                                hintText: 'Your name',
                                isDense: true,
                                controller:
                                    context.read<UserCubit>().signUpName,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.mail,
                                hintText: 'Your email',
                                isDense: true,
                                controller:
                                    context.read<UserCubit>().signUpEmail,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.key,
                                hintText: 'Your password',
                                isDense: true,
                                obscureText: true,
                                suffixIcon: true,
                                controller:
                                    context.read<UserCubit>().signUpPassword,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.key,
                                hintText: 'Confirm Your password',
                                isDense: true,
                                obscureText: true,
                                suffixIcon: true,
                                controller:
                                    context.read<UserCubit>().confirmPassword,
                              ),
                            ),
                            // Padding(
                            //   padding:  EdgeInsets.only(
                            //       top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                            //   child: CustomInputField(
                            //     prefixIcon: true,
                            //     iconss: Icons.rule,
                            //     hintText: 'rule',
                            //     isDense: true,
                            //     obscureText: false,
                            //     suffixIcon: false,
                            //     controller: context.read<UserCubit>().signUrule,
                            //   ),
                            // ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.phone,
                                hintText: 'phone',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUpPhone,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.numbers,
                                hintText: 'level',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUpLevel,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.class_,
                                hintText: 'term',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUpTerm,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.person,
                                hintText: 'gender',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUpGender,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.rule,
                                hintText: 'Ssn',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUpSsn,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      top: 8.h, right: 15.w, left: 15.w, bottom: 8.h),
                  child: state is SignUpLoading
                      ? const CircularProgressIndicator()
                      : CustomFormButton(
                          innerText: 'Signup',
                          onPressed: () {
                            context.read<UserCubit>().signUp();

                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
