import 'package:fastapi_shop1/configs/router.dart';
import 'package:flutter/material.dart';

buildMiripAppBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(Icons.sort),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.tune),
          ),
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.pushNamed(context, shoppingCartRoute);
            },
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
    ],
  );
}

class AppBarWithFunction extends StatelessWidget {
  const AppBarWithFunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.pushNamed(context, shoppingCartRoute);
            },
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
    );
  }
}

class AppBarBack extends StatelessWidget {
  const AppBarBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Container(
        alignment: Alignment.centerLeft,
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            )),
      ),
    );
  }
}
