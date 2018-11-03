import 'package:flutter/material.dart';

class Lending extends StatelessWidget {
  @override
  Widget build (BuildContext context) => new Scaffold(

    //App Bar
    appBar: new AppBar(
      title: new Text(
        'Lending',
        style: new TextStyle(
          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    ),

    //Content of tabs



    body: new PageView(

      children: <Widget>[
        new RaisedButton(
          child: const Text('See your items'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,

          splashColor: Colors.orange,
          onPressed: () {
            // Perform some action
          },
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Lending page content'),
          ],
        )
      ],
    ),
  );
}