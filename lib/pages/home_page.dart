import 'package:flutter/material.dart';
import './first_page.dart';
import './second_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("GpCoders Drawer App"),
          backgroundColor: Colors.redAccent,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Gugu"),
                accountEmail: new Text("gugu@gmail.com"),
                currentAccountPicture: new GestureDetector(
                  onTap: () => debugPrint("this is user profile"),
                  child: new CircleAvatar(
                    backgroundImage:
                        new NetworkImage("http://via.placeholder.com/350x150"),
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  new GestureDetector(
                    onTap: () => debugPrint("this is other profile"),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(
                          "http://via.placeholder.com/350x150"),
                    ),
                  ),
                ],
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true"))),
              ),
              new ListTile(
                  title: new Text("First page"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new FirstPage("First Page")));
                  }),
              new ListTile(
                  title: new Text("Second page"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new SecondPage("Second Page")));
                  }),
              new Divider(),
              new ListTile(
                title: new Text("Cancel"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: new Center(
          child: new Text(
            "GpCoders",
            style: new TextStyle(fontWeight: FontWeight.w800, fontSize: 18.0),
          ),
        ));
  }
}
