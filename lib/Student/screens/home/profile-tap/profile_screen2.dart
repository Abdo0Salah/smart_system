import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_system/cubit/user_cubit.dart';
import 'package:smart_system/cubit/user_state.dart';

class UserProfileScreen extends StatefulWidget {
  static const String routeName = 'UserProfileScreen';

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetUserLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetUserSuccess) {
              final user = state.user;
              print('Rendering user data: $user');

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person, size: 50),
                      ),
                      SizedBox(height: 20),
                      _buildInfoRow('Name', user.name),
                      _buildInfoRow('Email Id', user.email),
                      _buildInfoRow('University Email', user.universityEmail),
                      _buildInfoRow('SSN', user.ssn),
                      _buildInfoRow('Phone Number', user.phone),
                      _buildInfoRow('Gender', user.gender),
                      _buildInfoRow('Level', user.level.toString()),
                      _buildInfoRow('Term', user.term.toString()),
                      _buildInfoRow('Parent Phone', user.parentPhone),
                      _buildInfoRow('Parent Email', user.parentEmail),
                    ],
                  ),
                ),
              );
            } else if (state is GetUserFailure) {
              return Center(
                  child: Text('Failed to load profile: ${state.errMessage}'));
            } else {
              return Container();
            }
          },
        ));
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
