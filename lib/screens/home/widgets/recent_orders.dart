import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/screens/home/components/header_component.dart';
import 'package:tryfooddeliveryapp/screens/home/components/order_component.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderComponent(header: "Top Healthy"),
          
          SizedBox(
            height: 120.0,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return OrderComponent(menu: allMenus[index]);
              },
              itemCount: allMenus.length,
            ),
          )
        ],
      ),
    );
  }
}
