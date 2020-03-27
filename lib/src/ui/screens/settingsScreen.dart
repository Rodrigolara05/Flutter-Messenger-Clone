import 'package:flutter/material.dart';
import 'package:messenger_clone/src/resources/themes.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void changeColor() {
    DynamicTheme.of(context).setThemeData(
        Theme.of(context).brightness == Brightness.dark
            ? lightTheme
            : darkTheme);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuraciones"),
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Text("Dark Mode"),
            ),
            Container(
              child: Switch(
                value: Theme.of(context).brightness == Brightness.dark
                    ? true
                    : false,
                onChanged: (value) {
                  changeColor();
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
