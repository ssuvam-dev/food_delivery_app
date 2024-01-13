import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tryfooddeliveryapp/controller/cart_controller.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey.shade200)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Order Summary",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Subtotal",
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      " (${cartController.cartItems.toString()}item)",
                      style: const TextStyle(
                          fontSize: 13.0,
                          letterSpacing: 0.1,
                          color: Colors.grey),
                    )
                  ],
                  
                ),

                Text(
                  "Rs. ${cartController.subTotalAmount.toString()}",
                  style: const TextStyle(
                    fontSize: 18.0
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                 "Tax Amount ",
                 style: TextStyle(
                   fontSize: 18.0,
                   letterSpacing: 0.5,
                 ),
                    ),

                Text(
                  "Rs. ${cartController.taxAmount.toString()}",
                  style: const TextStyle(
                    fontSize: 18.0
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                     Text(
                      "Discount",
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      " (0% off)",
                      style:  TextStyle(
                          fontSize: 13.0,
                          letterSpacing: 0.1,
                          color: Colors.grey),
                    )
                  ],
                  
                ),

                Text(
                  "Rs. ${cartController.discountAmount.toString()}",
                  style: const TextStyle(
                    fontSize: 18.0
                  ),
                )
              ],

            ),
            const SizedBox(height: 12.0,),
            const Divider(
              height: 1.0,
              color: Colors.grey,

            ),
            const SizedBox(height: 20.0,),
 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                 "Grand Total",
                 style: TextStyle(
                   fontSize: 18.0,
                   letterSpacing: 0.1,
                   fontWeight: FontWeight.bold
                 ),
                    ),

                Text(
                  "Rs. ${cartController.taxAmount.toString()}",
                  style: const TextStyle(
                    fontSize: 18.0
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0,),

            
          ],
        ),
      ),
    );
  }
}
