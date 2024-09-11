import 'package:first_app/product_app/models/product.dart';
import 'package:first_app/product_app/view_model/product_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class FavouriteScreen extends StatelessWidget {
    late Map<Product ,int>favourite ;

   FavouriteScreen({super.key,required this.favourite});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(top: 10,right: 10),
            child: Icon(
              Icons.shopping_cart
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,right: 10),
            child: Icon(
              Icons.settings
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,right: 10),
            child: Icon(
              Icons.notification_add
            ),
          ),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child:ListView.builder(
            itemCount: favourite.length,
            itemBuilder: (ctx,index){
             Product product = favourite.keys.elementAt(index);
                int qty = favourite.values.elementAt(index);
               
            // int qty = cart1[product]!;
             
            return Column(
              
              children: [
                Image.asset(product.image_url),
                ListTile(
                  leading:Text(product.name), 
                  
               
                  
                  
                  trailing: Text('Quantity: $qty\nPrice: \$${product.price * qty}'),
        
                        ),
              ],
            );
            
          })),
      ));
 
  }
}