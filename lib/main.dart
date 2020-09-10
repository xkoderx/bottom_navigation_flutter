import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_bottom_nav/route/musica.dart';
import 'package:simple_bottom_nav/route/peliculas.dart';
import 'package:simple_bottom_nav/route/series.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'simple_nav_bar',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Peliculas(),
    Series(),
    Musica(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.lightGreen,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.local_movies), title: new Text('Peliculas')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.tv), title: new Text('Series')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.tag_faces), title: new Text('Musica')),
        ],
      ),
    );
  }
}
