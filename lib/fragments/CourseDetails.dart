import 'package:flutter/material.dart';

class Fifth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new CourseDetails();
  }

}

class CourseDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CourseDetailsState();
  }
}

class CourseDetailsState extends State<CourseDetails>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Course Details..."),
            new Text("On the way..."),
          ],
        ),
      ),
    );
  }
}
