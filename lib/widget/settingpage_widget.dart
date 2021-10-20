import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List apa = [
  'none',
  'Dark Mode',
  'Language',
  'Contact Us',
  'App Version',
];

class DarkModeSetting extends StatefulWidget {
  const DarkModeSetting({Key? key}) : super(key: key);

  @override
  DarkModeSettingState createState() => DarkModeSettingState();
}

class DarkModeSettingState extends State<DarkModeSetting> {
  bool isDarkModeActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Dark Mode'.toUpperCase()),
        //TODO => ubah ke android Switch kalau android
        CupertinoSwitch(
            value: isDarkModeActive,
            onChanged: (val) {
              setState(() {
                isDarkModeActive = val;
              });
            }),
      ],
    );
  }
}

class SettingMenu extends StatelessWidget {
  SettingMenu({
    Key? key,
    required this.namaPengaturan,
    this.icon,
  }) : super(key: key);

  final String namaPengaturan;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            namaPengaturan.toUpperCase(),
          ),
          Icon(
            icon == null ? Icons.navigate_next_rounded : icon,
          ),
        ],
      ),
    );
  }
}
