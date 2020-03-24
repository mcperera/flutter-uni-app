import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = 'http://icbt-basketball.epizy.com';

class Eight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return new MiniGame();
    return new Games();
  }
}

class Games extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
              child: const Text(
                "Let's play Basketball",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.grey,
              elevation: 4.0,
              splashColor: Colors.blueGrey,
              onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Basketball()),);
                  }
          ),
        ],
      ),
    );
  }
}

class Basketball extends StatelessWidget{
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
           title: new Text("Basketball."),
           centerTitle: true,
         ),
       )
     },
   );
 }
}

//class MiniGame extends StatefulWidget {
// @override
// State<StatefulWidget> createState() {
//   return new MiniGameState();
// }
//}
//
//class MiniGameState extends State<MiniGame> {
// @override
// Widget build(BuildContext context) {
//   return new Scaffold(
//     backgroundColor: Color.fromARGB(250, 66, 75, 94),
//     body: new Stack(
//       children: <Widget>[
//         new Container(
//           decoration: new BoxDecoration(
//             image: new DecorationImage(
//               image: new AssetImage('images/games.gif'),
//               fit: BoxFit.fitWidth,
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
//}