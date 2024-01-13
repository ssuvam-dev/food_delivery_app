import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';
import 'package:tryfooddeliveryapp/screens/home/components/rating_component.dart';

class RestaurantComponent extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantComponent({super.key,required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0,right: 10.0),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child:  Image(
              image: AssetImage(restaurant.image),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              
            ),
          ),
          const SizedBox(width: 15.0,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 10.0,),
                Text(
                  restaurant.name,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                
                  CustomRatingComponent(rating: restaurant.rating),
                 
                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  restaurant.address,
                  style: const TextStyle(
                      fontSize: 16.0,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  restaurant.location,
                  style: const TextStyle(
                      fontSize: 16.0,
                      ),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}