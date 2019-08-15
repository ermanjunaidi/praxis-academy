import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new halamanSatu(),
  ));
}

class halamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text('Erman Junaidi'),
        ),
      ),
    );
  }
}