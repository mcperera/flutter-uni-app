import 'package:flutter/material.dart';
import 'package:done/fragments/AIAssistant.dart';
import 'package:done/fragments/BuildingView.dart';
import 'package:done/fragments/Inbox.dart';
import 'package:done/fragments/EventTimeline.dart';
import 'package:done/fragments/CourseDetails.dart';
import 'package:done/fragments/PlacesRecom.dart';
import 'package:done/fragments/ContactUS.dart';
import 'package:done/fragments/miniGame.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("AI Assistant", Icons.blur_on),
    new DrawerItem("Inbox", Icons.send),
    new DrawerItem("360 Building View.", Icons.camera_alt),
    new DrawerItem("Event Timeline.", Icons.timeline),
    new DrawerItem("Course Details.", Icons.format_align_left),
    new DrawerItem("Place Recommendation.", Icons.flag),
    new DrawerItem("Contact Us", Icons.phone_in_talk),
    new DrawerItem("Mini Game", Icons.videogame_asset),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new First();
      case 1:
        return new Second();
      case 2:
        return new Third();
      case 3:
        return new Fourth();
      case 4:
        return new Fifth();
      case 5:
        return new Sixth();
      case 6:
        return new Seventh();
      case 7:
        return new Eight();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topRight,
              color: Colors.redAccent,
              height: 24.0,
              child: new Text("Welcome to ICBT",
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            ),
            new UserAccountsDrawerHeader(
              accountName: new Text("Madushan Perera"),
              accountEmail: new Text("madushanperera1212@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Text("M", style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),),
                backgroundColor: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            new Column(children: drawerOptions),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
