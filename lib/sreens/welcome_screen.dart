import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travelea/sreens/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
            bottom: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore Beauty Of Journey",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w800),),
                  Text("Everything you can imagine, is here",style: TextStyle(color: Colors.white60),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen(),)vela
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 8.0,
                              sigmaY: 4.5,
                            ),
                            child: Container(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.black,
                                      Colors.black,
                                    ]
                                )
                            ),
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(25),
                                  child: Image(image: AssetImage("assets/icons/iconwelcomescreen.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text("Swipe to Expore Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              )
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => MainScreen(),
              //       ),
              //     );
              //   },
              //     child: Container(
              //       padding: EdgeInsets.all(15),
              //       decoration: BoxDecoration(
              //         color: Colors.red,
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //       child: Stack(
              //         children: [
              //           BackdropFilter(
              //               filter: ImageFilter.blur(
              //                 sigmaX: 4.0,
              //                 sigmaY: 4.5,
              //               ),
              //
              //             child: Container(),
              //           ),
              //           Container(
              //             decoration: BoxDecoration(
              //               gradient: LinearGradient(
              //                 begin: Alignment.topLeft,
              //                 end: Alignment.bottomLeft,
              //                 colors: [
              //                   Colors.white.withOpacity(0.15),
              //                   Colors.white.withOpacity(0.05),
              //                 ]
              //               )
              //             ),
              //           )
              //         ],
              //       )
              //     )
              // )
            ],
          ),
        ),
      ),
    );
  }
}
