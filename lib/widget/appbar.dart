import 'package:fastapi_shop1/configs/router.dart';
import 'package:flutter/material.dart';

buildMiripAppBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.sort,
        color: Theme.of(context).primaryColor,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, settingsRoute);
              },
              icon: Icon(
                Icons.tune,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, shoppingCartRoute);
            },
            icon: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).primaryColor,
            ),
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
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {
              Navigator.pushNamed(context, shoppingCartRoute);
            },
            icon: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).primaryColor,
            ),
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
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: IconButton(
          padding: EdgeInsets.symmetric(vertical: 10),
          constraints: BoxConstraints(),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          )),
    );
  }
}
