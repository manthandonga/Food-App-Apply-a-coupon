import 'package:flutter/material.dart';
import 'package:food_app/providers/CartProvider.dart';
import 'package:provider/provider.dart';

import '../../modals/productModal.dart';
import '../../providers/ThemeProvider.dart';

class offer_page extends StatefulWidget {
  const offer_page({Key? key}) : super(key: key);

  @override
  State<offer_page> createState() => _offer_pageState();
}

class _offer_pageState extends State<offer_page> {
  offer() {
    // num offerprice = 500;
    if (Provider.of<CartProvider>(context).totalPrice >= 500) {
      return IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Offers",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          // if (Provider.of<CartProvider>(context).totalPrice >= 500)
          //   IconButton(
          //     icon: Icon(
          //       Icons.add,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {
          //       // Provider.of<CartProvider>(context).totalPrice -= 50;
          //     },
          //   )
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Expanded(
          //     flex: 12,
          //     child:
          //     ListView.builder(
          //         itemCount: Provider.of<CartProvider>(context).allcart.length,
          //         itemBuilder: (contecxt, i) {
          //           Product product =
          //               Provider.of<CartProvider>(context).allcart[i];
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Card(
          //               elevation: 5,
          //               child: Container(
          //                 height: _height * 0.25,
          //                 width: _width,
          //                 decoration: BoxDecoration(
          //                     color: Colors.grey,
          //                     border: Border.all(
          //                         color: Colors.black,
          //                         style: BorderStyle.solid,
          //                         width: 5),
          //                     borderRadius: BorderRadius.circular(10)),
          //                 child: Row(
          //                   children: [
          //                     Expanded(
          //                         flex: 5,
          //                         child: Column(
          //                           children: [
          //                             Image.asset(
          //                               product.image,
          //                               height: _height * 0.15,
          //                             ),
          //                             SizedBox(height: _height * 0.01),
          //                             Text(
          //                               "${product.name}",
          //                               style: TextStyle(
          //                                   fontWeight: FontWeight.bold,
          //                                   fontSize: 20),
          //                             )
          //                           ],
          //                         )),
          //                     Expanded(
          //                         flex: 6,
          //                         child: Column(
          //                           mainAxisAlignment:
          //                               MainAxisAlignment.spaceAround,
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 InkWell(
          //                                     onTap: () {
          //                                       Provider.of<CartProvider>(
          //                                               context,
          //                                               listen: false)
          //                                           .Countpluse(
          //                                               product: product);
          //                                     },
          //                                     child: Container(
          //                                       height: 40,
          //                                       width: 40,
          //                                       decoration: BoxDecoration(
          //                                           color: Colors.white,
          //                                           borderRadius:
          //                                               BorderRadius.circular(
          //                                                   5),
          //                                           border: Border.all(
          //                                               color: Colors.black,
          //                                               width: 2)),
          //                                       alignment: Alignment.center,
          //                                       child: Text(
          //                                         "+",
          //                                         style:
          //                                             TextStyle(fontSize: 30),
          //                                       ),
          //                                     )),
          //                                 SizedBox(width: _width * 0.01),
          //                                 Text(
          //                                   "${product.quantity}",
          //                                   style: TextStyle(fontSize: 20),
          //                                 ),
          //                                 SizedBox(width: _width * 0.01),
          //                                 InkWell(
          //                                   onTap: () {
          //                                     Provider.of<CartProvider>(context,
          //                                             listen: false)
          //                                         .CountdecrementAndRemove(
          //                                             product: product);
          //                                   },
          //                                   child: Container(
          //                                     height: 40,
          //                                     width: 40,
          //                                     decoration: BoxDecoration(
          //                                         color: Colors.white,
          //                                         borderRadius:
          //                                             BorderRadius.circular(5),
          //                                         border: Border.all(
          //                                             color: Colors.black,
          //                                             width: 2)),
          //                                     alignment: Alignment.center,
          //                                     child: Text(
          //                                       "-",
          //                                       style: TextStyle(fontSize: 30),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 IconButton(
          //                                     onPressed: () {
          //                                       Provider.of<CartProvider>(
          //                                               context,
          //                                               listen: false)
          //                                           .RemoveFromCart(
          //                                               product: product);
          //                                     },
          //                                     icon: Icon(
          //                                       Icons.delete,
          //                                       color: Colors.redAccent,
          //                                     ))
          //                               ],
          //                             ),
          //                             Text(
          //                               "Price : ${product.price}",
          //                               style: TextStyle(fontSize: 20),
          //                             )
          //                           ],
          //                         ))
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           );
          //         }),
          //     // ListView.builder(
          //     //     itemCount: Provider.of<CartProvider>(context).allcart.length,
          //     //     itemBuilder: (contecxt, i) {
          //     //       Product product =
          //     //           Provider.of<CartProvider>(context).allcart[i];
          //     //       return Padding(
          //     //         padding: const EdgeInsets.all(8.0),
          //     //         child: Card(
          //     //           elevation: 5,
          //     //           child: Container(
          //     //             height: _height * 0.25,
          //     //             width: _width,
          //     //             decoration: BoxDecoration(
          //     //                 color: Colors.grey,
          //     //                 border: Border.all(
          //     //                     color: Colors.black,
          //     //                     style: BorderStyle.solid,
          //     //                     width: 5),
          //     //                 borderRadius: BorderRadius.circular(10)),
          //     //             child: Row(
          //     //               children: [
          //     //                 Expanded(
          //     //                     flex: 5,
          //     //                     child: Column(
          //     //                       children: [
          //     //                         Image.asset(
          //     //                           product.image,
          //     //                           height: _height * 0.15,
          //     //                         ),
          //     //                         SizedBox(height: _height * 0.01),
          //     //                         Text(
          //     //                           "${product.name}",
          //     //                           style: TextStyle(
          //     //                               fontWeight: FontWeight.bold,
          //     //                               fontSize: 20),
          //     //                         )
          //     //                       ],
          //     //                     )),
          //     //                 Expanded(
          //     //                     flex: 6,
          //     //                     child: Column(
          //     //                       mainAxisAlignment:
          //     //                           MainAxisAlignment.spaceAround,
          //     //                       children: [
          //     //                         Row(
          //     //                           children: [
          //     //                             InkWell(
          //     //                                 onTap: () {
          //     //                                   Provider.of<CartProvider>(
          //     //                                           context,
          //     //                                           listen: false)
          //     //                                       .Countpluse(
          //     //                                           product: product);
          //     //                                 },
          //     //                                 child: Container(
          //     //                                   height: 40,
          //     //                                   width: 40,
          //     //                                   decoration: BoxDecoration(
          //     //                                       color: Colors.white,
          //     //                                       borderRadius:
          //     //                                           BorderRadius.circular(
          //     //                                               5),
          //     //                                       border: Border.all(
          //     //                                           color: Colors.black,
          //     //                                           width: 2)),
          //     //                                   alignment: Alignment.center,
          //     //                                   child: Text(
          //     //                                     "+",
          //     //                                     style:
          //     //                                         TextStyle(fontSize: 30),
          //     //                                   ),
          //     //                                 )),
          //     //                             SizedBox(width: _width * 0.01),
          //     //                             Text(
          //     //                               "${product.quantity}",
          //     //                               style: TextStyle(fontSize: 20),
          //     //                             ),
          //     //                             SizedBox(width: _width * 0.01),
          //     //                             InkWell(
          //     //                               onTap: () {
          //     //                                 Provider.of<CartProvider>(context,
          //     //                                         listen: false)
          //     //                                     .CountdecrementAndRemove(
          //     //                                         product: product);
          //     //                               },
          //     //                               child: Container(
          //     //                                 height: 40,
          //     //                                 width: 40,
          //     //                                 decoration: BoxDecoration(
          //     //                                     color: Colors.white,
          //     //                                     borderRadius:
          //     //                                         BorderRadius.circular(5),
          //     //                                     border: Border.all(
          //     //                                         color: Colors.black,
          //     //                                         width: 2)),
          //     //                                 alignment: Alignment.center,
          //     //                                 child: Text(
          //     //                                   "-",
          //     //                                   style: TextStyle(fontSize: 30),
          //     //                                 ),
          //     //                               ),
          //     //                             ),
          //     //                             IconButton(
          //     //                                 onPressed: () {
          //     //                                   Provider.of<CartProvider>(
          //     //                                           context,
          //     //                                           listen: false)
          //     //                                       .RemoveFromCart(
          //     //                                           product: product);
          //     //                                 },
          //     //                                 icon: Icon(
          //     //                                   Icons.delete,
          //     //                                   color: Colors.redAccent,
          //     //                                 ))
          //     //                           ],
          //     //                         ),
          //     //                         Text(
          //     //                           "Price : ${product.price}",
          //     //                           style: TextStyle(fontSize: 20),
          //     //                         )
          //     //                       ],
          //     //                     ))
          //     //               ],
          //     //             ),
          //     //           ),
          //     //         ),
          //     //       );
          //     //     }),
          // ),

          Expanded(
              flex: 12,
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('Offer_Page');
                      },
                      child: Container(
                        color: Colors.redAccent,
                        child: Card(
                          child: Image(
                              image: AssetImage('assets/images/50%off.jpg')),
                        ),
                      ),
                    ),

                  ],
                ),
              )),

          // Expanded(
          //     flex: 3,
          //     child: Container(
          //       width: _width,
          //       color: Colors.redAccent.shade100,
          //       child: Column(
          //         mainAxisSize: MainAxisSize.max,
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           // SizedBox(height: _height * 0.02),
          //           Text(
          //             "Total Product : ${Provider.of<CartProvider>(context).allProduct}",
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white),
          //           ),
          //           // SizedBox(height: _height * 0.05),
          //           Text(
          //             "Total Price : ${Provider.of<CartProvider>(context).totalPrice}",
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white),
          //           ),
          //           Text(
          //             "Total offer price : ${Provider.of<CartProvider>(context).offerPrice}",
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white),
          //           ),
          //         ],
          //       ),
          //     )),
        ],
      ),
    );
  }
}
