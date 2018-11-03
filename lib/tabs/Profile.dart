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
          new Container(
            child: new Icon(Icons.star,
            size: 10,
            color: Colors.yellowAccent,
          ),
          ),

        ],
      ),
    );

  }