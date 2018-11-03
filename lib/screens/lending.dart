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
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            const Divider(
              height: 30.0,
            ),
            new Text("Please specify what you want to lend",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,

                fontFamily: 'Roboto',
              ),
            ),
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.content_cut),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name of your device",
                ),
              ),
            ),
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.euro_symbol),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Price",
                ),
              ),
            ),
            const Divider(
              height: 20.0,
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
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.content_cut),
              title: const Text('Tool-group'),
              subtitle: const Text('Not specified'),
            ),
            const Divider(
              height: 220.0,
            ),
            new FloatingActionButton(
                elevation: 0.0,
                child: new Icon(Icons.check),
                backgroundColor: Colors.lightGreen,
                onPressed: (){Navigator.pop(context);
                Navigator.of(context).pushNamed('/main');}
            ),
          ],
        ),

      )

      ;

}