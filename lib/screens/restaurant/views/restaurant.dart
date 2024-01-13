import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';
import 'package:tryfooddeliveryapp/screens/home/components/rating_component.dart';
import 'package:tryfooddeliveryapp/screens/restaurant/components/buttonWidget.dart';
import 'package:tryfooddeliveryapp/screens/restaurant/components/imageWidget.dart';
import 'package:tryfooddeliveryapp/screens/restaurant/components/name_and_location.dart';
import 'package:tryfooddeliveryapp/screens/restaurant/components/ratingandaddress.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(restaurant.name),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackButton(
          color: Colors.white,
          
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(image: restaurant.image),
          NameAndLocationWidget(restaurant: restaurant),
          RatingAndAddress(restaurant: restaurant),
          const ButtonWidget(),
        ],
      ),
    );
  }
}
