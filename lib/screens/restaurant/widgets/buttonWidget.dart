import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(primaryColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))
            ),
            
           child: const Padding(
             padding:  EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
             child: Text("Reviews",style: TextStyle(letterSpacing: 0.5,fontSize: 16.0),),
           )
           ),

            ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(primaryColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))
            ),
            
           child: const Padding(
             padding:  EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
             child: Text("Contact",style: TextStyle(letterSpacing: 0.5,fontSize: 16.0),),
           )
           ),

           
        ],
      ),
    );
  }
}