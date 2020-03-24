import 'package:flutter/material.dart';

class Fourth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new EventTimeline();
  }

}

class EventTimeline extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EventTimelineState();
  }
}

class EventTimelineState extends State<EventTimeline>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Events Timeline..."),
            new Text("On the way..."),
          ],
        ),
      ),
    );
  }
}
