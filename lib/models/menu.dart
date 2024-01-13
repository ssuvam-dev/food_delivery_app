import 'package:tryfooddeliveryapp/models/restaurant.dart';

class Menu {
  String name;
  int price;
  String image;
  Restaurant restaurant;
  Menu(
    this.name,
    this.price,
    this.image,
    this.restaurant
  );
}

final List<Menu> allMenus = [
  Menu(
    "Momo",
    100,
    "assets/images/momo.jpeg",
    allrestaurants[0]
  ),
  Menu(
    "Chaumin",
    80,
    "assets/images/chaumin.jpeg",
     allrestaurants[1]
  ),
  Menu(
    "Pizza",
    300,
    "assets/images/pizza.jpeg",
     allrestaurants[2]
  ),
  Menu(
    "Sekuwa",
    120,
    "assets/images/sekuwa.jpeg",
     allrestaurants[1]
  ),

  Menu(
    "Burger",
    140,
    "assets/images/food.jpeg",
     allrestaurants[3]
  ),

 
];
