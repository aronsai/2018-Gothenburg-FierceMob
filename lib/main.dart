import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './screens/lending.dart' as _lendingPage;
import './screens/about.dart' as _aboutPage;
import './screens/support.dart' as _supportPage;
import './tabs/borrower.dart' as _secondTab;
import './tabs/home.dart' as _firstTab;
import './tabs/settings.dart' as _thirdTab;

void main() => runApp(new MaterialApp(
  title: 'fiercemob sharing app',
  theme: new ThemeData(
      primarySwatch: Colors.lightGreen,
    scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.lightGreen, backgroundColor: Colors.white
  ),
  home: new Tabs(),
  onGenerateRoute: (RouteSettings settings) {
    switch (settings.name) {
      case '/about': return new FromRightToLeft(
        builder: (_) => new _aboutPage.About(),
        settings: settings,
      );
      case '/support': return new FromRightToLeft(
        builder: (_) => new _supportPage.Support(),
        settings: settings,
      );
      case '/lending': return new FromRightToLeft(
        builder: (_) => new _lendingPage.Lending(),
        settings: settings,
      );
    }
  },
  // routes: <String, WidgetBuilder> {
  //   '/about': (BuildContext context) => new _aboutPage.About(),
  // }
));

class FromRightToLeft<T> extends MaterialPageRoute<T> {
  FromRightToLeft({ WidgetBuilder builder, RouteSettings settings })
    : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {

    if (settings.isInitialRoute)
      return child;

    return new SlideTransition(
      child: new Container(
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black26,
              blurRadius: 25.0,
            )
          ]
        ),
        child: child,
      ),
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      )
      .animate(
        new CurvedAnimation(
          parent: animation,
          curve: Curves.fastOutSlowIn,
        )
      ),
    );
  }
  @override Duration get transitionDuration => const Duration(milliseconds: 400);
}

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => new TabsState();
}

class TabsState extends State<Tabs> {
  
  PageController _tabController;

  var _title_app = null;
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new PageController();
    this._title_app = TabItems[0].title;
  }

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build (BuildContext context) => new Scaffold(

    //App Bar
    appBar: new AppBar(
      title: new Text(
        _title_app, 
        style: new TextStyle(
          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    ),

    //Content of tabs
    body: new PageView(
      controller: _tabController,
      onPageChanged: onTabChanged,
      children: <Widget>[
        new _firstTab.Home(),
        new _secondTab.Borrower(),
        new _thirdTab.Settings()
      ],
    ),

    //Tabs
    bottomNavigationBar: Theme.of(context).platform == TargetPlatform.iOS ?
      new CupertinoTabBar(
        activeColor: Colors.blueGrey,
        currentIndex: _tab,
        onTap: onTap,
        items: TabItems.map((TabItem) {
          return new BottomNavigationBarItem(
            title: new Text(TabItem.title),
            icon: new Icon(TabItem.icon),
          );
        }).toList(),
      ):
      new BottomNavigationBar(
        currentIndex: _tab,
        onTap: onTap,
        items: TabItems.map((TabItem) {
          return new BottomNavigationBarItem(
            title: new Text(TabItem.title),
            icon: new Icon(TabItem.icon),
          );
        }).toList(),
    ),

    //Drawer
    drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(
            height: 120.0,
            child: new DrawerHeader(
              padding: new EdgeInsets.all(0.0),
              decoration: new BoxDecoration(
                color: new Color(0xFFECEFF1),
              ),
              child: new Center(
                child: new Image.asset(
                    'lib/src/logo.png',
                    width: 250.0
                ),
              ),
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.chat),
            title: new Text('Support'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/support');
            }
          ),
          new ListTile(
              leading: new Icon(Icons.chat),
              title: new Text('Lending'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/lending');
              }
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text('Sign Out'),
            onTap: () {
              Navigator.pop(context);
            }
          ),
          AboutListTile(
            applicationName: 'Team fiercemob\'s sharing app',
            applicationIcon: new Icon(Icons.info),
            applicationVersion: '0.1',
            applicationLegalese: 'Developed during Openhack Gothenburg 2018. Team: Aron Sai, Ara Jafarzadeh, Mahmoud Hurria, Aswin Kumar Nagajaran, Martynas Lekeckas, Moritz Denke',
          ),
        ],
      )
    )
  );

  void onTap(int tab){
    _tabController.jumpToPage(tab);
  }

  void onTabChanged(int tab) {
    setState((){
      this._tab = tab;
    });

    switch (tab) {
      case 0:
        this._title_app = TabItems[0].title;
      break;

      case 1:
        this._title_app = TabItems[1].title;
      break;

      case 2:
        this._title_app = TabItems[2].title;
      break;
    }
  }
}

class TabItem {
  const TabItem({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<TabItem> TabItems = const <TabItem>[
  const TabItem(title: 'Borrow', icon: Icons.dashboard),
  const TabItem(title: 'Home', icon: Icons.nature_people),
  const TabItem(title: 'Settings', icon: Icons.settings)
];