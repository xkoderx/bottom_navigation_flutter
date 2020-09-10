import 'package:flutter/material.dart';

class Series extends StatefulWidget {
  Series({Key key}) : super(key: key);
  @override
  _SeriesState createState() => _SeriesState();
}

class _SeriesState extends State<Series> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /* appBar: new AppBar(
        title: new Text("Series"),
      ),*/
      body: new Center(
        child: new Text('Pagina principal de Series'),
      ),
    );
  }
}
