import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          Navigator.pushNamed(context, HomeScreen.routeName);
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
          backgroundColor: Color(0xffF0F3F7),
          body: SingleChildScrollView(
            child: Form(
              key: context.read<UserCubit>().signInFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 40, left: 40),
                    child: Image.asset('assets/images/Login/login_logo.png'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                    child: Container(
                      // width: 390,
                      // height: 320,
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
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, top: 20, right: 20, bottom: 10),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20, right: 20, bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(SignUpScreen.routeName);
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
                            endIndent: 230,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CustomInputField(
                              iconss: Icons.mail,
                              prefixIcon: true,
                              hintText: 'Username@fci.zu.edu.eg',
                              controller:
                                  context.read<UserCubit>().signInuserName,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
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
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(
                                    ForgetPassword.routeName);
                              },
                              child: const Text(
                                'Forget Password!',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 18,
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
                      padding: const EdgeInsets.only(
                          top: 15, right: 15, left: 15, bottom: 15),
                      child: state is SignInLoading
                          ? const CircularProgressIndicator()
                          : CustomFormButton(
                              innerText: 'Sign In',
                              onPressed: () {
                                context.read<UserCubit>().signIn();
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
