import 'package:flutter/material.dart';
//import 'package:flutter_app/pages/doctor_details.dart';
//MY IMPORTS
import 'package:flutter_app_v2/Components/Loginpage.dart';

class Doctors extends StatefulWidget {
  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  // ignore: non_constant_identifier_names
  var doctor_list = [
    {
      "name": "Amox",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Azith",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Glucopha",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Hydroco",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Li",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Lisinop",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Nor",
      "picture": "images/Category/Doctor.jpg",
    },
    {
      "name": "Synth",
      "picture": "images/Category/Doctor.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: doctor_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_doctor(
            prod_name: doctor_list[index]['name'],
            prod_picture: doctor_list[index]['picture'],
          );
        });
  }
}

// ignore: camel_case_types
class single_doctor extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final prod_name;
  // ignore: non_constant_identifier_names
  final prod_picture;

  single_doctor({
    // ignore: non_constant_identifier_names
    this.prod_name,
    // ignore: non_constant_identifier_names
    this.prod_picture,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new Loginpage())) /*=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new DoctorDetails()))*/,
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
