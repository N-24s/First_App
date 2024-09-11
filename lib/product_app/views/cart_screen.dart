import 'package:first_app/product_app/models/product.dart';
import 'package:first_app/product_app/view_model/product_vm.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  late Map<Product ,int>cart1 ;
  //  late int qty ;
    CartScreen({super.key,required this.cart1});


  @override
  State<CartScreen> createState() => _CartScreenState();
  
}


class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
  //  widget.qty=0;
    super.initState();
  }
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
            itemCount: widget.cart1.length,
            itemBuilder: (ctx,index){
             Product product = widget.cart1.keys.elementAt(index);
             int qty = widget.cart1.values.elementAt(index);
               
            // int qty = cart1[product]!;
             
            return Column(
              
              children: [
                Image.asset(product.image_url),
                ListTile(
                  leading:Text(product.name), 
                  
                  subtitle: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.add_circle_outline),
                                   
                             onPressed: () {
                              // print("${widget.qty} //////////////////");
                      //  widget.qty+=1;
                        setState(() {
                     
                   });
                            
                                  }),
                      ),
                                Text("${qty}",softWrap: true,),
                                
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.remove_circle_outline),
                                   
                             onPressed: () {
                              // if (widget.qty ==1)
                                // ProductVm.removeFromCart(product);
                              // widget.qty-=1;                           
                                 setState(() {
                     
                   });
                                             
                                             
                            
                                  }),
                      ),
                  
                    ],
                  ),
                  
                  
                  trailing:                 Text('Quantity: ${qty}\nPrice: \$${product.price *qty}'),
        
                        ),

                        ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, '/order', arguments: ProductVm.cartItems);

                        }, child: const Text("Checkout"))
              ],
            );
            
          })),
      ));
 
  }
}

