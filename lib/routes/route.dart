
import 'package:go_router/go_router.dart';
import "package:myapp/pages/detail.dart";
import "package:myapp/pages/home.dart";
import "package:myapp/pages/list_products.dart";
import "package:myapp/pages/shop_cart.dart";


class RouteNames {
  static String home = '/';
  static String listProducts  = '/list-product';
  static String detail  =  '/detail';
  static String shopCart  = '/shop-cart';
}

final routesConfig = GoRouter(routes: [
  GoRoute(
    path: RouteNames.home, 
    builder: (context, state) => const Home(),
  ),
  GoRoute(
    path: RouteNames.listProducts, 
    builder: (context, state) => const ListProduct(),
  ),
  GoRoute(
    path: RouteNames.detail, 
    builder: (context, state) => const Detail(),
  ),
  GoRoute(
    path: RouteNames.shopCart, 
    builder: (context, state) => const ShopCart(),
  ),

]);