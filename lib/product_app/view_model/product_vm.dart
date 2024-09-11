import 'package:first_app/product_app/data/data.dart';
import 'package:first_app/product_app/models/product.dart';

class ProductVm {


 static Map<Product,int> cartItems=Map();
 static Map<Product,int> favoriteItems=Map();

static addToCart({required Product product, int qty=1}){
  cartItems[product]=qty;
} 
static addToFavourite({required Product product,int qty=1}){
  favoriteItems[product]=qty;
} 
  static removeFromCart(Product product) {
    cartItems.remove(product);
  }



 List<Product> loadAllProducts(){
    ProductDb db=ProductDb();
    return  db.select().map((e)=>Product.fromMap(e)).toList();
      

  }

 static List<String> images=[
    'assets/images/y1.png',
    'assets/images/y3.png',
    'assets/images/y4.png',

  ];
}