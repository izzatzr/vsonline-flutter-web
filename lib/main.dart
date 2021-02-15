import 'package:flutter/material.dart';

void main() => runApp(init());

Widget init() => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Flutter Demo Home Page'),
    );

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var tabs = ['Dashboard', 'Profile', 'History'].map((e) => Text(e)).toList();

  @override
  Widget build(context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                    title: Text('Item 1'), onTap: () => Navigator.pop(context)),
                ListTile(
                    title: Text('Item 2'), onTap: () => Navigator.pop(context)),
              ],
            ),
          ),
          body: SafeArea(
              child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Available seats'),
                  background: Image.network(
                    'https://r-cf.bstatic.com/images/hotel/max1024x768/116/116281457.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ],
          )),
        ),
      );
}
