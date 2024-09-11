import 'package:another_flutter_splash_screen/splashs/fade_In_splash.dart';
import 'package:first_app/product_app/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 5),(){
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.fadeIn(
                    duration: const Duration(seconds: 5),
                    backgroundColor: Colors.white,
      
          childWidget: Container(
           
         height: 100,
         width: 200,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
         
         child: Image.asset("assets/images/y3.png"),
                    ),
           nextScreen:  HomeScreen(),
                    
                  ),
      ),
    );
  }
}