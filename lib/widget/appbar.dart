import 'package:fastapi_shop1/widget/text.dart';
import 'package:flutter/material.dart';

//Top appbar

class ReusableAppBar extends StatelessWidget {
  const ReusableAppBar({
    Key? key,
    this.mainIcon,
    this.iconRL,
    this.iconRR,
  }) : super(key: key);

  final Widget? mainIcon, iconRR, iconRL;

  Widget defaultBack(context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  Widget rightIconLeft() {
    return SizedBox();
  }

  Widget rightIconRight() {
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Lebih rapih
        mainIcon ?? defaultBack(context),
        Row(
          children: [
            iconRL ?? rightIconLeft(),
            iconRR ?? rightIconRight(),
          ],
        ),
      ],
    );
  }
}

//Bottom appbar

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
          TextButton(
            onPressed: () {},
            child: Text(
              Tulisan.buyNowTextButtonText,
            ),
          ),
        ],
      ),
    ),
  );
}
