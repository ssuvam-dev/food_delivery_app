import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';

class NameAndLocationWidget extends StatelessWidget {
  final Restaurant restaurant;
  const NameAndLocationWidget({super.key,required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                      restaurant.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),

                     Text(
                    restaurant.location,
                    style: const TextStyle(
                        fontSize: 16.0,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
              
            ),

          );
  }
}