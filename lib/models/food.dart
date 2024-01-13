class Menu {
  String name;
  int price;
  String image;

  Menu(
    this.name,
    this.price,
    this.image,
  );
}

final List<Menu> allMenus = [
  Menu(
    "Momo",
    100,
    "assets/images/momo.jpeg",
  ),
  Menu(
    "Chaumin",
    80,
    "assets/images/chaumin.jpeg",
  ),
  Menu(
    "pizza",
    300,
    "assets/images/pizza.jpeg",
  ),
  Menu(
    "sekuwa",
    120,
    "assets/images/sekuwa.jpeg",
  ),
  Menu(
    "burger",
    140,
    "assets/images/food.jpeg",
  ),

 
];
