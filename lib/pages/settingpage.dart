import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:fastapi_shop1/widget/iconbutton.dart';
import 'package:fastapi_shop1/widget/settingpage_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          itemCount: apa.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return ReusableAppBar(
                mainIcon: iconBackToPreviousPage(context),
              );
            } else if (index == 1) {
              return DarkModeSetting();
            } else if (index == 4) {
              return SettingMenu(
                namaPengaturan: apa[index],
                icon: Icons.error,
              );
            } else {
              return SettingMenu(
                namaPengaturan: apa[index],
              );
            }
          },
          separatorBuilder: (context, index) {
            if (index > 0) {
              return Divider(
                thickness: 1,
                indent: 16,
                endIndent: 16,
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
