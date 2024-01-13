import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class SingleMenuComponent extends StatelessWidget {
  final Menu menu;
const SingleMenuComponent({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 175,
          width: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(menu.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          height: 175,
          width: 175,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(colors:[
                Colors.black.withOpacity(0.3),
                Colors.black87.withOpacity(0.3),
                Colors.black54.withOpacity(0.3),
                Colors.black38.withOpacity(0.3),
              ], stops: const [
                0.1,
                0.5,
                0.7,
                0.9
              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              menu.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
            Text(
              "Rs. ${menu.price.toString()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            )
          ],
        ),
        Positioned(
            bottom: 10.0,
            right: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30.0)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  )),
            ))
      ],
    );
  }
}
