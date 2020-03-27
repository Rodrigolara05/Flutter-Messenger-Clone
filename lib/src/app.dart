import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:messenger_clone/src/ui/screens/settingsScreen.dart';
import 'ui/screens/homeScreen.dart';

class Messenger extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
          primaryColor: Colors.white,
          accentColor: new Color.fromRGBO(236, 236, 236, 1.0),
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
            title: 'Messenger Clone',
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: HomeScreen(),
            routes: <String, WidgetBuilder>{
              '/home': (BuildContext context) => new HomeScreen(),
              '/settings': (BuildContext context) => new SettingsScreen(),
            },
          );
        }
    );
  }
}