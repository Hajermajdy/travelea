import 'package:flutter/material.dart';
import 'package:travelea/componnent/categories.dart';
import 'package:travelea/sreens/place_sreen.dart';
import  '../componnent/seletion_navbar.dart';
import '../app_colors.dart';
import '../componnent/title_paragraph.dart';
import '../componnent/description.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.KBackGround
        ),
        padding: EdgeInsets.only(
          top: 20,
          right: 15,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/person.jpg"),
                        radius: 20,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Welcome Back",style: TextStyle(color: Colors.grey[400],fontSize: 15,fontWeight: FontWeight.w400),),
                              Icon(Icons.front_hand_sharp,color: Colors.orange[50],size: 20),
                            ],
                          ),
                          Text("Rounald Richards",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  child: Icon(Icons.add_alert_outlined,color: Colors.white,size: 18),
                  backgroundColor: AppColors.KDefualtColor,
                  radius: 15,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                      )
                ],
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.search,color: AppColors.KChecked,size: 20,),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Discover a City",style: TextStyle(color: Colors.grey[300],fontSize: 13),)
                      ],
                    ),
                  ),
                  Image.asset("assets/icons/Settingicon.jpg",width: 20,height: 20,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20
              ),
              height: 50,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
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
                          child: Image.asset("assets/icons/mountain.png",width: 30),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Mountain",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal
              ),
            ),
            TitlePargrapg(text: "Explore Cities"),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 20
              ),
              height: 20,
              child:ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Selectionk(text: "All",checked: false,),
                  Selectionk(text: "Popular",checked: true,),
                  Selectionk(text: "Recommended",checked: false,),
                  Selectionk(text: "Most Viewed",checked: false,),
                  Selectionk(text: "Recommended",checked: false,),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: 10
              ),
              height: 180,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(6),
                    width: 155,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlaceScreen(),));
                      },
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(65),
                                  child: Image.asset("assets/images/island.jpg",fit: BoxFit.cover,),
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
                            namecity: "Mount Brmo",
                            location: "Thailand",
                            price: "\$890",
                            rate: "4.9",
                          )
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 6),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal
              ),
            ),
            TitlePargrapg(text: "Popular Categories",),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Categories(text: "Fligths",pathImage: "assets/images/Fligth.jpg",),
                Categories(text: "Hotels", pathImage: "assets/images/Hotel.jpg"),
                Categories(text: "Transports", pathImage: "assets/images/Transport.jpg"),
                Categories(text: "Events", pathImage: "assets/images/Event.jpg")
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BottomNavigationBar(
            backgroundColor: AppColors.KDefualtColor,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                  backgroundColor: AppColors.KDefualtColor
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                  backgroundColor: Colors.red
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_alert_outlined),
                  label: '',
                  backgroundColor: Colors.green
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity),
                  label: '',
                  backgroundColor: Colors.lightGreenAccent
              ),
            ],
            selectedItemColor: Colors.white,
          ),
        ),
      )
    );
  }
}
