import 'package:get/get.dart';
import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/models/order.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';

class CartController extends GetxController {
  RxInt cartItems = 0.obs;
  RxList<dynamic> orders = [].obs;

  void addToCart(Menu menu, Restaurant restaurant, int quantity) {
    int existingOrderIndex = orders.indexWhere(
      (order) => order.food.name == menu.name,
    );

    if (existingOrderIndex != -1) {
      orders[existingOrderIndex].quantity += quantity;
    } else {
      orders.add(Order(menu, quantity, restaurant));
    }
    cartItems.value += quantity;
    update();
  }

  void increaseOrder(Order order) {
    order.quantity += 1;
    cartItems += 1;
    orders.refresh();
    update();
  }

  void decreaseOrder(Order order) {
    order.quantity -= 1;
    if(order.quantity <1)
    {
      orders.remove(order);
    }
    cartItems -= 1;
    orders.refresh();
    update();
  }
}
