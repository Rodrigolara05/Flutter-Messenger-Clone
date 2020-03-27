import 'package:flutter/material.dart';
import 'package:messenger_clone/src/models/chat_model.dart';
import 'package:messenger_clone/src/models/status_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    Widget notificationCircle() {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          new Container(
            width: 14.0,
            height: 14.0,
            decoration: new BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
          ),
          new Container(
            width: 10.0,
            height: 10.0,
            decoration: new BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          )
        ],
      );

      ;
    }

    ListView listView = new ListView(
      children: <Widget>[
        new Container(
          //color: Colors.black,
          height: 55,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 13.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).accentColor,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Icon(
                      Icons.search,
                      color:  Theme.of(context).brightness == Brightness.dark
                          ? Colors.grey : new Color.fromRGBO(132, 132, 132, 1.0),
                    ),
                  ),
                  Text("Buscar",
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey : new Color.fromRGBO(132, 132, 132, 1.0),
                      )),
                ],
              ),
            ),
          ),
        ),
        Container(
          //color: Colors.green,
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              new Container(
                  //color: Colors.red,
                  height: 80,
                  width: 80,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).accentColor),
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0),
                          child: Text(
                            "Tu historia",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  )),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listStatus.length,
                  itemBuilder: (_, index) => new Container(
                      //color: Colors.yellow,
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          children: <Widget>[
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: <Widget>[
                                new Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                    color:
                                        new Color.fromRGBO(15, 133, 242, 1.0),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                new Container(
                                  width: 46.0,
                                  height: 46.0,
                                  decoration: new BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),

                                new CircleAvatar(
                                  radius: 21.0,
                                  foregroundColor:
                                      Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new NetworkImage(
                                      listStatus[index].statusImageUrl),
                                ),
                                //notificationCircle(),
                                Positioned(
                                  bottom: 1,
                                  right: 1,
                                  child: notificationCircle(),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3.0),
                              child: Text(
                                listStatus.elementAt(index).userModel.name,
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ),
        new ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: listChats.length,
          itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new ListTile(
                leading: new Container(
                  //color: Colors.red,
                  child: Stack(
                    children: <Widget>[
                      new CircleAvatar(
                        radius: 25.0,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            new NetworkImage(listChats[i].userModel.avatarUrl),
                      ),
                      //notificationCircle(),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: notificationCircle(),
                      ),
                    ],
                  ),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      listChats[i].userModel.name +
                          " " +
                          listChats[i].userModel.lastName,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: listChats[i].message,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: " · " + listChats[i].time,
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 14.0),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),

                /*
                *
                *
                * new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      RichText(
                          text: TextSpan(
                        text: listChats[i].message,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),),
                        new Text(
                          " · ",
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                        new Text(
                          listChats[i].time,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ],
                    )),
                *
                *
                *
                *
                *
                *
                *
                *   */
              )
            ],
          ),
        ),
      ],
    );

    return Container(
      child: listView,
      color: Theme.of(context).primaryColor,
    );
  }
}
