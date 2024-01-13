import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';

class Order
{
  Menu food;
  Restaurant restaurant;
  int quantity;

  Order(
     this.food,
     this.quantity,
     this.restaurant,
  );
  
}