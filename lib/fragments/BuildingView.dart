import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = "http://icbt360.epizy.com/app-files/index.html";

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BuildingView();
  }
}

class BuildingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BuildingViewState();
  }
}

class BuildingViewState extends State<BuildingView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: new ListView(
        children: <Widget>[new _CardView(), new _CardView(), new _CardView()],
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 3.0, top: 8.0),
      child: new Card(
        elevation: 10.0,
        child: new Column(
          children: [
            new Image.asset(
              'images/gym.jpg',
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            new Row(
              children: [
                new Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: new Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(15.0)),
                    ),
                    child: new Icon(
                      Icons.gavel,
                      color: Colors.white,
                    ),
                  ),
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        'Gymnasium',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'mermaid',
                        ),
                      ),
                      new Text(
                        'of the ICBT new building',
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'bebas-neue',
                          letterSpacing: 1.0,
                          color: const Color(0xFFAAAAAA),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: 2.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white,
                        const Color(0xFFAAAAAA),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: new Column(
                    children: [
                      new RaisedButton(
                          child: const Text(
                            'View',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.grey,
                          elevation: 4.0,
                          splashColor: Colors.blueGrey,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen()),
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      routes: {
        "/": (_) => new WebviewScaffold(
              url: url,
              withJavascript: true,
              withLocalStorage: true,

              appBar: new AppBar(
                title: new Text("360 Building View."),
                centerTitle: true,
              ),
            )
      },
    );
  }
}
