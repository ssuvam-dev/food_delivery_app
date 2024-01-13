
import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/screens/home/widgets/nearby_restaurants.dart';
import 'package:tryfooddeliveryapp/screens/home/widgets/recent_orders.dart';
import 'package:tryfooddeliveryapp/screens/home/widgets/search_bar_component.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 30.0,
            ),
          ),
        ),
        title: const Text("Food Delivery"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 15.0),
            child: Badge(
              alignment: Alignment.topRight,
              label: const Text("5"),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 28.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: const[
           CustomSearchBar(),
           RecentOrder(),
           NearByRestaurant()
        ],
      ),
    );
  }


}
