import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

import 'cartItem.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    // Burgers
    Food(
        name: "Cheese Burger",
        description: "Fully loaded cheese burger that satisfies the craving of not usual time ones and have hint of bacon and onion",
        ImagePath: "lib/images/burgers/Cheese.jpg",
        price: 5.99,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Extra Mayo', price: 1.50),
          Addon(name: 'Extra Bacon', price: 2.00)
        ]
    ),
    Food(
        name: "Chicken Burger",
        description: "Fully loaded chicken burger that satisfies the craving of not usual time ones and have hint of bacon and onion",
        ImagePath: "lib/images/burgers/chicken.jpg",
        price: 4.00,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: 'Extra Chicken', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.90),
        ]
    ),
    Food(
        name: "Beef Burger",
        description: "Fully loaded beef burger that satisfies the craving of not usual time ones and have hint of bacon and onion",
        ImagePath: "lib/images/burgers/meat.jpg",
        price: 6.99,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: 'Extra Beef', price: 2.99),
          Addon(name: 'Extra Onion', price: 0.50),
          Addon(name: 'Extra Sauce', price: 1.00)
        ]
    ),
    Food(
        name: "Aloha Burger",
        description: "Fully loaded Aloha burger that satisfies the craving of not usual time ones and have hint of bacon and onion",
        ImagePath: "lib/images/burgers/simple.jpg",
        price: 3.99,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: 'Extra Ketchup', price: 0.99),
          Addon(name: 'Extra Special Sauce', price: 0.50),
        ]
    ),
    Food(
        name: "Vegan Burger",
        description: "Fully loaded cheese burger that satisfies the craving of not usual time ones and have hint of bacon and onion",
        ImagePath: "lib/images/burgers/vegan.jpg",
        price: 4.99,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: 'Extra Veggie', price: 1.99),
          Addon(name: 'Extra Sauce', price: 1.50),
        ]
    ),
    // Desserts
    Food(
        name: "Biscuit Cake",
        description: "A full creamy cake that delights your soul that it craves for even more when you are full. But you never get satisfied of eating enough of it",
        ImagePath: "lib/images/desserts/biscuit.jpg",
        price: 5.99,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: 'Extra Biscuit', price: 2.00),
          Addon(name: 'Extra Cream', price: 1.50),
        ]
    ),
    Food(
        name: "Creamy Cake",
        description: "A full creamy cake that delights your soul that it craves for even more when you are full. But you never get satisfied of eating enough of it",
        ImagePath: "lib/images/desserts/cake.jpg",
        price: 2.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: 'Extra Toppings', price: 0.99),
          Addon(name: 'Extra Cream', price: 1.50),
        ]
    ),
    Food(
        name: "Velvet Cake",
        description: "A full creamy cake that delights your soul that it craves for even more when you are full. But you never get satisfied of eating enough of it",
        ImagePath: "lib/images/desserts/cake1.jpg",
        price: 5.99,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: 'Extra Sprinkles', price: 0.90),
          Addon(name: 'Extra Cream', price: 1.50),
        ]
    ),
    Food(
        name: "Pudding Cake",
        description: "A full creamy cake that delights your soul that it craves for even more when you are full. But you never get satisfied of eating enough of it",
        ImagePath: "lib/images/desserts/pudding.jpg",
        price: 4.99,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: 'Extra Pudding', price: 2.00),
          Addon(name: 'Extra Cream', price: 1.50),
        ]
    ),
    Food(
        name: "Rolls Cake",
        description: "A full creamy roll cake that delights your soul that it craves for even more when you are full. But you never get satisfied of eating enough of it",
        ImagePath: "lib/images/desserts/rolls.jpg",
        price: 5.99,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: 'Extra Chocolate', price: 2.50),
          Addon(name: 'Extra Cream', price: 1.50),
        ]
    ),
    // Drinks
    Food(
        name: "Pina Colada",
        description: "A drink so soothing and refreshing that it energizes you to work more even in the extreme heat. Also have a hint of mint",
        ImagePath: "lib/images/drinks/1.jpg",
        price: 3.99,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.99),
          Addon(name: 'Extra Mint', price: 2.00),
        ]
    ),
    Food(
        name: "Pink Lady",
        description: "A drink so soothing and refreshing that it energizes you to work more even in the extreme heat. Also have a hint of mint",
        ImagePath: "lib/images/drinks/2.jpg",
        price: 4.50,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.99),
          Addon(name: 'Extra Mint', price: 2.00),
        ]
    ),
    Food(
        name: "Mint Ice",
        description: "A drink so soothing and refreshing that it energizes you to work more even in the extreme heat. Also have a hint of mint",
        ImagePath: "lib/images/drinks/3.jpg",
        price: 5.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.99),
          Addon(name: 'Extra Mint', price: 2.00),
        ]
    ),
    Food(
        name: "Soothing Drink",
        description: "A drink so soothing and refreshing that it energizes you to work more even in the extreme heat. Also have a hint of mint",
        ImagePath: "lib/images/drinks/4.jpg",
        price: 3.99,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.99),
          Addon(name: 'Extra Mint', price: 2.00),
        ]
    ),
    Food(
        name: "The Red One",
        description: "A drink so soothing and refreshing that it energizes you to work more even in the extreme heat. Also have a hint of mint",
        ImagePath: "lib/images/drinks/5.jpg",
        price: 6.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.99),
          Addon(name: 'Extra Mint', price: 2.00),
        ]
    ),
    // Salads
    Food(
        name: "Basel Salad",
        description: "A salad that keeps you energetic and completes all your nutrients and compensates all the deficiencies and keeps you young and healthy",
        ImagePath: "lib/images/salads/basel.jpg",
        price: 4.99,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: 'Extra Basel', price: 2.00),
          Addon(name: 'Extra Veggie', price: 1.50),
        ]
    ),
    Food(
        name: "Greek Salad",
        description: "A salad that keeps you energetic and completes all your nutrients and compensates all the deficiencies and keeps you young and healthy",
        ImagePath: "lib/images/salads/greek.jpg",
        price: 5.99,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: 'Extra Onion', price: 3.00),
          Addon(name: 'Extra Veggie', price: 1.50),
        ]
    ),
    Food(
        name: "Pasta Salad",
        description: "A salad that keeps you energetic and completes all your nutrients and compensates all the deficiencies and keeps you young and healthy",
        ImagePath: "lib/images/salads/pasta.jpg",
        price: 6.99,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: 'Extra Pasta', price: 3.00),
          Addon(name: 'Extra Veggie', price: 1.50),
        ]
    ),
    Food(
        name: "Protein Salad",
        description: "A salad that keeps you energetic and completes all your nutrients and compensates all the deficiencies and keeps you young and healthy",
        ImagePath: "lib/images/salads/protein.jpg",
        price: 7.00,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: 'Extra Chicken', price: 4.00),
          Addon(name: 'Extra Veggie', price: 1.50),
        ]
    ),
    Food(
        name: "Tomato Salad",
        description: "A salad that keeps you energetic and completes all your nutrients and compensates all the deficiencies and keeps you young and healthy",
        ImagePath: "lib/images/salads/tomato.jpg",
        price: 2.99,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: 'Extra Tomatoes', price: 1.00),
          Addon(name: 'Extra Veggie', price: 1.50),
        ]
    ),
    // Sides
    Food(
        name: "French Fries",
        description: "A side item that always help you to quench your hunger when you don't get satisfied with the the main course",
        ImagePath: "lib/images/sides/fries1.jpg",
        price: 4.99,
        category: FoodCategory.Sides,
        availableAddons: [
          Addon(name: 'Extra Spice', price: 1.00),
          Addon(name: 'Extra Fries', price: 2.50),
        ]
    ),
    Food(
        name: " Deep French Fries",
        description: "A side item that always help you to quench your hunger when you don't get satisfied with the the main course",
        ImagePath: "lib/images/sides/fries2.jpg",
        price: 3.99,
        category: FoodCategory.Sides,
        availableAddons: [
          Addon(name: 'Extra Sauce', price: 1.00),
          Addon(name: 'Extra Fries', price: 2.50),
        ]
    ),
    Food(
        name: "Herb Fries",
        description: "A side item that always help you to quench your hunger when you don't get satisfied with the the main course",
        ImagePath: "lib/images/sides/fries3.jpg",
        price: 4.50,
        category: FoodCategory.Sides,
        availableAddons: [
          Addon(name: 'Extra Herb Spice', price: 1.50),
          Addon(name: 'Extra Fries', price: 2.50),
        ]
    ),
    Food(
        name: "Simple Fries",
        description: "A side item that always help you to quench your hunger when you don't get satisfied with the the main course",
        ImagePath: "lib/images/sides/fries4.jpg",
        price: 4.00,
        category: FoodCategory.Sides,
        availableAddons: [
          Addon(name: 'Extra Ketchup', price: 1.00),
          Addon(name: 'Extra Fries', price: 2.50),
        ]
    ),
    Food(
        name: "Steak Fries",
        description: "A side item that always help you to quench your hunger when you don't get satisfied with the the main course",
        ImagePath: "lib/images/sides/steakFries.jpg",
        price: 6.00,
        category: FoodCategory.Sides,
        availableAddons: [
          Addon(name: 'Extra Steak', price: 3.00),
          Addon(name: 'Extra Fries', price: 2.50),
        ]
    )
  ];


