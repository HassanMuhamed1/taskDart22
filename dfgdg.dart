class Coffee{
  String name;
  double price;
  String size;
  List<String>addons;
  Coffee(this.name, this. price ,this.size , this.addons);
}

class Order{
  int orderNumber;
  String status;
  List<Coffee>coffees;
  double price;
 Order(this.orderNumber , this.price , this.status , this.coffees);
}

class OrderMangement{
  Map<int,Order> Orders={};
  void addOrder(Order order){
    Orders[order.orderNumber] = order;
  }
  List<Order> statusOrder(String status){
    return Orders.values.where((order) => order.status == status).toList();
  }
  double orderSummary() {
  return Orders.values.fold(0.0, (double total, Order order) {
    return total + order.price;
  });
}

}
void main(){


}
