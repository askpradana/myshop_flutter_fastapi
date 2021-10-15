import 'package:fastapi_shop1/pages/mainpage/item_list.dart';
import 'package:fastapi_shop1/pages/mainpage/widgets/mainpage_widget.dart';
import 'package:fastapi_shop1/configs/router.dart';
import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: homeRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  // final double angka = 1000000;

  // final currencyFormatter = NumberFormat.currency(locale: 'ID');

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
