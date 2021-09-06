import 'package:flutter/material.dart';

buildTitlePage() {
  return Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.only(top: 20),
    child: Text(
      'Discover our exclusive deals',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
