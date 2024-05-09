// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:happy_tech_mastering_api_with_flutter/cubit/user_cubit.dart';
// import 'package:happy_tech_mastering_api_with_flutter/cubit/user_state.dart';
// import 'package:happy_tech_mastering_api_with_flutter/screens/sign_in_screen.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/already_have_an_account_widget.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/custom_form_button.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/custom_input_field.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/page_header.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/page_heading.dart';
// import 'package:happy_tech_mastering_api_with_flutter/widgets/pick_image_widget.dart';
//
// import '../TestScreen.dart';
//
// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//   static const String routeName = 'SignUpScreen';
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: BlocConsumer<UserCubit, UserState>(
//         listener: (context, state) {
//           if (state is SignUpSuccess) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text("created successfully,check your email for confirmation and login"),
//               ),
//             );
//             Navigator.pushNamed(context, SignInScreen.routeName)
//             ;
//           } else if (state is SignUpFailure) {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//               content: Text(state.errMessage),
//             ));
//           }
//         },
//         builder: (context, state) {
//           return Scaffold(
//             backgroundColor: const Color(0xffEEF1F3),
//             body: SingleChildScrollView(
//               child: Form(
//                 key: context.read<UserCubit>().signUpFormKey,
//                 child: Column(
//                   children: [
//                     const PageHeader(),
//                     const PageHeading(title: 'Sign-up'),
//                     //! Image
//                    // const PickImageWidget(),
//                     const SizedBox(height: 16),
//                     //! Name
//                     CustomInputField(
//                       labelText: 'UertName',
//                       hintText: 'Your UertName',
//                       isDense: true,
//                       controller: context.read<UserCubit>().signUpUserName,
//                     ),
//                     const SizedBox(height: 16),
//                     CustomInputField(
//                       labelText: 'Name',
//                       hintText: 'Your name',
//                       isDense: true,
//                       controller: context.read<UserCubit>().signUpName,
//                     ),
//                     const SizedBox(height: 16),
//                     //!Email
//                     CustomInputField(
//                       labelText: 'Email',
//                       hintText: 'Your email',
//                       isDense: true,
//                       controller: context.read<UserCubit>().signUpEmail,
//                     ),
//                     const SizedBox(height: 16),
//                     //! Phone Number
//
//                     //! Password
//                     CustomInputField(
//                       labelText: 'Password',
//                       hintText: 'Your password',
//                       isDense: true,
//                       obscureText: true,
//                       suffixIcon: true,
//                       controller: context.read<UserCubit>().signUpPassword,
//                     ),
//                     //! Confirm Password
//                     CustomInputField(
//                       labelText: 'Confirm Password',
//                       hintText: 'Confirm Your password',
//                       isDense: true,
//                       obscureText: true,
//                       suffixIcon: true,
//                       controller: context.read<UserCubit>().confirmPassword,
//                     ),
//                     const SizedBox(height: 22),
//                     CustomInputField(
//                       labelText: 'rule',
//                       hintText: 'rule',
//                       isDense: true,
//                       obscureText: true,
//                       suffixIcon: true,
//                       controller: context.read<UserCubit>().signUrule,
//                     ),
//                     //!Sign Up Button
//                     state is SignUpLoading
//                         ? const CircularProgressIndicator()
//                         : CustomFormButton(
//                             innerText: 'Signup',
//                             onPressed: () {
//                               context.read<UserCubit>().signUp();
//                             },
//                           ),
//                     const SizedBox(height: 18),
//                     //! Already have an account widget
//                     const AlreadyHaveAnAccountWidget(),
//                     const SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
