import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';
import 'package:tryfooddeliveryapp/screens/home/components/header_component.dart';
import 'package:tryfooddeliveryapp/screens/home/components/restaurant_component.dart';

class NearByRestaurant extends StatelessWidget {
  const NearByRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
      List<Restaurant> restaurants=allrestaurants;
    return  Padding(
      padding:  const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderComponent(header: "Nearby Restaurant"),
          SizedBox(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
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