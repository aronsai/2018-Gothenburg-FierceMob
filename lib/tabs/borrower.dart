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
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Item that is available to borrow'),
                  subtitle: Text('More description'),
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