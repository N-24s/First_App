import 'package:first_app/navigator/models/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Product product=ModalRoute.of(context)!.settings.arguments as Product;
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Details Screen"),
      ),
      body: Column(
        children: [
          Image.asset(product.image_url),
          SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: ListView(
              children: [
                for(int i=0;i<10;i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 20,
                    width: 60,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color: Colors.grey),
                    child: Image.asset('${product.image_url}',fit: BoxFit.contain,),
                  ),
                )
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
           Text('${product.name} ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
           Text('${product.brand} ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           Text('${product.price} ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
           
            
          ),
             Text('${product.category}'),


        ],
        
      ),
      floatingActionButton:              FloatingActionButton(
              onPressed: (){},
             
             child: Icon(Icons.add_shopping_cart),),

    );
  }
}