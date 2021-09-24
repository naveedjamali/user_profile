import 'package:flutter/material.dart';

class Write extends StatelessWidget {

  final String text;

  _WriteType textType = _WriteType.label;

  Write.heading({Key? key, required this.text}) : super(key: key){
    textType = _WriteType.heading;

  }
  Write.subheading({Key? key, required this.text}) : super(key: key){
    textType = _WriteType.subheading;

  }
  Write.label({Key? key, required this.text}) : super(key: key){
    textType = _WriteType.label;

  }

  @override
  Widget build(BuildContext context) {
    /**
     * Fields to manipulate textstyle parameters.
     */
    double fontSize = 14;
    FontWeight fontWeight = FontWeight.normal;
    Color color = Colors.black87;

    TextStyle style = TextStyle();
    
    switch(textType){
      case _WriteType.heading:{

        fontWeight = FontWeight.bold;
        fontSize = 24;
        color = Colors.black87;

        break;
      }
      case _WriteType.subheading:{

        fontWeight = FontWeight.bold;
        fontSize = 20;
        color = Colors.black45;

        break;
      }
      case _WriteType.label:{

        fontWeight = FontWeight.normal;
        fontSize = 16;
        color = Colors.black87;

        break;
      }
    }

    style = TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight, );
    return Text(text,style: style,);
  }
}

/// This enum is used to differentiate text types e.g heading, subheading, etc. to style text according to its need.
/// the scope of this enum is private, and can only be used in this file.
enum _WriteType {
  // for heading text
  heading,
  // for subheading text
  subheading,
  // for label text
  label,
}
