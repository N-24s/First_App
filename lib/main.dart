import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:first_app/Tabs/tabbar.dart';
import 'package:first_app/chats/whatssapp_chats.dart';
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
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      useMaterial3: false,
    ),
      home: PackagesScreen(),
    );
  }
}
