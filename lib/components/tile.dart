import 'package:brew_buddy/services/model.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onTap;
  final Widget icon;
  const Tile({super.key,  required this.coffee, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.grey[200],
      borderRadius:   BorderRadius.circular(12)
      ),
    margin: const EdgeInsets.only(bottom: 10),
   child: ListTile(
    title: Text(coffee.name),
    subtitle: Text(coffee.price),
    leading: Image.asset(coffee.imagePath),
    trailing: IconButton( onPressed: onTap, icon: icon),
   ),
    );
  }
}