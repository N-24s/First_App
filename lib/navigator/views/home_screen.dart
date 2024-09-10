import 'package:first_app/navigator/models/product.dart';
import 'package:first_app/navigator/view_model/product_vm.dart';
import 'package:first_app/navigator/views/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key, 
   });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductVm productVm=ProductVm();
IconData fav=Icons.favorite_border;
late List<Product> allProducts;
@override
  void initState() {
       allProducts=productVm.loadAllProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

  
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(top: 10,right: 10),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/cart', arguments: ProductVm.cartItems);
              },
              child: Badge(
              child: Icon(Icons.shopping_cart),
              label: Text("${ProductVm.cartItems.length}"),
              ),
            ),
          ),
           Container(
            margin: EdgeInsets.only(top: 10,right: 10),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/favourite', arguments: ProductVm.favoriteItems);
              },
              child: Badge(
              child: Icon(Icons.favorite),
              // label: Text("${ProductVm.cartItems.length}"),
              ),
            ),
          ),
       
        ],
        title: const Text("Home Screen"),),
      body:ListView.builder(
        itemCount: allProducts.length,
        itemBuilder: (ctx,index){
          return GestureDetector(
            onTap: (){
              // Navigator.pushNamed(context, "/details", arguments:  allProducts[index]);
              Navigator.push(context, MaterialPageRoute(builder: (ctx){
                return  DetailsScreen(product:allProducts[index],);
              },
              settings: RouteSettings(arguments: allProducts[index])
              ));
            },
            child: Card(
              
              color: Colors.grey,
              child: Column(
                children: [
                 Stack(
            
            children: [
                Image.asset("${allProducts[index].image_url}"),
              Positioned(
              left: 20,
              top: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:  Colors.red.shade600),
                  child: Text("20%",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white).copyWith(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
              ),
               Positioned(
              right: 20,
              top: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: const Color.fromARGB(255, 211, 210, 207)),
                  child: IconButton(onPressed: (){
                    ProductVm.addToFavourite(product: allProducts[index]);
                     
                  if  (allProducts[index].isFavourite==false){
                  
                     allProducts[index].isFavourite=true;

                          // fav=Icons.favorite;

                  }
                  else {
                  
                          allProducts[index].isFavourite=false;
                            // fav=Icons.favorite_border;
                  }
                
                    setState(() {
                    
                    });
                  },
                   icon:allProducts[index].isFavourite==false?  const Icon(Icons.favorite_border,size: 25,color: Colors.red,):const Icon(Icons.favorite,size: 25,color: Colors.red,)),
                  )
                  
                  ),
              
            ],
          ),

                ListTile(
                  leading: InkWell(
                    onTap: (){
                      ProductVm.addToCart(
                        product: allProducts[index]);
                        setState(() {
                          
                        });
                    },
                    child: const Icon(Icons.add_shopping_cart),
                  ),
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