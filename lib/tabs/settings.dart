import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      new Scaffold(

        body: new Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.vpn_key),
              title: new Text("Account", style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.notifications),
              title: new Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.people),
              title: new Text("Invite a friend", style: TextStyle(fontWeight: FontWeight.bold),
                ),
            ),
            const Divider(
              height: 20.0,
            ),
            new ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help', style: TextStyle(fontWeight: FontWeight.bold))
              ,
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