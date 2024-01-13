import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/utils/theme_colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
    TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 15.0)),
          controller: textEditingController,
          hintText: "Search Food or Restaurants",
          leading: const Icon(
            Icons.search,
            size: 26.0,
            color: Color.fromARGB(255, 125, 123, 123),
          ),
          // padding: const MaterialStatePropertyAll(EdgeInsets.all(10.0)),
          elevation: const MaterialStatePropertyAll(0.0),
          hintStyle:
              const MaterialStatePropertyAll(TextStyle(color: Colors.grey,fontSize: 18.0)),
          textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 18.0)),
          trailing: [
            IconButton(
              onPressed: () {
                textEditingController.text="";
              },
              icon: const Icon(
                Icons.close,
                size: 26.0,
                color: Color.fromARGB(255, 125, 123, 123),
              ),
            )
          ],

          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                width: 0.8,
                color: primaryColor
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            
              
          ),
        );
  }
}