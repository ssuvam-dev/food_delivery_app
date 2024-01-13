import 'package:flutter/material.dart';
import 'package:tryfooddeliveryapp/models/food.dart';
import 'package:tryfooddeliveryapp/screens/restaurant/components/singlemenu.dart';

class MenuGridView extends StatelessWidget {
  const MenuGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Menu> menus = allMenus;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 15.0,
          crossAxisCount: 2,
          children: List.generate(menus.length, (index){
            return SingleMenuComponent(menu: menus[index],);
          })
        ),
      ),
    );
  }
}