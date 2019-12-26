
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/test1/MyAppBar.dart';

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('Test One Title', style: Theme.of(context).primaryTextTheme.title,),
          ),
          new Expanded(child: new Center(
            child: new Text('Test One'),
          ))
        ],
      ),
    );
  }

}