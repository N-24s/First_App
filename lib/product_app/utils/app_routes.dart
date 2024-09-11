import 'package:first_app/form/signup_screen.dart';
import 'package:first_app/product_app/models/product.dart';
import 'package:first_app/product_app/view_model/product_vm.dart';
import 'package:first_app/product_app/views/cart_screen.dart';
import 'package:first_app/product_app/views/details_screen.dart';
import 'package:first_app/product_app/views/favourite.dart';
import 'package:first_app/product_app/views/home_screen.dart';
import 'package:first_app/product_app/views/login_screen.dart';
import 'package:first_app/product_app/views/not_found.dart';
import 'package:first_app/product_app/views/order_screen.dart';
import 'package:first_app/product_app/views/splash_screen.dart';
import 'package:first_app/product_app/views/stack_screen.dart';
import 'package:first_app/product_app/stateful%20_widget/demo_stateful.dart';
import 'package:first_app/product_app/views/success.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  
 static Route<dynamic>? routeManager(RouteSettings settings ){
  // if(settings.name=='/home')
  // return MaterialPageRoute(builder: (ctx)=>HomeScreen());
  // else  if(settings.name=='/details')
  // return MaterialPageRoute(builder: (ctx)=>DetailsScreen());
  //   if(settings.name=='/cart')
  // return MaterialPageRoute(builder: (ctx)=>CartScreen(),settings.arguments as  Map<Prodect,int>);

  switch(settings.name){
  
    case '/home': return MaterialPageRoute(builder: (ctx)=>HomeScreen());
     case '/details': return MaterialPageRoute(builder: (ctx)=> DetailsScreen(product: settings.arguments as Product,));
     
      case '/cart':{ 
        // Map<Product,int> cartItem=settings.arguments as Map<Product,int>;
        return MaterialPageRoute(builder: (ctx)=>CartScreen(cart1: ProductVm.cartItems,));}
       case '/splash': return MaterialPageRoute(builder: (ctx)=>const SplashScreen());
              case '/order': return MaterialPageRoute(builder: (ctx)=>const OrderScreen());

      case '/login': return MaterialPageRoute(builder: (ctx)=>const LoginScreen());
      case '/stack': return MaterialPageRoute(builder: (ctx)=>const StackScreen());
      case '/signup': return MaterialPageRoute(builder: (ctx)=>const SignupScreen());
      case '/success': return MaterialPageRoute(builder: (ctx)=>const SuccessScreen());

      case '/demo': return MaterialPageRoute(builder: (ctx)=>const DemoStatefulScreen());
            case '/favourite': return MaterialPageRoute(builder: (ctx)=> FavouriteScreen(favourite: ProductVm.favoriteItems,));

      //  default:return MaterialPageRoute(builder: (ctx)=>const NotFound());
  }

  
  }
 
}