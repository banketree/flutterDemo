import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PavlovaDemo extends StatefulWidget {
  PavlovaDemo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PavlovaDemoState createState() => _PavlovaDemoState();
}

class _PavlovaDemoState extends State<PavlovaDemo> {
  static var titleText = Container(
    padding: EdgeInsets.all(20.0),
    child: Text(
      'Strawberry Pavlova',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.6,
        fontSize: 30.0,
      ),
    ),
  );

  static var subTitle = Text(
    '''
      Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.
      ''',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Georgia',
      fontSize: 25.0,
    ),
  );

  static var ratings = Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.black,
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
          ],
        ),
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20.0,
          ),
        ),
      ],
    ),
  );

  static var descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18.0,
    height: 2.0,
  );

  static var iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.kitchen,
                color: Colors.green[500],
              ),
              Text('PREP'),
              Text('25 min'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.timer,
                color: Colors.green[500],
              ),
              Text('COOK'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.restaurant,
                color: Colors.green[500],
              ),
              Text('PEEDS'),
              Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );

  var leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
    child: Column(
      children: <Widget>[
        titleText,
        subTitle,
        ratings,
        iconList,
      ],
    ),
  );

  var mainImage = Image.asset(
    'images/pavlova.jpg',
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          height: 600.0,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 440.0,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
