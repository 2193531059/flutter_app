import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/test4/MyTestFour.dart';

class MyThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('Test Three Title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new MyTestFour(),//手势监听控件
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add', child: new Icon(Icons.add), onPressed: null),
    );
  }
}
