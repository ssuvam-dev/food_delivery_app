import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tryfooddeliveryapp/controller/cart_controller.dart';
import 'package:tryfooddeliveryapp/screens/cart/components/cart_component.dart';
import 'package:tryfooddeliveryapp/screens/cart/components/cart_summary.dart';
import 'package:tryfooddeliveryapp/screens/cart/components/checkout_button.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text("Cart"),
          centerTitle: true,
        ),

        body: Obx((){
        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 10.0,left: 10.0),
                itemBuilder:(context, index) {
                return CartComponent(order: cartController.orders[index]);
              }, separatorBuilder:(context, index) 
              {
                return const Divider(
                  height: 1.0,
                  color: Colors.grey,
                );
              },
              
               itemCount: cartController.orders.length),
              cartController.cartItems.value >0 ?
               const CartSummary():const SizedBox(),
               cartController.cartItems.value >0 ?
               const CheckOutButton():const SizedBox(),
            ],
          ),
        );
   })
    );
  }
}