import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main () {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text("Praxis Axademy"),
        ),
      ),
    ),
  ));
}

_launchURL() async {
  const url = 'geo:-7.703920,110.467661';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}