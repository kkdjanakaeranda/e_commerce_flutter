
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newecommerce/features/main/screens/cart_screen.dart';
import 'package:newecommerce/features/main/screens/home_screen.dart';
import 'package:newecommerce/features/main/screens/profile_screen.dart';
import 'package:newecommerce/features/main/screens/wish_list_screen.dart';

import 'order_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _index = 0;





  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      const HomeScreen(),
      const WishListScreen(),
      const CartScreen(),
      const OrderScreen(),
      const ProfileScreen(),
    ];


    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: 'Wish List'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'Orders'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Profile'
          ),
        ],
        onTap: ( value ) {
          setState(() {
            _index = value;
          });
        }
      ),
    );
  }
}

