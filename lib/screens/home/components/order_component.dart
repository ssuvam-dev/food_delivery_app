import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tryfooddeliveryapp/controller/cart_controller.dart';
import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/screens/cart/components/cart_component.dart';
import 'package:tryfooddeliveryapp/screens/cart/views/cart.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class OrderComponent extends StatefulWidget {
  final Menu menu;
  const OrderComponent({super.key, required this.menu});

  @override
  State<OrderComponent> createState() => _OrderComponentState();
}

class _OrderComponentState extends State<OrderComponent> {
  final CartController _cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0,right: 10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey.shade200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child:  Image(
              image: AssetImage(widget.menu.image),
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
         const SizedBox(width: 10.0,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.menu.name,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  widget.menu.restaurant.name,
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                //  Text(
                //   widget.order['date'],
                //   style: const TextStyle(
                //       fontSize: 16.0,
                //       fontWeight: FontWeight.w600),
                //   overflow: TextOverflow.ellipsis,
                // )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(30.0)),
            child: IconButton(
                onPressed: () {
                  _cartController.addToCart(widget.menu, widget.menu.restaurant, 1);
                  // Get.to(()=>const Cart());
                },
                icon: const Icon(
                  Icons.add,
                  size: 30.0,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
