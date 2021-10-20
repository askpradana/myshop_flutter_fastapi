import 'package:flutter/material.dart';

bikinBottomAppBar(context) {
  return BottomAppBar(
    color: Theme.of(context).bottomAppBarTheme.color,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Container(
                height: 20,
                child: VerticalDivider(
                  thickness: 1,
                  width: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          //TODO => Ubah ke textbutton
          Text("Beli sekarang "),
        ],
      ),
    ),
  );
}
