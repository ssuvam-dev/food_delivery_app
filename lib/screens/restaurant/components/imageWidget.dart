import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Hero(
          tag: image,
          child: Image(
            image: AssetImage(image),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 350.0,
          ),
        );
  }
}