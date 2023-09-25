import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String text;
  String pathImage;


  Categories({required this.text,required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox.fromSize(
                child: Image.asset(pathImage),
                size: Size.fromRadius(18),
              )
          ),
          Text(text,style: TextStyle(color: Colors.grey,fontSize: 10),)
        ],
      ),
    );
  }
}
