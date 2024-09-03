import 'package:flutter/material.dart';

class RestaurantOfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Al-Amodi"),
      ),
      
      body:Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/y4.png'),
                  fit: BoxFit.cover,
                ),
              ),
             
            ),
          ),          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
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
             decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
             ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('assets/images/y1.png', width: 100),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Al-Amodi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Fast food"),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Text("4.9"),
                          Text(" (200+ Ratings)"),
                        ],
                      ),
                    ],
                  ),
              
                ],
              ),
            ),
                SizedBox(height: 16),
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12.0),
            ),
                 
                      child: Text(
                        "30% OFF",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
          // Container(
            

           
          //   padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //     children: [
          //                       Image.asset('assets/images/y1.png', width: 100),

          //       Column(
          //         children: [
          //           SizedBox(height: 16),
          //           Text(
          //             "Al-Amodi",
          //             style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          //           ),
          //           Text("Fast food"),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Icon(Icons.star, color: Colors.orange, size: 16),
          //               Text("4.8"),
          //               Text(" (200+ Ratings)"),
          //             ],
          //           ),
          //           SizedBox(height: 16),
          //           Container(
          //                               color: Colors.orange,
          //       width: 100,
                 
          //             padding: EdgeInsets.all(8.0),
          //             child: Text(
          //               "30% OFF",
          //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
       
       
          Expanded(
            
            
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: Container(
                          height: 70,
                        decoration: BoxDecoration(
              color: Colors.orange.shade100,
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
    
    ))))]));
  }
}
