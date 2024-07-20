import 'package:brew_buddy/components/tile.dart';
import 'package:brew_buddy/services/coffee_shops_f.dart';
import 'package:brew_buddy/services/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  //delete from the cart
  void removeItemFromCart(Coffee coffee){
    Provider.of<CoffeeShopsF>(context, listen: false).removeItemsFromCart(coffee);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShopsF>(
        
        builder: (context, value , child)=> SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                  
            children: [
             const  Text("Your Cart",
             style: TextStyle(fontSize: 18, color: Colors.brown),
             ),
             const SizedBox(height: 10,),
             
             Expanded(
               child: ListView.builder(
                 itemCount: value.userCart.length,
                 itemBuilder: (BuildContext context, int index) {
                   
                   Coffee eachCoffee = value.userCart[index];
                   
                   return Tile(coffee: eachCoffee,
                   onTap: () => removeItemFromCart(eachCoffee),
                   icon: const Icon(Icons.delete),
                   );
                   
                 },
               ),
             ),

             //payment button
             Container(
              padding: const EdgeInsets.all(25.0),
              width: double.infinity,
              decoration:  BoxDecoration(color: Colors.brown,
              borderRadius: BorderRadius.circular(12)),
              
              child: const Center(
                child: Text("Pay Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                ),
              ),
             )
            
            ],
                  ),
          ),
        ),  );
  
  }
}