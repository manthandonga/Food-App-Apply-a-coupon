import 'package:flutter/material.dart';
import 'package:food_app/helpers/db_heper.dart';
import 'package:food_app/res/global.dart';
import 'package:food_app/res/offers_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery
        .of(context)
        .size
        .height;
    double _width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: _height * 0.17),
          Image.asset("assets/images/splesh.png"),
          SizedBox(height: _height * 0.2),
          SizedBox(
            height: _height * 0.06,
            width: _width * 0.7,
            child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences pres =
                  await SharedPreferences.getInstance();
                  print(global.data);
                  if (global.data == false) {
                    global.products.forEach((element) {
                      DBHleper.dbHleper.inserRecode(data: element);
                    }
                    );
                    offer.offersproducts.forEach((element) {
                      DBHleper.dbHleper.inserOfferRecode(data: element);
                    });


                    Navigator.of(context).pushReplacementNamed('/');
                    pres.setBool('data', true);
                  } else {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
                },
                child: Text(
                  "Let's Explore",
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white))),
          )
        ],
      ),
    );
  }
}
