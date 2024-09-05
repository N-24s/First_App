import 'package:first_app/restaurant/widgets/build_restaurant_card.dart';
import 'package:flutter/material.dart';

class buildBodySection extends StatelessWidget {
  const buildBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
         
          Column(
            children: [
    Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/y1.png', width: 50),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Info",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
              Text("Get deals here"),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    ),
    Expanded(
      child: ListView(
        children: [
          buildRestaurantCard(name: 'Al-Amodi', imagePath: 'assets/images/y1.png', rating: '4.9', category: 'Fast food',),
          buildRestaurantCard(name: 'Al-Sadh', imagePath: 'assets/images/y1.png', rating: '4.9', category: 'Fast food',),
          buildRestaurantCard(name: 'Bin-Waber', imagePath: 'assets/images/y1.png', rating: '4.9', category: 'Fast food',)
        ],
      ),
    ),
            ],
          ),
        
    
    
          ),
        ),
      ),
    );
  }
}


