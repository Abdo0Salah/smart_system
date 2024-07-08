// // ** Cubit **
// import 'apiModels/getByLevelAndTerm.dart';
// import 'apiModels/get_all_posts_model.dart';
// import 'apiModels/get_groups_model.dart';
// import 'cubit/user_state.dart';
//
// final List<GetCoursesbyLevelAndTermModel> courseR = [];
// final List<GetAllPostsModel> postR = [];
// final List<GetGroupsModel> groupR = [];
//
// GetCoursesbyLevelAndTerm() async {
//   emit(GetCoursesbyLevelAndTermLoading());
//   final response = await userRepository.GetCoursesbyLevelAndTerm();
//   print(response.toString());
//   response.fold(
//     (errMessage) =>
//         emit(GetCoursesbyLevelAndTermFailure(errMessage: errMessage)),
//     (courseR) {
//       // ** new **
//       this.courseR
//         ..clear()
//         ..addAll(courseR);
//       emit(UserSuccessState());
//     },
//     // ** old **
//     // (courseR) => emit(GetCoursesbyLevelAndTermSuccess(courseR: courseR)),
//   );
// }
//
// // ** States **
//
// class UserState {}
// final class UserLoadingState extends UserState {}
//
// final class UserFailureState extends UserState {
//   final String errMessage;
//
//   UserFailureState({required this.errMessage});
// }
//
// final class UserSuccessState extends UserState {}
//
//
//
// // ** Screen **
//
//  body: BlocBuilder<UserCubit, UserState>(
//           builder: (context, state) {
//             if (state is UserLoadingState) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (state is UserFailureState) {
//               return Center(
//                 child: Text(
//                   'Failed to load subjects: ${state.errMessage}',
//                 ),
//               );
//             }
//             final courses = context.read<UserCubit>().courseR;
//             return _buildSubjectList(courses);
//           },
//         ),