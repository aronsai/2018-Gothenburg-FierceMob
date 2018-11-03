import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Icon(
            Icons.face,
            size: 100.0,
            color: Colors.black12
        ),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            new FittedBox(
              child: new Text('John Johnson\n',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              ),
            ),
            new Column(
              children: <Widget>[
                new Icon(
                  Icons.star,
                  size: 10.0,
                  color: Colors.orangeAccent,
                ),
                new Text('4.5'),
              ],
            ),
          ],
        ),
        new Column(
          children: <Widget>[
            new Text( 'Borrowed and lent items',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
            new Divider(),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Power Drill'),
                new Column(
                  children: <Widget>[
                    new Text('Stars : 4.0/5.0'),
                    new Text('Type : Borrowed'),
                  ],
                ),
              ],
            ),
            new Divider(),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Scew Driver'),
                new Column(
                  children: [
                    new Text('Stars : 5.0/5.0'),
                    new Text('Type : Borrowed'),
                  ],
                )
              ],
            ),
            new Divider(),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Lawn Mower'),
                new Column(
                  children: [
                    new Text('Stars : 1.0/5.0'),
                    new Text('Type : Lent'),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}