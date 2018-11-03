import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(

    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new MaterialButton(
            minWidth: 90.0,
            height: 60.0,

            color: Colors.orange,
            onPressed: null
        ),


        new RaisedButton(
          child: const Text('Do not connect with Twitter'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.orange,
          onPressed: () {
            // Perform some action
          },
        ),

        new RaisedButton(
          child: const Text('Connect with Twitter'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.blueGrey,
          onPressed: () {
            // Perform some action
          },
        ),
        new Icon(
          Icons.dashboard,
          size: 150.0,
          color: Colors.black12
        ),
        new Text('Dashboard tab content')
      ]
    ),
  );
}