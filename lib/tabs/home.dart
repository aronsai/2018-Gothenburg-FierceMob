import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
    child: new Column( children: <Widget>[
      const Divider(
        height: 30.0,
      ),
      new Text("Your sharing ",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23.0,

          fontFamily: 'Roboto',
        ),
      ),
      new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new CircleAvatar(
                      child: new Image.asset('lib/src/powerdrill.jpg')
                  ),
                  title: Text('You borrowed from Johansson43'),
                  subtitle: Text(
                      'DEWALT DC759KA - has to be returned in 2 days'),
                ),

              ],
            ),
          )
        ],
      )
    ],
    )

  );
}

