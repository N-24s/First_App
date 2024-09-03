import 'package:first_app/offers_page.dart';
import 'package:first_app/restaurant_menu_page.dart';
import 'package:first_app/restaurant_offer_page.dart';
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
      home:  OffersPage(),
    );
  }
}
