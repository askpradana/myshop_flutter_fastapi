import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:fastapi_shop1/widget/homepage_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Column(
          children: [
            buildMiripAppBar(context),
            buildTitlePage(),
            ItemList(),
            // Text(currencyFormatter.format(angka)),
          ],
        ),
      )),
    );
  }
}
