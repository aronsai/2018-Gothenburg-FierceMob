import 'package:flutter/material.dart';

class Borrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
      child: new ListView(
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
                  title: Text('DEWALT DC759KA'),
                  subtitle: Text(
                      'My power drill! It works great for everyday stuff.'),
                ),
                ButtonTheme
                    .bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Borrow it!'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
  );
}