import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class PackedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PackedViewDemo(title:'Flutter Demo Home Page'),
    );
  }
}

class PackedViewDemo extends StatefulWidget{
  final String title;

  PackedViewDemo({Key key, this.title}):super(key:key);

  @override
  _PackedViewDemoState createState() => _PackedViewDemoState();
}

class _PackedViewDemoState extends State<PackedViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(Icons.star,color: Colors.green[500],),
            new Icon(Icons.star,color: Colors.green[500],),
            new Icon(Icons.star,color: Colors.green[500],),
            new Icon(Icons.star,color: Colors.black,),
            new Icon(Icons.star,color: Colors.black,),
          ],

        ),
      ),
    );
  }
}
