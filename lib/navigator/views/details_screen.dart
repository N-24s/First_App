import 'package:first_app/navigator/models/product.dart';
import 'package:first_app/navigator/view_model/product_vm.dart';
import 'package:first_app/navigator/views/cart_screen.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatefulWidget {
  Product product;
 DetailsScreen({super.key,required this.product});
 
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
late String imgPath;
 
@override
  void initState() {
  //  product =ModalRoute.of(context)!.settings.arguments as Product;
    imgPath=widget.product.image_url;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  
    // ProductVm productvm=ProductVm();
    return  Scaffold(
      appBar: AppBar(
        title:  const Text("Details Screen"),
      ),
      body: Column(
        children: [
           Image.asset(imgPath),
                   const SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: ProductVm.images.length,
              itemBuilder: (context, index) {
                return     
                InkWell(
                  onTap: (){
                    imgPath=ProductVm.images[index];
                    setState(() {
                      
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 60,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.grey),
                      child: Image.asset('${ProductVm.images[index]}',fit: BoxFit.contain,),
                    ),
                  ),
                );
           
           
              },
              scrollDirection: Axis.horizontal,
              
              
            ),
          ),
           Text('${widget.product.name} ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
           Text('${widget.product.brand} ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           Text('${widget.product.price} ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
           
            
          ),
             Text('${widget.product.category}'),


        ],
        
      ),
      floatingActionButton:FloatingActionButton(
              onPressed: (){
                ProductVm.addToCart(product:widget.product,qty:1);
                print("ssssssssssssssssss${ProductVm.cartItems.keys.first.name}");
                // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CartScreen(cart1: ProductVm.cartItems)));


              },
             
             child: const Icon(Icons.add_shopping_cart),),

    );
  }
}