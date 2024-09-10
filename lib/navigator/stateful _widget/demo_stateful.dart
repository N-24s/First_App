import 'package:flutter/material.dart';

class DemoStatefulScreen extends StatefulWidget {
  const DemoStatefulScreen({super.key});

  @override
  DemoStateful createState() => DemoStateful();
}


int x=0;
class DemoStateful extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        setState(() {
          
        });
      },
      
      child: Icon(Icons.shopping_cart),),
      body: Center(
        child: Text(
          "$x",
          style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}