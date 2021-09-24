
import 'package:flutter/material.dart';
import 'package:user_profile/widgets/user_data_widget.dart';
import 'package:user_profile/widgets/user_settings_data.dart';
import 'package:user_profile/widgets/write_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[20],

        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.stretch, children: const [
          UserDataWidget(),
          UserSettingsData(),
        ],),
      ),
    );
  }
}
