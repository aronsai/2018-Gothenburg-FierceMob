import 'package:flutter/material.dart';

enum Category { tools, all, toys, sportsequipment }

class Borrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      new Container(
          child: new ListView(
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
              new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    children: <Widget>[
                      createItem('DEWALT DC759KA',
                          'My power drill! It works great for everyday stuff.',
                          'Göran', context, 'lib/src/images/powerdrill.jpg',
                          '/borrow'),
                      createItem('Chainsaw',
                          'Pretty good chainsaw',
                          'Johan', context, 'lib/src/images/chainsaw.jpg',
                          '/dewalt'),
                      createItem('Casio FX-82 ES',
                          'Chalmers approved calculator',
                          'Johanna', context, 'lib/src/images/casio.jpg',
                          '/casio'),
                      createItem('Lawn Mower',
                          'Get your garden trimmed!',
                          'Olaf', context, 'lib/src/images/lawnmower.jpg',
                          '/borrow'),
                      createItem('Hoover Linx Stick Vacuumcleaner',
                          'Like a lawn mower, but for your living-room.',
                          'Hans', context, 'lib/src/images/vacuumcleaner.jpg',
                          '/borrow'),
                      createItem('Our old skis',
                          'Our old skis, maybe someone can have fun with them.',
                          'Katarina', context, 'lib/src/images/skis.jpg',
                          '/borrow'),
                    ],
                  )
              )
            ],
          )

      );

  Card createItem(String title, String subtitle, String owner,
      BuildContext context, String imageurl, String path) {
    Card item = new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: new CircleAvatar(
                child: new Image.asset(imageurl)
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
                FlatButton(
                  child: const Text('Borrow it!'),
                  onPressed: () {
                    Navigator.of(context).pushNamed(path);

                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return item;
  }
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
          value: Category.sportsequipment,
          child: Text('Sports-Equipment'),
        ),
        const DropdownMenuItem(
          value: Category.toys,
          child: Text('Toys'),
        ),
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