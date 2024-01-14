import 'package:get/get.dart';
import 'package:tryfooddeliveryapp/models/menu.dart';
import 'package:tryfooddeliveryapp/models/order.dart';
import 'package:tryfooddeliveryapp/models/restaurant.dart';

class CartController extends GetxController {
  RxInt cartItems = 0.obs;
  RxInt subTotalAmount = 0.obs;
  RxInt taxAmount = 0.obs;
  RxInt totalAmount = 0.obs;
  RxInt discountAmount = 0.obs;
  RxList<dynamic> orders = [].obs;
  RxInt tax = 13.obs;

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
    calculateSummary();
    update();
  }

  void calculateSummary() {
    subTotalAmount.value = 0;

    for (var order in orders) {
      int product = order.food.price * order.quantity;
      subTotalAmount.value += product;
    }
    taxAmount.value = (tax.value / 100 * subTotalAmount.value).toInt();
    totalAmount.value =
        subTotalAmount.value + taxAmount.value - discountAmount.value;
  }

  void increaseOrder(Order order) {
    order.quantity += 1;
    cartItems += 1;
    calculateSummary();
    orders.refresh();
    update();
  }

  void decreaseOrder(Order order) {
    order.quantity -= 1;
    if (order.quantity < 1) {
      orders.remove(order);
    }
    cartItems -= 1;
    calculateSummary();
    orders.refresh();
    update();
  }
}
