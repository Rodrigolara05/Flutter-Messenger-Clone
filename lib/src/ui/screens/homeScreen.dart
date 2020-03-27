import 'package:flutter/material.dart';
import 'package:messenger_clone/src/models/user_model.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messenger_clone/src/ui/pages/chatPage.dart';
import 'package:messenger_clone/src/ui/pages/peoplePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  UserModel userModel = listUsers.elementAt(6);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(
      elevation: 0.0,
      title: Row(
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/settings');
            },
            child: Container(
              width: 32,
              height: 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  userModel.avatarUrl,
                ),
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(left: 22),
            child: new Text(
              "Chats",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).accentColor),
            child: Icon(
              Icons.camera_alt,
              size: 20,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).accentColor),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
      ],
      iconTheme: IconThemeData(color: Colors.black),
    );

    List<Widget> listPages = [
      ChatPage(),
      PeoplePage(),
    ];

    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedItemColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      unselectedItemColor: Colors.grey,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            title: Text("Chats"),
            icon: Icon(
              FontAwesomeIcons.solidComment,
            )),
        BottomNavigationBarItem(
            title: Text("Personas"),
            icon: Icon(
              Icons.people,
            )),
      ],
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );

    return Scaffold(
      appBar: appBar,
      body: listPages.elementAt(selectedIndex),
      bottomNavigationBar: bottomNavigationBar,
      extendBodyBehindAppBar: true,
    );
  }
}
