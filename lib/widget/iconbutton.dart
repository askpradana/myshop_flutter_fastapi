import 'package:fastapi_shop1/configs/router.dart';
import 'package:flutter/material.dart';

//Default IconButton

Widget iconBackToPreviousPage(context) {
  return IconButton(
    onPressed: () => Navigator.pop(context),
    icon: Icon(
      Icons.arrow_back,
      color: Theme.of(context).primaryColor,
    ),
  );
}

Widget iconGoToWistListPage(context) {
  return IconButton(
    onPressed: () => Navigator.pushNamed(context, shoppingCartRoute),
    icon: Icon(
      Icons.shopping_bag,
      color: Theme.of(context).primaryColor,
    ),
  );
}

//Customize Main page IconButton
Widget iconGoToSettingPage(context) {
  return IconButton(
    onPressed: () => Navigator.pushNamed(context, settingsRoute),
    icon: Icon(
      Icons.tune,
      color: Theme.of(context).primaryColor,
    ),
  );
}

//Customize WishList page IconButton
Widget iconTextInWistListSays(context) {
  return Text(
    "My Cart",
    style: Theme.of(context).textTheme.headline1,
  );
}
