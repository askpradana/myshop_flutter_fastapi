import 'package:fastapi_shop1/pages/mainpage/mainpage.dart';
import 'package:fastapi_shop1/pages/shoppingcart/shopping_cart.dart';
import 'package:fastapi_shop1/pages/singleitem/single_item_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case itemSingleRoute:
        var data = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => HalamanLiatItem(
            data: data,
          ),
        );
      case shoppingCartRoute:
        return MaterialPageRoute(
          builder: (_) => ShoppingCartPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route"),
            ),
          ),
        );
    }
  }
}

const String homeRoute = '/';
const String itemSingleRoute = '/itemdetail';
const String shoppingCartRoute = '/shoppingcart';
