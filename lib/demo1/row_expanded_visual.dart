import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RowExpandedVisualDemo extends StatefulWidget{
  RowExpandedVisualDemo({Key key, this.title}):super(key:key);

  final String title;

  @override
  _RowExpandedVisualDemoState createState() => _RowExpandedVisualDemoState();
}

class _RowExpandedVisualDemoState extends State<RowExpandedVisualDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset('images/pic1.jpg'),
            ),
            Expanded(
                flex: 2,
                child: Image.asset('images/pic2.jpg'),
            ),
            Expanded(
                child: Image.asset('images/pic3.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
