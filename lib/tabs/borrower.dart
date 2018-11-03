import 'package:flutter/material.dart';

enum Category { tools, all }

class Borrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
      child: new Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton.icon(onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Search'
                              ),
                            ),
                          ),
                          FlatButton(onPressed: () {}, child: Text("Go"))
                        ],
                      );
                    },
                  );
                },
                    icon: Icon(Icons.search),
                    label: Text("Search")),
                CategorySelector()
              ],
            ),
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
                              Navigator.pop(context);
                              Navigator.of(context).pushNamed('/lending');

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
  Category _selection = Category.all;

  @override
  Widget build(BuildContext context) {
    return new DropdownButton<Category>(
      value: _selection,
      onChanged: (Category result) {
        setState(() {
          _selection = result;
        });
      },
      items: <DropdownMenuItem<Category>>[
        const DropdownMenuItem(
          value: Category.tools,
          child: Text('Tools'),
        ),
        const DropdownMenuItem(
          value: Category.all,
          child: Text('All categories'),
        )
      ],
    );
  }

}