import 'package:flutter/material.dart';

class Peliculas extends StatefulWidget {
  Peliculas({Key key}) : super(key: key);

  @override
  _PeliculasState createState() => _PeliculasState();
}

class _PeliculasState extends State<Peliculas> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text("Música"),
      ),*/
      body: new Center(
        child: new Text('Pagina principal de Peliculas'),
      ),
    );
  }
}
