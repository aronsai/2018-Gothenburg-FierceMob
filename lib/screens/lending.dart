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
              height: 4.0,
            ),
            new Text("Please specify what you want to lend",
              style: new TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 40.0,
                fontFamily: 'Roboto',
              ),

            ),
            new ListTile(
              leading: const Icon(Icons.content_cut),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Phone",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            new ListTile(
              leading: const Icon(Icons.label),
              title: const Text('Nick'),
              subtitle: const Text('None'),
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