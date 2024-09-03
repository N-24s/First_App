import 'package:flutter/material.dart';

class RestaurantOfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Al-Amodi"),
      ),
      
      body: Column(
        children: [
           Container(
           
child: Image.asset('assets/images/y4.png'),
            ),
          Container(
              decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))
                        
                        ),

           
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset('assets/images/y1.png', width: 100),
                SizedBox(height: 16),
                Text(
                  "Al-Amodi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text("Fast food"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Text("4.8"),
                    Text(" (200+ Ratings)"),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                                    color: Colors.orange.shade100,

             
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "30% OFF",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            
            
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: Container(
                          height: 70,
                        decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5)
                        
                        ),
                        child: ListTile(
                  leading: Image.asset('assets/images/y1.png', width: 50),
                  title: Text("Pizza"),
                  subtitle: Text(" description "),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("\$5.55"),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),

                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
