import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/Student/screens/login_signup/signup_screen.dart';
import '../../../cubit/user_cubit.dart';
import '../../../cubit/user_state.dart';
import '../../../widgets/custom_form_button.dart';
import '../../../widgets/custom_input_field.dart';
import '../home/home.dart';
import 'forget_pass.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("success"),
            ),
          );
          //context.read<UserCubit>().SubjectRegisteration();
          Navigator.popAndPushNamed(context, HomeScreen.routeName);
        } else if (state is SignInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: const Color(0xffF0F3F7),
          body: SingleChildScrollView(
            child: Form(
              key: context.read<UserCubit>().signInFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                         EdgeInsets.only(top: 10.h, right: 40.w, left: 40.w),
                    child: Image.asset('assets/images/Login/login_logo.png'),
                  ),
                  Padding(
                    padding:
                         EdgeInsets.only(bottom: 15.h, left: 15.w, right: 15.w),
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
                                padding: EdgeInsets.only(
                                    left: 20.w, top: 20.h, right: 20.w
                                    , bottom: 10.h),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(
                                    left: 20.w, top: 20.h, right: 20.w, bottom: 10.h),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(SignUpScreen.routeName);
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
                              endIndent: 200.w
                          ),
                           ),
                          Padding(
                            padding:  EdgeInsets.all(15.w),
                            child: CustomInputField(
                              iconss: Icons.mail,
                              prefixIcon: true,
                              hintText: 'Username@fci.zu.edu.eg',
                              controller:
                                  context.read<UserCubit>().signInuserName,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(15.w),
                            child: CustomInputField(
                              iconss: Icons.password_outlined,
                              hintText: 'Your password',
                              obscureText: true,
                              suffixIcon: true,
                              prefixIcon: true,
                              controller:
                                  context.read<UserCubit>().signInPassword,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(10.w),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(
                                    ForgetPassword.routeName);
                              },
                              child:  Text(
                                'Forget Password!',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: 15.h, right: 15.w, left: 15.w, bottom: 15.h),
                      child: state is SignInLoading
                          ? const CircularProgressIndicator()
                          : CustomFormButton(
                              innerText: 'Sign In',
                              onPressed: () {
                                context.read<UserCubit>().signIn();
                                context.read<UserCubit>().getUserProfile();

                              },
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
