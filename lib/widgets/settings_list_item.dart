import 'package:flutter/material.dart';
import 'package:user_profile/widgets/write_widget.dart';

class SettingsListItem extends StatelessWidget {
  _Action action = _Action.logout;
  String label = "logout";
  IconData icon = Icons.logout;

  SettingsListItem.paymentMethod({Key? key}) : super(key: key) {
    action = _Action.paymentMethod;
    label = "Payment Method";
    icon = Icons.payment;
  }

  SettingsListItem.logout({Key? key}) : super(key: key) {
    action = _Action.logout;
    label = "Logout";
    icon = Icons.logout;
  }

  SettingsListItem.changePassword({Key? key}) : super(key: key) {
    action = _Action.changePassword;
    label = "Change Password";
    icon = Icons.password;
  }

  SettingsListItem.notifications({Key? key,})
      : super(key: key) {
    action = _Action.notifications;
    label = "Notifications";
    icon = Icons.notifications;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black87,
            size: 32,
          ),
          const SizedBox(
            width: 20,
            height: 10,
          ),
          Write.label(text: label),

        ],
      ),
    );
  }
}

enum _Action {
  paymentMethod,
  notifications,
  changePassword,
  logout,
}
