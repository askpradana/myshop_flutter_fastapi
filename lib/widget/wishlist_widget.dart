import 'package:flutter/material.dart';

buildAppBarShoppingCart(context) {
  return Row(
    children: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ),
      ),
      Expanded(
        child: Container(
          alignment: Alignment.topRight,
          child: Text(
            "My Cart",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    ],
  );
}