List<Food> get menu => _menu;
List<CartItem> get cart => _cart;



final List<CartItem> _cart = [];

void addToCart(Food food, List<Addon> selectedAddons) {

  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    bool isSameFood = item.food == food;

    bool isSameAddon = ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddon;
  });

  if(cartItem != null) {
      cartItem.quantity++;
  } else {
    _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons
        )
    );
  }
  notifyListeners();
}

void removeFromCart(CartItem cartItem) {
  int cartIndex = _cart.indexOf(cartItem);
  if(cartIndex != -1) {
    if(_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
}

double getTotalPrice() {
  double total = 0.0;

  for(CartItem cartItem in _cart) {
    double itemTotal = cartItem.food.price as double;

    for(Addon addon in cartItem.selectedAddons) {
      itemTotal += addon.price;
    }
    total += itemTotal * cartItem.quantity;
  }
  return total;
}

int getTotalItemCount() {
  int totalItemCount = 0;

  for(CartItem cartItem in _cart) {
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}

void clearCart() {
  _cart.clear();
  notifyListeners();
}


void updateDeliveryAddress(String newAddress) {
  _deliveryAddress = newAddress;
  notifyListeners();
}

  String _deliveryAddress = "Al-Fareed Garden, Phase 2";
  String get deliveryAddress => _deliveryAddress;


String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  String formatDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formatDate);
  receipt.writeln();
  receipt.writeln('----------------');

  for(final cartItem in _cart) {
    receipt.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
    );
    if(cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln('----------------');
  receipt.writeln();
  receipt.writeln('Total Items: ${getTotalItemCount()}');
  receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
  receipt.writeln();
  receipt.writeln('----------------');
  receipt.writeln();
  receipt.writeln('Delivering to:   $deliveryAddress');

  return receipt.toString();
}

String _formatPrice(double price) {
  return '\$ ${price.toStringAsFixed(2)}';
}

String _formatAddons(List<Addon> addons) {
  return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)}")
      .join(", ");
}

}