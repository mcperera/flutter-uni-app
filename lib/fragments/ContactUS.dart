import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Seventh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Contact();
  }
}

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ContactState();
  }
}

class ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new ListView(
          children: <Widget>[
            new Person(
              personName: "Kavinda Ayesh",
              contactNumber: 777966852,
            ),
            new Person(
              personName: "Shazni Shirz",
              contactNumber: 768854143,
            ),
            new Person(
              personName: "Ilma Fazil",
              contactNumber: 776574899,
            ),
            new Person(
              personName: "Habeeb Rafeek",
              contactNumber: 778575370,
            ),
            new Person(
              personName: "Madushan Perea",
              contactNumber: 772411990,
            ),
            new Person(
              personName: "Chandima Perea",
              contactNumber: 772411990,
            ),
          ],
        ),
      ),
    );
  }
}

class Person extends StatelessWidget {

  final String personName;
  final int contactNumber;

  Person({
    this.personName,
    this.contactNumber,
  });

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: new Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Container(
                padding: const EdgeInsets.all(7.0),
                decoration: new BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
                ),
                child: new Icon(
                  Icons.account_box,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    '$personName',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'mermaid',
                    ),
                  ),
                  new Text(
                    '+94$contactNumber',
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'bebas-neue',
                      letterSpacing: 1.0,
                      color: const Color(0xFFAAAAAA),
                    ),
                  ),
                ],
              ),
            ),
            new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Column(
                  children: <Widget>[
                    new FlatButton(
                      onPressed: () => launch("tel://$contactNumber"),
                      child: new Icon(Icons.call),
                    ),
                    new FlatButton(
                      onPressed: () => launch("sms://$contactNumber"),
                      child: new Icon(Icons.message),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
//onPressed: () => launch("tel://$contactNumber"),