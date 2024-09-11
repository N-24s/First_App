import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Page"),
      ),
      body: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
          children: [
             Container(width: 200,height: 200,color: Colors.red,),
                     Container(width: 150,height: 150,color: const Color.fromARGB(255, 44, 27, 201),),
          
            Positioned(
              top:160,
              left: 150,
              
              child: Container(
                width: 60,
                height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 23, 207, 17),
                borderRadius: BorderRadius.circular(100)),
              )),
           
          ],
              ),
                       Container(width: 100,height: 200,color: const Color.fromARGB(255, 17, 15, 15),),

        ],
      ),

    ); 
    }
}