import 'package:flutter/material.dart';

class TitlePargrapg extends StatelessWidget {
  String text;

  TitlePargrapg({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),);
  }
}
