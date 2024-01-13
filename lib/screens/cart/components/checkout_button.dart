import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
      child: ElevatedButton(
        onPressed: () {},
        style:  ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(primaryColor),
            minimumSize: const MaterialStatePropertyAll(Size(double.infinity,50)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            )),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0))),
        child: const Text(
          "Proceed to Checkout",
          style: TextStyle(fontSize: 18.0, letterSpacing: 0.4),
        ),
      ),
    );
  }
}
