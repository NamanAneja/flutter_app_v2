import 'package:flutter/material.dart';

//MY IMPORTS
import 'package:flutter_app_v2/Components/Loginpage.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            Image_Location: 'images/Category/Pill.jpg',
            image_caption: 'Medicine',
          ),
          Category(
            Image_Location: 'images/Category/Doctor.jpg',
            image_caption: 'Appointment',
          ),
          Category(
            Image_Location: 'images/Category/Emergency.png',
            image_caption: 'Emergency',
          ),
          Category(
            Image_Location: 'images/Category/Feedback.png',
            image_caption: 'Feedback',
          ),
          Category(
            Image_Location: 'images/Category/Help.jpg',
            image_caption: 'Help',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Image_Location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  // ignore: non_constant_identifier_names
  Category({this.Image_Location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new Loginpage())),
          child: Container(
            width: 100,
            child: ListTile(
              title: Image.asset(
                Image_Location,
                width: 100.00,
                height: 80.00,
              ),
              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    image_caption,
                    style: new TextStyle(fontSize: 11.00),
                  )),
            ),
          ),
        ));
  }
}
