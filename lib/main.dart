import 'package:flutter/material.dart';
import 'package:food_app/providers/CartProvider.dart';
import 'package:food_app/providers/ThemeProvider.dart';
import 'package:food_app/res/global.dart';
import 'package:food_app/views/screens/bile_page.dart';
import 'package:food_app/views/screens/home_page.dart';
import 'package:food_app/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prep = await SharedPreferences.getInstance();
  global.data = prep.getBool('data') ?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider()),
        ChangeNotifierProvider<CartProvider>(
            create: (context) => CartProvider()),
      ],
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.red, primary: Colors.redAccent)),
        darkTheme: ThemeData.dark(),
        themeMode: (Provider.of<ThemeProvider>(context).isdrk)
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash_screen',
        routes: {
          '/': (context) => home_page(),
          'splash_screen': (context) => splash_screen(),
          'Offer_Page': (context) => offer_page(),
        },
      ),
    ),
  );
}
