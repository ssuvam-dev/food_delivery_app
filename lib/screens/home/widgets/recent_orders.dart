import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/screens/home/components/order_component.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = [
      {
        "name":"Burger",
        "restaurant_name":"A-one restaurant",
        "date":"2080-10-09",
        "image":"assets/images/food.jpeg"
      },
      {
        "name":"MOMO",
        "restaurant_name":"Kathmandu restaurant",
        "date":"2080-10-01",
        "image":"assets/images/momo.jpeg"
      },
      {
        "name":"Sekuwa",
        "restaurant_name":"Bajeko Sekuwa",
        "date":"2080-10-12",
        "image":"assets/images/sekuwa.jpeg"
      },
      {
        "name":"Pizza",
        "restaurant_name":"KFC",
        "date":"2080-10-17",
        "image":"assets/images/pizza.jpeg"
      },
      {
        "name":"Chaumin",
        "restaurant_name":"Baduwal",
        "date":"2080-10-19",
        "image":"assets/images/chaumin.jpeg"
      },
    ];


    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent Orders",
            style: TextStyle(
                fontSize: 24.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w600),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return OrderComponent(order: orders[index]);
              },
              itemCount: orders.length,
            ),
          )
        ],
      ),
    );
  }
}
