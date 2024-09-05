import 'package:first_app/restaurant/restaurant_menu_page.dart';
import 'package:flutter/material.dart';

class buildRestaurantCard extends StatelessWidget {
    late String rating;
    late String imagePath;
  late  String  name;
  late String category ;
   buildRestaurantCard({super.key, required  this.name, required  this.imagePath,required  this.rating,required  this.category,});
  
 

  @override
  Widget build(BuildContext context) {
  
    return ListTile(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>RestaurantMenuPage()),
        );
      },
      leading: Image.asset('$imagePath', width: 50),
      title: Text(name!),
      subtitle: Text(category!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orange, size: 16),
          Text(rating!),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
            
            },
          ),
        ],
      ),
    );
  }
}

