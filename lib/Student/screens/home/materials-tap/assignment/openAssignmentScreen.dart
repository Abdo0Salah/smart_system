import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../../../../../apiModels/OpenAssignmentModel.dart';
import 'add_answer_screen.dart';

class OpenAssignmentScreen extends StatefulWidget {
  static const String routeName = 'OpenAssignmentScreen';

  @override
  _OpenAssignmentScreenState createState() => _OpenAssignmentScreenState();
}

class _OpenAssignmentScreenState extends State<OpenAssignmentScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().OpenAssignment();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xffEFF3F7FF) ,
          elevation: 0,
          title: Text('Assignment  ',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              )),
        ),
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is OpenAssignmentLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is OpenAssignmentSuccess) {
              return _buildSubjectList(state.assignmentR);
            } else if (state is OpenAssignmentFailure) {
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

  Widget _buildSubjectList(List<OpenAssignmentModel> assignments) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
              itemCount: assignments.length,
              itemBuilder: (context, index) {
                final assignment = assignments[index];
                return _buildSubjectItem(assignment, index + 1);
              },
            ),
          ),
          SizedBox(height: 30.h,),

        ],
      ),
    );
  }

  Widget _buildSubjectItem(OpenAssignmentModel assignment, int index) {
    return Column(
      children: [

        Container(decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8).r)

        ),
          child:  Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: const Color(0xffC4C4C4),
                  child: ClipOval(
                    child: Image.asset(
                      assignment.fileExtension == ".pdf"
                          ? "assets/images/pdff.png"
                          : "assets/images/word.png",
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                Text(
                  assignment.fileName ?? 'null',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15.h,),
        Row(
          children: [
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, AddAnswerScreen.routeName);
              },
              constraints: BoxConstraints(),
              elevation: 2.0,
              fillColor: Colors.blue,
              child: InkWell(
                onTap: (){ Navigator.popAndPushNamed(context, AddAnswerScreen.routeName);},

                child: Icon(
                  Icons.add,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
              padding: EdgeInsets.all(15.0).w,
              shape: CircleBorder(),
            ),
            SizedBox(width: 15.w,),
            Text(
              "add answer",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.sp,
                  color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
