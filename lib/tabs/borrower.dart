import 'package:flutter/material.dart';

enum Category { tools }

class Borrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Categories'),
              CategorySelector()
            ],
          ),
          new ListView(
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
        ],
      )
  );
}

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  Category _selection;

  @override
  Widget build(BuildContext context) {
    return new PopupMenuButton<Category>(
      icon: Icon(Icons.filter_list),
      onSelected: (Category result) {
        setState(() {
          _selection = result;
        });
      },
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<Category>>[
        const CheckedPopupMenuItem<Category>(
          value: Category.tools,
          child: Text('Tools'),
        )
      ],
    );
  }

}