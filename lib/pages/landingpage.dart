import 'package:fastapi_shop1/configs/router.dart';
import 'package:fastapi_shop1/themes/color.dart';
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
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: homeRoute,
      theme: TemaAplikasi.temaCerah,
      darkTheme: TemaAplikasi.temaGelap,
    );
  }
}
