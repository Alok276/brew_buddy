import 'package:brew_buddy/components/const.dart';
import 'package:brew_buddy/components/navbar.dart';
import 'package:brew_buddy/screens/cart.dart';
import 'package:brew_buddy/screens/coffee_shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<HomePage> {

  //nav bar Navigation
  // ignore: unused_field
  int _selectedIndex = 0;

  void navBarIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages in the nav bar
  // ignore: unused_field
  final List<Widget> _pages = [
   const CoffeeShop(),
  const  Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: backgroundColor,
       
       body: _pages[_selectedIndex],
    
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navBarIndex(index),
      ),
    );
  }
}