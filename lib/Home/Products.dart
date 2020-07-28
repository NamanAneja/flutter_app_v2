import 'package:flutter/material.dart';
//import 'package:flutter_app/pages/product_details.dart';
//MY IMPORTS
import 'package:flutter_app_v2/Components/Loginpage.dart';
import 'package:flutter_app_v2/Pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "Amoxicillin",
      "picture": "images/Products/amoxicillin.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Azithromycin",
      "picture": "images/Products/azithromycin.jpg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Glucophage",
      "picture": "images/Products/glucophage.jpg",
      "old_price": 500,
      "price": 430,
    },
    {
      "name": "Hydrocodone",
      "picture": "images/Products/hydrocodone.jpg",
      "old_price": 620,
      "price": 280,
    },
    {
      "name": "Lipitor",
      "picture": "images/Products/lipitor.jpg",
      "old_price": 40,
      "price": 10,
    },
    {
      "name": "Lisinopril",
      "picture": "images/Products/lisinopril.jpg",
      "old_price": 1120,
      "price": 890,
    },
    {
      "name": "Norvasc",
      "picture": "images/Products/norvasc.png",
      "old_price": 96,
      "price": 69,
    },
    {
      "name": "Synthroid",
      "picture": "images/Products/synthroid.jpg",
      "old_price": 1020,
      "price": 690,
    },
    {
      "name": "Zocor",
      "picture": "images/Products/zocor.jpg",
      "old_price": 1200,
      "price": 300,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final prod_name;
  // ignore: non_constant_identifier_names
  final prod_pricture;
  // ignore: non_constant_identifier_names
  final prod_old_price;
  // ignore: non_constant_identifier_names
  final prod_price;

  Single_prod({
    // ignore: non_constant_identifier_names
    this.prod_name,
    // ignore: non_constant_identifier_names
    this.prod_pricture,
    // ignore: non_constant_identifier_names
    this.prod_old_price,
    // ignore: non_constant_identifier_names
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_pic: prod_pricture,
                    product_detail_newprice: prod_price,
                    product_detail_oldprice: prod_old_price,
                  ))), //=> Navigator.of(context).push(new MaterialPageRoute(
                  //builder: (context) => new ProductDetails())),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        " ₹ $prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        " ₹ $prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
