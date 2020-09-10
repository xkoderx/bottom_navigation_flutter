import 'package:flutter/material.dart';

class Musica extends StatefulWidget {
  Musica({Key key}) : super(key: key);

  @override
  _MusicaState createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text("Música"),
      ),*/
      body: new Center(
        child: new Text('Pagina principal de Música'),
      ),
    );
  }
}
