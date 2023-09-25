import 'package:flutter/material.dart';

class Selectionk extends StatelessWidget {
  String text;
  bool checked;


  Selectionk({required this.text, required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10
      ),
      child: Text(text,style: TextStyle(
          color: checked?Colors.black:Colors.grey[300],
          fontWeight: checked?FontWeight.w700: FontWeight.w500),),
    );
  }
}
