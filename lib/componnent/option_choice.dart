import 'package:flutter/material.dart';
import 'package:travelea/app_colors.dart';

class OptionChoice extends StatelessWidget {
  String title;
  String pathImage;


  OptionChoice({required this.title,required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 55,
      decoration: BoxDecoration(
          color: AppColors.KChecked,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/icons/${pathImage}.png",width: 30),
          ),
          SizedBox(
            width: 10,
          ),
          Text(title,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
