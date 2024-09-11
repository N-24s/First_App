import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:first_app/Tabs/tabbar.dart';
import 'package:first_app/chats/whatssapp_chats.dart';
import 'package:first_app/product_app/utils/app_routes.dart';
import 'package:first_app/product_app/views/cart_screen.dart';
import 'package:first_app/product_app/views/details_screen.dart';
import 'package:first_app/product_app/views/home_screen.dart';
import 'package:first_app/product_app/views/login_screen.dart';
import 'package:first_app/product_app/views/splash_screen.dart';
import 'package:first_app/restaurant/offers_page.dart';
import 'package:first_app/onboarding/onboarding.dart';
import 'package:first_app/packages/packages.dart';
import 'package:first_app/restaurant/restaurant_menu_page.dart';
import 'package:first_app/restaurant/restaurant_offer_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 156, 115, 77)),
      useMaterial3: false,
    ),
      // home:  HomeScreen(),
      initialRoute: "/signup",
      onGenerateRoute: AppRoutes.routeManager,
      // routes: {
      //   "/home":(ctx)=>HomeScreen(),
      //   "/details":(ctx)=> DetailsScreen(),
      //   "/cart":(ctx)=> CartScreen(),
      //  "/splash":(ctx)=>const SplashScreen(), 
      //   "/login":(ctx)=>const LoginScreen(),        
      // },
    );
  }
}
