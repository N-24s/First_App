class Product {
late  int id;
 late double price;
 bool isFavourite=false;
 late String name,category,brand,image_url;
 
// late  List<String> thumbnails;
  Product({required this.id,required this.name,required this.price,required this.category,required this.brand,required this.image_url,});
  Product.fromMap(Map<String,dynamic> row){
    id=row['id'];
    price=row['price'];
    name=row['name'];
     category=row['category']; 
     brand=row['brand'];
     image_url=row['image_url'];
    //  descrption=row['descrption'];



  }
}