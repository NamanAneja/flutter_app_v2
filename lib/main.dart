import 'package:flutter/material.dart';

//MY IMPORTS
import 'package:flutter_app_v2/Home/slideshow.dart';
import 'package:flutter_app_v2/Home/Horizontal_List.dart';
import 'package:flutter_app_v2/Home/Products.dart';
import 'package:flutter_app_v2/Home/Doctors.dart';
import 'package:flutter_app_v2/Components/Loginpage.dart';

void main() {
  runApp(new MaterialApp(home: Homepage()));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: new Text('Medicose'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text('Username'),
            accountEmail: Text('Email address'),
            currentAccountPicture: GestureDetector(
              child: InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new Loginpage())),
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Homepage())),
            child: new ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.account_circle),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_cart),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('Customer Service'),
              leading: Icon(Icons.collections_bookmark),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('Feedback'),
              leading: Icon(Icons.rate_review),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Loginpage())),
            child: new ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),
        ]),
      ),
      body: new ListView(
        children: <Widget>[
          //Image carousel
          new Container(
            height: 200,
            child: Slideshow(),
          ),

          // TEXT (CATEGORY)
          new Container(
              height: 30,
              decoration: const BoxDecoration(color: Colors.blue),
              child: new Center(
                child: new Text(
                  'Category',
                  style: new TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              )),

          //Horizontal List
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(13.00),
          ),

          //TEXT (RECOMMENDED FOR YOU)
          new Container(
              height: 30,
              decoration: const BoxDecoration(color: Colors.blue),
              child: new Center(
                child: new Text(
                  'Recommended For You',
                  style: new TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              )),

          //Grid_recommended
          new Container(
            height: 400.0,
            child: Products(),
          ),

          //TEXT (DOCTORS NEARBY)
          new Container(
              height: 30,
              decoration: const BoxDecoration(color: Colors.blue),
              child: new Center(
                child: new Text(
                  'Doctors Nearby',
                  style: new TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              )),

          new Padding(
            padding: const EdgeInsets.all(13.00),
          ),

          //Grid_recommended
          new Container(
            height: 400.0,
            child: Doctors(),
          ),
        ],
      ),
    );
  }
}
