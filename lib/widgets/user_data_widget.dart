import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [Text("Profile"),
        Container(child: Column(children: [
          Stack(children: [],),
          Text("John Richard"),
          Text("18 E-books"),
        ],),)],

      )
    );
  }
}
