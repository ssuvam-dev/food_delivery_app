import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/screens/home/components/header_component.dart';
import 'package:tryfooddeliveryapp/screens/home/components/restaurant_component.dart';

class NearByRestaurant extends StatelessWidget {
  const NearByRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
        List<Map<String, dynamic>> restaurants = [
      {
        "name":"A-one restaurant",
        "rating":4,
        "location":"2 Km away",
        'address':"Hatiyaline,Surkhet"
      },
      {
        "name":"Kathmandu Momo Center",
        "rating":4,
        "image":"assets/images/res.png",
        "location":"3 Km away",
        'address':"Hatiyaline,Surkhet"
      },
      {
        "name":"Puja Momo Center",
        "rating":4,
        "location":"6 Km away",
        'address':"Birendra-chowk,Surkhet"
      },
      
    ];
    return  Padding(
      padding:  const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderComponent(header: "Nearby Restaurant"),
          Container(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder:(context, index){
                    return RestaurantComponent(restaurant: restaurants[index]);
                },
                itemCount:restaurants.length ,
            ),
          )
        ],
      ),
    );
  }
}