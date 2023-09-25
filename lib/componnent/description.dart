import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  String namecity;
  String location;
  String rate;
  String price;
  bool checked;


  Description({
    required this.namecity,
    required this.location,
    required this.rate,
    required this.price,
    required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(namecity,style: TextStyle(fontWeight: FontWeight.w600),),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.black38,size: 10,),
                  Text(location,style: TextStyle(color: Colors.black38,fontSize: 10),)
                ],
              ),

            ],
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star_border,color: Colors.black38,size: 12,),
                  Text(rate,style: TextStyle(color: Colors.black38,fontSize: 10),)
                ],
              ),
              Row(
                children: [
                  checked?
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.red,size: 10,),
                          Text("Map Direction",style: TextStyle(color: Colors.red,fontSize: 10),)
                        ],
                      )
                  :
                      Row(
                        children: [
                          Text(price,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700,fontSize: 11)),
                          Text("/person",style: TextStyle(color: Colors.black38,fontSize: 10),)
                        ],
                      )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
