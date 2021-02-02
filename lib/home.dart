import 'package:flutter/material.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Math"),
        ),

        drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Text("Silahkan Pilih Bangun Dibawah ini :",
                  style: new TextStyle(fontSize: 20.0)),
              ),

              ListTile(
                title: new Text("Bangun Datar"),
                onTap: () {
                Navigator.pushNamed(context, "/bangunDatar");
              },
              ),
              ListTile(
                title: new Text("Bangun Ruang"),
                onTap: () {
                Navigator.pushNamed(context, "/bangunRuang");
              },
            )
          ],
        )),
        body: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(30.0),
              child: new Image.asset(
                "img/logo.png",
                width: 200.0,
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 5.0, bottom: 15.0),
              child: new Text("AYO",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold)),
            ),
            new Text(
                "Mengenal lebih dalam Bangun Ruang dan Bagun Datar",
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 20.0)),
          ],
        ));
  }
}
