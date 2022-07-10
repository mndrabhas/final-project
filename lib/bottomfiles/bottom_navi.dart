import 'package:flutter/material.dart';
import 'package:project/bottomfiles/cart.dart';

import 'package:project/bottomfiles/offers.dart';
import 'package:project/bottomfiles/profile.dart';

class bottom_navi extends StatefulWidget {
  bottom_navi({Key? key}) : super(key: key);

  @override
  State<bottom_navi> createState() => _bottom_naviState();
}

class _bottom_naviState extends State<bottom_navi> {
  int _controller = 0;
  List _children = [cart(), offers(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_controller],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade300,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            _controller = index;
          });
        },
        currentIndex: _controller,
        items: [
          BottomNavigationBarItem(
              label: 'cart', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              label: 'offers', icon: Icon(Icons.local_offer_outlined)),
          BottomNavigationBarItem(label: 'profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
