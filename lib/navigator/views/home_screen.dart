import 'package:first_app/navigator/models/product.dart';
import 'package:first_app/navigator/view_model/product_vm.dart';
import 'package:first_app/navigator/views/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  ProductVm productVm=ProductVm();

  @override
  Widget build(BuildContext context) {
    List<Product> allProducts=productVm.loadAllProducts();
    return  Scaffold(
      appBar: AppBar(title: const Text("Home Screen"),),
      body:ListView.builder(
        itemCount: allProducts.length,
        itemBuilder: (ctx,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx){
                return DetailsScreen();
              },
              settings: RouteSettings(arguments: allProducts[index])
              ));
            },
            child: Card(
              
              color: Colors.grey,
              child: Column(
                children: [
                Image.asset("${allProducts[index].image_url}"),
                ListTile(
                  title: Text("${allProducts[index].name}"),
                  trailing: Text("${allProducts[index].price}"),
                    ),
                  
            
                ],
              ),
            ),
          );
        }) ,
      
      // ListView.builder(
        
      //   itemCount: 20,
      //   itemBuilder: (ctx,index){
      //     return ListTile(
      //       leading: const Icon(Icons.mobile_screen_share_outlined,color: Color.fromARGB(255, 155, 155, 20),),
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (ctx){
      //           return  DetailsScreen();
      //         },
      //         settings: RouteSettings(arguments: index)
      //         ));
      //       },
      //       title:  Text("Iphone $index"),
      //       trailing: Text("${100/index}\$"),
      //     );
      //   },),
   
   
    );
  }
}