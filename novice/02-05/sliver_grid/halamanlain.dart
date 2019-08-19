import 'package:flutter/material.dart';

new GestureDetector(
   onTap: (){
       Route route = MaterialPageRoute(builder: (context) => Myapp());
       Navigator.push(context, route);
   },
   child: new Card(
      child: new Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           new Image(
              image: NetworkImage(
                 "http://code.byriza.com/lib/blog/flutter222.png"),
           ),
           new Container(
              padding: EdgeInsets.all(10.0),
              child: new Text("Flutter Tutorial 01"),
           )
        ],
      ),
   ),
),