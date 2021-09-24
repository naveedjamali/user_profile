import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  bool value = true;

  SwitchButton({Key? key}) : super(key: key);





  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Switch(value: widget.value, onChanged: (changedValue){
      setState(() {
        widget.value = changedValue;
      });
    },  ));
  }

  void onChnaged(bool value) {}
}
