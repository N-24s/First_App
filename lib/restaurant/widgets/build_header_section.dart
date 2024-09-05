import 'package:flutter/material.dart';

class buildHeaderSection extends StatelessWidget {
  const buildHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
         top: 0,
         left: 0,
         right: 0,
         child: Container(
           height: 250,
           decoration: const BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/images/y4.png'),
               fit: BoxFit.cover,
             ),
           ),
          
         ),
       );
  }
}
