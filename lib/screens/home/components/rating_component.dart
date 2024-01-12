import 'package:flutter/material.dart';

class CustomRatingComponent extends StatelessWidget {
  final int rating;
   const CustomRatingComponent({super.key,required this.rating});

  @override
  Widget build(BuildContext context) {
    String stars="";
    for (var i = 0; i < rating; i++) {
        stars+="⭐";
    }
    return Text(
      stars,
      style: const TextStyle(
        fontSize: 17.0,
        letterSpacing: 3
      ),
    );
  }
}