import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/views/screens/cart_page.dart';
import 'package:food_app/views/screens/like_page.dart';
import 'package:food_app/views/screens/product_home_page.dart';

import 'offer_page.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

late TabController tabController;
int initialTabIndex = 1;

class _home_pageState extends State<home_page> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.redAccent,
        controller: tabController,
        initialActiveIndex: initialTabIndex,
        items: [
          TabItem(icon: Icons.local_offer_outlined, title: 'Like'),
          TabItem(icon: Icons.home, title: 'home_page'),
          TabItem(icon: Icons.shopping_cart, title: 'Cart')
        ],
        onTap: (int i) {
          setState(() {
            initialTabIndex = i;
          });
        },
      ),
      body: IndexedStack(
        index: initialTabIndex,
        children: [
          offer_page(),
          product_home_page_page(),
          cart_page(),
        ],
      ),
    );
  }
}
