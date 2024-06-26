import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        backgroundColor: Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Form(
            key: context.read<UserCubit>().signUpFormKey,
            child: Column(
              children: [
                Image.asset('assets/images/Login/login_logo.png'),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, right: 15, left: 15),
                  child: Container(
                    //  width: 390,
                    //   height: 400,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
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
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, right: 20, bottom: 10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pop(LoginScreen.routeName);
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, right: 20, bottom: 10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pop(SignUpScreen.routeName);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 3,
                          color: Color(0xff1B406D),
                          indent: 230,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
                              child: CustomInputField(
                                prefixIcon: true,
                                iconss: Icons.rule,
                                hintText: 'rule',
                                isDense: true,
                                obscureText: false,
                                suffixIcon: false,
                                controller: context.read<UserCubit>().signUrule,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15, bottom: 8),
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
                  padding: const EdgeInsets.only(
                      top: 8, right: 15, left: 15, bottom: 8),
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
