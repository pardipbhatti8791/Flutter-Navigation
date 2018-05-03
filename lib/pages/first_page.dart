import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String pageString;

  FirstPage(this.pageString);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(pageString),
      ),
      body: new Center(
        child: new Text(pageString),
      ),
    );
  }
}