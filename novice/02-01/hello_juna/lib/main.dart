import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang Di Flutter'),
        ),
        body: Center(
          child: Text('Erman Junaidi'),
        ),
      ),
    );
  }
}
