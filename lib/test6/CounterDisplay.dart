import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count:$count');
  }
}

class CounterIncrement extends StatelessWidget {
  CounterIncrement({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class CounterStatefulWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new CounterState();
  }

}

class CounterState extends State<CounterStatefulWidget>{
  int _counter = 0;

  void _inCrement(){
    setState(() {
      ++_counter;
    });
  }

  void toSearch(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('second page'),
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrement(onPressed: toSearch,),
        new CounterDisplay(count: _counter,)
      ],
    );
  }

}
