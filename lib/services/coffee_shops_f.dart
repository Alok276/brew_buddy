

import 'package:brew_buddy/services/model.dart';
import 'package:flutter/material.dart';

class CoffeeShopsF extends ChangeNotifier{


  //coffee for sale list
  final List<Coffee> shopItems = [
   const Coffee(
          name: "Cappuccino", 
          price: "100", 
          imagePath: "assets/cappuccino.png"),
   
   const Coffee(
          name: "Latte", 
          price: "140", 
          imagePath: "assets/coffee-latte.png"),

   const Coffee(
          name: "Cold Brew", 
          price: "180", 
          imagePath: "assets/cold-brew.png"),

   const Coffee(
          name: "Espresso", 
          price: "120", 
          imagePath: "assets/expresso.png"),
  
   const Coffee(
          name: "Iced Coffee", 
          price: "160", 
          imagePath: "assets/ice-coffee.png"),
   
   const Coffee(
          name: "Latte Art", 
          price: "220", 
          imagePath: "assets/latte-art.png"),
   
   const Coffee(
          name: "Matcha Latte", 
          price: "130", 
          imagePath: "assets/matcha-latte.png"),
  
   const Coffee(
          name: "Mocha", 
          price: "250", 
          imagePath: "assets/mocha.png")
  ];

  //user cart
  List<Coffee> userCart  = [];

  //user favourite
  List<Coffee> favourite = [];


  //get the coffee's list
  List<Coffee> get coffeeShopItems => shopItems;


  //get user cart
    List<Coffee> get userCartItems => userCart;

  //add items to the cart

  void addItemsToCart(Coffee coffee){
    userCart.add(coffee);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemsFromCart(Coffee coffee){
    userCart.remove(coffee);
    notifyListeners();
  }

  
  
}