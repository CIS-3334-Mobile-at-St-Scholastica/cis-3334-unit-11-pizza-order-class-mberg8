

class Pizza {

  int _size;
  double price;
  String toppings;
  String description;

  // ignore: non_constant_identifier_names
  final PIZZA_PRICES =[7.99, 9.999, 12.999, 14.99];
  // ignore: non_constant_identifier_names
  final PIZZA_SIZES =["small", "Medium", "Large","X-Large"];

  Pizza(this._size, this.toppings){
    price = PIZZA_PRICES[_size];
    description = "$_size$toppings, Pizza";
  }

  @override
  String toString()=> (PIZZA_SIZES[_size] + toppings + "Pizza");
}