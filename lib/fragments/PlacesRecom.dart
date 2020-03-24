import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sixth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Place();
  }
}

class Place extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlaceState();
  }
}

class PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: new ListView(
        children: <Widget>[
          new _CardView(
            imgPath: 'images/Pizza.jpg',
            placeName: 'Pizza Hut',
            detailsPlace:
            'Address: No.06 D S Senanayake Veediya, Kandy.\nPhone: 0112 729 729',
            locationLink:
            'www.google.lk/maps/place/Pizza+Hut/@7.2968875,80.6217146,14.62z/data=!4m8!1m2!2m1!1spizza+hut+kandy!3m4!1s0x0:0xb18bb9b83e19ea51!8m2!3d7.2936023!4d80.6384897',
          ),
          new _CardView(
            imgPath: 'images/ShortEats.jpg',
            placeName: 'Rathnayake Bakers',
            detailsPlace:
            'Address: No.753 William Gopallawa Mawatha, Kandy.\nPhone: 0812 759 487',
            locationLink:
            'www.google.lk/maps/place/Ratnayake+Bakers/@7.3026735,80.6356318,20.12z/data=!4m12!1m6!3m5!1s0x3ae3662be8243d83:0x9c444506ec1ff527!2sKFC!8m2!3d7.2929212!4d80.6369823!3m4!1s0x3ae367d683d1a29b:0xe6285442f8ca443f!8m2!3d7.3027231!4d80.6356452',
          ),
          new _CardView(
            imgPath: 'images/KFC.jpg',
            placeName: 'KFC',
            detailsPlace:
            'Address: No.15 B Peradeniya Rd, Kandy.\nPhone: 0812 229 888',
            locationLink:
            'www.google.lk/maps/place/KFC/@7.2945303,80.6354636,16.38z/data=!4m12!1m6!3m5!1s0x3ae3662be8243d83:0x9c444506ec1ff527!2sKFC!8m2!3d7.2929212!4d80.6369823!3m4!1s0x3ae3662be8243d83:0x9c444506ec1ff527!8m2!3d7.2929212!4d80.6369823',
          ),
        ],
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  final String placeName;
  final String detailsPlace;
  final String imgPath;
  final String locationLink;

  _CardView(
      {this.placeName, this.detailsPlace, this.imgPath, this.locationLink});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding:
      const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 2.0, top: 8.0),
      child: new Card(
        elevation: 10.0,
        child: new Column(
          children: [
            new Image.asset(
              '$imgPath',
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 6.0, bottom: 8.0, top: 8.0),
              child: new Row(
                children: [
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          '$placeName',
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'mermaid',
                          ),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0)),
                        new InkWell(
                          child: new Text(
                            '$detailsPlace',
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'bebas-neue',
                              //letterSpacing: 1.0,
                              color: const Color(0xFFAAAAAA),
                            ),
                          ),
                          onTap: () => launch("tel://0772411990"),
                        ),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                      left: 2.0,
                    ),
                    child: new Column(
                      children: [
                        new FlatButton(
                          child: new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              new Padding(padding: const EdgeInsets.all(4.0)),
                              new Text(
                                "Find",
                                style: new TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          onPressed: () => launch("https://$locationLink"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
