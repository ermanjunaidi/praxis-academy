import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text('erman Junaidi'),
        ),
      ),
    )
  }
}