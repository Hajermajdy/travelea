import 'package:flutter/material.dart';
import 'package:travelea/app_colors.dart';

class CardOfSpaces extends StatelessWidget {

  String imagePath;
  String text;
  bool checked;


  CardOfSpaces({required this.imagePath,required this.text,required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 55,
      decoration: BoxDecoration(
        color: checked ? AppColors.KChecked: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
          )
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                )
              ],
            ),
            padding: EdgeInsets.all(5),
            child: Image.asset(imagePath,width: 30),
          ),
          SizedBox(
            width: 10,
          ),
          Text(text,style: TextStyle(color:checked ? Colors.white:Colors.black12),),
        ],
      ),
    );
  }
}
