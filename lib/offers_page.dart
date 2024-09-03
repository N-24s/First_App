import 'package:first_app/restaurant_menu_page.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restarunts"),
      ),
      body: 
      Column(
        children: [
           Container(
           
child: Image.asset('assets/images/y4.png'),
            ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Image.asset('assets/images/y1.png', width: 50),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Info",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Get deals here"),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildRestaurantCard(context,"Al-Amodi", "Fast food", "4.9", 'assets/images/y1.png'),
                _buildRestaurantCard(context,"Bin-Waber", "Rice", "4.5", 'assets/images/y1.png'),
                _buildRestaurantCard(context,"Al-Sadh", "Checkn", "4.3", 'assets/images/y1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRestaurantCard(BuildContext context,String name, String category, String rating, String imagePath) {
    return ListTile(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>RestaurantMenuPage()),
        );
      },
      leading: Image.asset('$imagePath', width: 50),
      title: Text(name),
      subtitle: Text(category),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orange, size: 16),
          Text(rating),
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
