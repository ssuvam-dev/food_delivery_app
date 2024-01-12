import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
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
            padding: const EdgeInsets.only(top: 10.0,right: 15.0),
            child: Badge(
              alignment: Alignment.topRight,
              label: const Text("5"),
              child:IconButton(
              onPressed: (){},
              icon:const Icon(
                Icons.shopping_cart,
                size: 28.0,
                ),
            ) ,
            ),
          ),
          
        ],
      ),
    );
  }
}
