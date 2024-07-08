import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/Student/screens/home/TESTO.dart';
import '../../../../apiModels/get_groups_model.dart';
import '../../../../cache/cache_helper.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../cubit/user_cubit.dart';
import '../../../../cubit/user_state.dart';
import 'mat_page.dart';

class SubjectGroups extends StatefulWidget {
  static const String routeName = 'SubjectGroups';

  @override
  _SubjectGroupsState createState() => _SubjectGroupsState();
}

class _SubjectGroupsState extends State<SubjectGroups> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getGroups();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UserFailureState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Selected topic',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                )),
            iconTheme: IconThemeData(color: Colors.black, size: 15.sp),
          ),
          backgroundColor: const Color(0xffF5F9FE),
          body: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if (state is UserLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is UserFailureState) {
                return Center(child: Text('Failed to load subjects: ${state.errMessage}'));
              }
              final groups = context.read<UserCubit>().groupR;
              return _buildSubjectList(groups);
            },
          ),

        );
      },
    );
  }

  Widget _buildSubjectList(List<GetGroupsModel> groups) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(25.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Text("All Groups",
                        style: GoogleFonts.ubuntu(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: groups.length,
                      itemBuilder: (context, index) {
                        final group = groups[index];
                        return _buildSubjectItem(group, index + 1);
                      },
                    ),
                  ),
                ],
              ),
            )
        )


      ],
    );
  }

  Widget _buildSubjectItem(GetGroupsModel group, int index) {
    return InkWell(
      onTap: () {
        CacheHelper().saveData(key: ApiKey.groupIdSaved, value: group.id);
        Navigator.of(context)
            .pushNamed(MatPagee.routeName,);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0).w,
            child: Card(
              elevation: 10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0).w,
                    child: Image.network(
                      "https://news.mit.edu/sites/default/files/styles/news_article__image_gallery/public/images/201706/MIT-Predicting-Reactions-1_0.jpg?itok=q5Dlcw3w",
                      fit: BoxFit.cover,
                      height: 70.h,
                      width: 70.w,),
                  ),
                  Column(
                    children: [
                      Text(
                        group.name ?? '-',
                        style: GoogleFonts.gabriela(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
                      Row(
                        children: [
                          Icon(Icons.message,
                            color: Colors.blue,
                            size: 20,),
                          Text(
                            group.description ?? '-',
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h,),


        ],
      ),
    );
  }
}