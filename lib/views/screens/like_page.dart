import 'package:flutter/material.dart';
import 'package:food_app/providers/CartProvider.dart';
import 'package:provider/provider.dart';

import '../../modals/productModal.dart';
import '../../providers/ThemeProvider.dart';

class like_page extends StatefulWidget {
  const like_page({Key? key}) : super(key: key);

  @override
  State<like_page> createState() => _like_pageState();
}

class _like_pageState extends State<like_page> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Like page",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('❤',style: TextStyle(fontSize: 50),),
          )
        ],
      ),
    );
  }
}
