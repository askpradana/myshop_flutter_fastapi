import 'package:fastapi_shop1/pages/mainpage/item_list.dart';
import 'package:fastapi_shop1/pages/mainpage/widgets/mainpage_widget.dart';
import 'package:fastapi_shop1/configs/router.dart';
import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
      initialRoute: homeRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      )),
    );
  }
}
