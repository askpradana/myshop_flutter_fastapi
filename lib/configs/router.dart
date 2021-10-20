import 'package:fastapi_shop1/pages/commentpage.dart';
import 'package:fastapi_shop1/pages/homepage.dart';
import 'package:fastapi_shop1/pages/itempage.dart';
import 'package:fastapi_shop1/pages/settingpage.dart';
import 'package:fastapi_shop1/pages/wishlistpage.dart';
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
      case settingsRoute:
        return MaterialPageRoute(
          builder: (_) => SettingPage(),
        );
      case allCommentRoute:
        return MaterialPageRoute(
          builder: (_) => CommenctSection(),
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
const String settingsRoute = '/settings';
const String allCommentRoute = '/comments';
