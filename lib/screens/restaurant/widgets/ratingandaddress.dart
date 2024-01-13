import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';
import 'package:tryfooddeliveryapp/screens/home/components/rating_component.dart';

class RatingAndAddress extends StatelessWidget {
  final Restaurant restaurant;
  const RatingAndAddress({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              letterSpacing: 0.4
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
