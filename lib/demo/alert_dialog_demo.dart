import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  Ok,
  Cancel
}

class AlterDialogDemo extends StatefulWidget {

  @override
  State createState() {
    return _AlterDialogState();
  }
}

class _AlterDialogState extends State<AlterDialogDemo>{

  String _choice = 'Nothing';

  Future _openAlterDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlterDialog'),
          content: Text('Are you sure about this'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context,Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.pop(context,Action.Ok);
              },
            )
          ],
        );
      }
    );

    switch(action){
      case Action.Ok:{
        setState(() {
          _choice = 'Ok';
        });
      }
      break;
      case Action.Cancel:{
        setState(() {
          _choice = 'Cancel';
        });
      }
      break;
      default:{
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is: $_choice'),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlerDialog'),
                  onPressed: _openAlterDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}