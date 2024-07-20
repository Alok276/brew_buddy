import 'package:brew_buddy/components/tile.dart';
import 'package:brew_buddy/services/coffee_shops_f.dart';
import 'package:brew_buddy/services/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({super.key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> {

  
  //adding items to cart
  void addtoCart(Coffee coffee){

    Provider.of<CoffeeShopsF>(context, listen: false).addItemsToCart(coffee);

    //notify user its been added
    showDialog(context: context, builder: (context)=> const AlertDialog(
      title: Text("Successfully added to the cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<CoffeeShopsF>(
        
        builder: (context, value , child)=> SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
                  
            children: [
             const  Text("Which coffee's you would like to have?",
             style: TextStyle(fontSize: 18, color: Colors.brown),
             ),

             //some space
            const  SizedBox(height: 10,),
             
             Expanded(
               child: ListView.builder(
                 itemCount: value.coffeeShopItems.length,
                 itemBuilder: (BuildContext context, int index) {
                   
                   Coffee eachCoffee = value.coffeeShopItems[index];
                   
                   return Tile(coffee: eachCoffee,
                   onTap: () => addtoCart(eachCoffee),
                   icon: const Icon(Icons.add),
                   );
                   
                 },
               ),
             ),
            ],
                  ),
          ),
        ),  );
  }
}