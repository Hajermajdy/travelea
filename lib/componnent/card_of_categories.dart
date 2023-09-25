import 'package:flutter/material.dart';
import 'package:travelea/app_colors.dart';
import 'package:travelea/componnent/description.dart';
import 'package:travelea/sreens/place_sreen.dart';

class CardOfcategries extends StatelessWidget {

  String imagePath;
  String name;
  String Locatio;
  String rate;
  String price;


  CardOfcategries({
    required this.imagePath,
    required this.name,
    required this.Locatio,
    required this.rate,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(10)
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => PlaceScreen
                (
                  imagepath: imagePath,
                  rate: rate,
                  price: price,
                  name: name,
                  location: Locatio,
              ),
              )
          );
        },
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(70),
                    child: Image.asset(imagePath,fit: BoxFit.cover,),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.KChecked,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    padding: EdgeInsets.all(7),
                    margin: EdgeInsets.only(
                        top: 7,
                        right: 20
                    ),
                    child: Image.asset("assets/icons/heart.png",width: 15,height: 15,),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Description(
              checked: false,
              namecity: name,
              location: Locatio,
              price: price,
              rate: rate,
            )
          ],
        ),
      ),
    );
  }
}
