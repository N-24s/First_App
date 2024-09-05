import 'package:first_app/navigator/data.dart';
import 'package:first_app/navigator/models/product.dart';

class ProductVm {
  List<Product> loadAllProducts(){
    ProductDb db=ProductDb();
    return  db.select().map((e)=>Product.fromMap(e)).toList();
      

  }
}