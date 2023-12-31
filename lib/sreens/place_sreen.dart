import 'package:flutter/material.dart';
import 'package:travelea/app_colors.dart';
import 'package:travelea/componnent/categories.dart';
import 'package:travelea/componnent/title_paragraph.dart';
import 'package:travelea/sreens/main_screen.dart';
import '../componnent/description.dart';

class PlaceScreen extends StatelessWidget {

  String imagepath;
  String name;
  String location;
  String rate;
  String price;


  PlaceScreen({
    required this.imagepath,
    required this.name,
    required this.location,
    required this.rate,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          // padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MainScreen(),)),
                  child: Icon(Icons.arrow_back_rounded)
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 7
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(155),
                    child: Image.asset(imagepath,fit: BoxFit.cover,),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Categories(text: "Maps", pathImage: "assets/icons/map.png"),
                  Categories(text: "Guide", pathImage: "assets/icons/tour-guide.png"),
                  Categories(text: "4 day 3 nigth", pathImage: "assets/icons/night.png"),
                  Categories(text: "Dinner", pathImage: "assets/icons/christmas-dinner.png")
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10
                ),
                height: 2,
                width: double.infinity,
                color: Colors.black12,
                child: Text(" "),
              ),
              Row(
                children: [
                  Description(
                    checked: true,
                    namecity: name,
                    location: location,
                    price: " ",
                    rate: rate,
                  )

                ],
              ),
              SizedBox(
                height: 10,
              ),
              TitlePargrapg(text: "Desciption"),
              SizedBox(
                height: 10,
              ),
              Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur laborum doloribus delectus modi minus ex aliquam suscipit ullam, et quam adi",style: TextStyle(color: Colors.black12),),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        left: 20,
                        right: 20
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: AppColors.KChecked,
                            width: 2
                          ))
                    ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(price,style: TextStyle(color: AppColors.KChecked,fontWeight: FontWeight.w600),),
                          Text("/person",style: TextStyle(color: AppColors.KChecked,fontWeight: FontWeight.w300),)
                        ],
                      )
                  ),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.KChecked,
                          elevation: 0,
                          padding: EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                              left: 20,
                              right: 20
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: AppColors.KChecked,
                                  width: 2
                              ))
                      ),
                      onPressed: () {},
                      child: Text("Book Now",style: TextStyle(color: Colors.white),)
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
