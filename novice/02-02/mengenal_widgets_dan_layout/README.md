FLUTTER TUTORIAL

01 Flutter: Hello World

        Untuk menampilkan teks Hello World di layar cukup dengan sintaks sebagai berikut :

        ```dart

        import 'package:flutter/material.dart';

        void main() {
        runApp(
            new Center(
            child: new Text(
                'Hello, world!'
            ),
            ),
        );
        }
        ```

        Hello World menggunakan stateless widget sebagai berikut :

                    ```dart
         import 'package:flutter/material.dart';

            void main() {
            runApp(
                new MaterialApp(
                title: 'Hello World App',
                home: new myApp(),
                )
            );
            }

            class myApp extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
                return new Scaffold(
                appBar: new AppBar(
                    title: new Text('Hello World App'),
                ),
                body: new Center(
                    child: new Text(
                    'Hello, world!'
                    ),
                ),
                );
            }
            }
             ```

        kita lihat ada penamaan dengan nama StatelessWidget, jadi isi dari datanya tidak bisa berubah-rubah, sekarang kita coba contoh yang agak kompleks sedikit 

02 Flutter: Stateless Widgets

            ```dart
            import 'package:flutter/material.dart';

            void main() {
            runApp(new MaterialApp(
                //home: new Text("Cool")
                home: new MyStatelessWidget()
            ));
            }

            class MyStatelessWidget extends StatelessWidget {
            @override
            Widget build(BuildContext context){
                //Scaffold provide functionality of appbar, body of app etc
                return new Scaffold(
                appBar: new AppBar(title: new Text("Stateless Widget")),
                body: new Container(
                    //adding padding around card
                    padding: new EdgeInsets.all(20.0),
                    child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        // new Text("Hey"),
                        // new Text("My name"),
                        // new Text("Is Raunak")

                        new MyCard(
                        title: new Text("I love Flutter", style: new TextStyle(fontSize: 20.0)),
                        icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
                        ),
                        new MyCard(
                        title: new Text("I love Donuts", style: new TextStyle(fontSize: 20.0)),
                        icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
                        ),
                        new MyCard(
                        title: new Text("I see you", style: new TextStyle(fontSize: 20.0)),
                        icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
                        )
                    ]
                    )
                )
                );
            }
            }

            class MyCard extends StatelessWidget {
            //adding constructor
            MyCard({this.title, this.icon});

            final Widget title;
            final Widget icon;

            @override
            Widget build(BuildContext context){
                return new Container(
                //adding bottom padding on card
                padding: new EdgeInsets.only(bottom: 20.0),
                child: new Card(
                    child: new Container(
                    //adding padding inside card
                    padding: new EdgeInsets.all(15.0),
                    child: new Column(
                    children: <Widget>[
                        // new Text("I love Flutter"),
                        // new Icon(Icons.favorite)

                        this.title,
                        this.icon
                        ]
                    )
                    )
                    
                )
                );
            }
            }

            ```
    
03 Flutter: Buttons and Stateful widgets

    sekarang kita mendalami Buttons and Stateful widgets, kita lihat contoh kodingnya sebagai berikut :

    ```dart
    import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new AwesomeButton()
  ));
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {

  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayedString = "";

  //you can also declare variables like this
  // var counter = 0;
  // var strings = ["Flutter", "Is", "Awesome"];

  void onPressed(){
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter+1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateful Widget!"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: onPressed
              )
            ]
          )
        )
      )
    );
  }
}

```

