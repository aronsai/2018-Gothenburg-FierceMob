// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Dewalt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Chainsaw',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
////          Icon(
////            Icons.star,
////            color: Colors.yellowAccent[500],
////          ),
//          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.touch_app, 'Borrow'),
          buildButtonColumn(Icons.star, 'Favourite'),
          buildButtonColumn(Icons.share, 'Share'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(40.0),
      child: Text(
        '''Pretty good chainsaw!''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Borrow'),
          backgroundColor: Colors.lightGreen,
        ),
        body: ListView(
          children: [
            Image.asset(
              'lib/src/images/chainsaw.jpg',
              width: 75.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
