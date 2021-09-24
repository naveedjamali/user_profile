import 'package:flutter/material.dart';
import 'package:user_profile/widgets/settings_list_item.dart';
import 'package:user_profile/widgets/switchbutton.dart';

class UserSettingsData extends StatelessWidget {
  const UserSettingsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingsListItem.paymentMethod(),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [Container(child:SettingsListItem.notifications(), width: 290,height: 50,), Container(child: SwitchButton())],
       ),
        SettingsListItem.changePassword(),
        SettingsListItem.logout()
      ],
    );
  }
}
