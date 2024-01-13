import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(restaurant.name),
      ),
    );
  }
}