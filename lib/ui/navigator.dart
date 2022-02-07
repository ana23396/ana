import 'package:ana/const/appcolor.dart';
import 'package:ana/navigator/addtocart.dart';
import 'package:ana/navigator/favorite.dart';
import 'package:ana/navigator/homepage.dart';
import 'package:ana/navigator/profile.dart';
import 'package:flutter/material.dart';

class Homewidget extends StatefulWidget {
  const Homewidget({ Key? key }) : super(key: key);

  @override
  _HomewidgetState createState() => _HomewidgetState();
}

class _HomewidgetState extends State<Homewidget> {
  @override
  var indexpage =0 ;
  final Page = [
    Homepage(),
    Favoritewidget(),
    Cartwidget(),
    Profilewidget(),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor.mycolor,
        title: Text("E-Commerce"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          
        ],
        onTap: (index){
          setState(() {
            indexpage = index;
          });
        },
        ),
        body: Page [indexpage],
     ),
      
    );
  }
}