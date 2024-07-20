import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
 final void Function(int)? onTabChange;
  const NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(16),
      child: GNav(
         onTabChange: (value) => onTabChange!(value),
         hoverColor: const Color.fromARGB(255, 107, 151, 147),
         tabBackgroundColor: Colors.grey.shade300,
         activeColor: Colors.grey[700],
         tabBorderRadius: 24,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         tabActiveBorder: Border.all(color: Colors.white),
         iconSize: 24,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
      
        ]
      ),
    );
  }
}