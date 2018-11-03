import 'package:flutter/material.dart';

class Lending extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      new Scaffold(


        //App Bar
        appBar: new AppBar(
          title: new Text(
            'Lending',
            style: new TextStyle(
              fontSize: Theme
                  .of(context)
                  .platform == TargetPlatform.iOS ? 17.0 : 20.0,
            ),
          ),
          elevation: Theme
              .of(context)
              .platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),

        //Content of tabs


        body: new Column(
          children: <Widget>[
            const Divider(
              height: 10.0,
            ),
            new Text("Please specify what you want to lend",
              style: new TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 40.0,
                fontFamily: 'Roboto',
              ),

            ),
            const Divider(
              height: 4.0,
            ),
            new ListTile(
              leading: const Icon(Icons.content_cut),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name of your device",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.euro_symbol),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Price",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.format_list_numbered),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Points for device",
                ),
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            new ListTile(
              leading: const Icon(Icons.content_cut),
              title: const Text('Tool-group'),
              subtitle: const Text('Not specified'),
            )
          ],
        ),
      )
      ;
}