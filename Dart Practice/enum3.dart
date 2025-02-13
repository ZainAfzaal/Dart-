void main() {
  Order order1 = Order(234, "t-Shirt", OrderStatus.Delivered);
  Order order2 = Order(123, "Shoes", OrderStatus.Processing);
  Order order3 = Order(2222, "Bag", OrderStatus.Placed);
  Order order4 = Order(345, "Books", OrderStatus.Shipped);
  Order order5 = Order(890, "Laptop", OrderStatus.Cancelled);

  List<Order> orders = [order1, order2, order3, order4, order5];

  for (var order in orders) {
    order.displayOrderDetails();
    order.checkDelivery();
    print("---------------------");
  }

  order1.orderNotDelivered(orders);
}

enum OrderStatus { Placed, Processing, Shipped, Delivered, Cancelled }

class Order {
  int orderId;
  String productName;
  OrderStatus status;

  Order(this.orderId, this.productName, this.status);

  void displayOrderDetails() {
    print("OrderId: $orderId");
    print("Product-Name: $productName");
    print("Current-Status: ${status.name}");
  }

  void checkDelivery() {
    switch (status) {
      case OrderStatus.Placed:
        print("Your Order is still in Progress");
        break;
      case OrderStatus.Processing:
        print("Your Order is still in Progress");
        break;
      case OrderStatus.Shipped:
        print("Your Order is still in Progress");
        break;
      case OrderStatus.Delivered:
        print("Your Order has been delivered, Enjoy!");
        break;
      case OrderStatus.Cancelled:
        print("Your order was Cancelled");
        break;
    }
  }

  void orderNotDelivered(List<Order> orders) {
    print("Pending Orders");
    for (var order in orders) {
      if (order.status == OrderStatus.Placed ||
          order.status == OrderStatus.Processing ||
          order.status == OrderStatus.Shipped) {
        print(
            'Order ID: ${order.orderId}, --- Product: ${order.productName}, --- Status: ${order.status.name}');
      }
    }
  }
}
