import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String header;
  const  HeaderComponent({super.key,required this.header});

  @override
  Widget build(BuildContext context) {
    return  Text(
            header,
            style: const TextStyle(
                fontSize: 24.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w600),
          );
  }
}