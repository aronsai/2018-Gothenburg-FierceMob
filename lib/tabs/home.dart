import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
    child: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),

        children: <Widget>[
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

      new Column(
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  createItem('DEWALT DC759KA',
                      'My power drill! It works great for everyday stuff.',
                      'Göran', context),
                  createItem('DEWALT DC759KA',
                      'My power drill! It works great for everyday stuff.',
                      'Göran', context),
                  FlatButton.icon(onPressed: () {
                    Navigator.of(context).pushNamed('/lending');
                  },
                      icon: Icon(Icons.add_circle),
                      label: Text("Share something new!", textScaleFactor: 1.3))
                ],
              )
          )
        ],
      )
      ]
  )
  );

  Card createItem(String title, String subtitle, String owner,
      BuildContext context) {
    Card item = new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: new CircleAvatar(
                child: new Image.asset('lib/src/images/powerdrill.jpg')
            ),
            title: Text(title),
            subtitle: Text(
                subtitle),
          ),
          ButtonTheme
              .bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                Text('Owned by ' + owner),

              ],
            ),
          ),
        ],
      ),
    );
    return item;
  }
}

