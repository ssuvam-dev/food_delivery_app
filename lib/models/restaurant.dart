import 'package:tryfooddeliveryapp/models/menu.dart';

class Restaurant {
  String name;
  int rating;
  String location;
  String address;
  String image;

  Restaurant(
    this.name,
    this.rating,
    this.location,
    this.address,
    this.image,
  );
}

final List<Restaurant> allrestaurants = [
  Restaurant(
    "Jaskan Cafe",
    3,
    "0.7 km away",
    "Deuti Bajai Road",
    "assets/images/res1.png",
  ),
  Restaurant(
    "A-one MOMO",
    2,
    "2 km away",
    "Hatiya-line,Surkhet",
    "assets/images/res2.jpeg",
  ),
  Restaurant(
    "Kathmandu Momo ",
    5,
    "2.4 km away",
    "Godam line,surkhet",
    "assets/images/res3.jpeg",
  ),
   Restaurant(
    "Karnali Mall",
    4,
    "3 km away",
    "Birendra-chowk,Surkhet",
    "assets/images/res4.jpeg",
  ),
  Restaurant(
    "Sidhartha Hotel",
    5,
    "10 km away",
    "Yarichowk, Surkhet",
    "assets/images/res4.png",
  ),
 
];
