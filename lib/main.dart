import 'package:burc_rehberi/burc_liste.dart';
import 'package:flutter/material.dart';

void main() => runApp(myApp());



class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burç Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BurcListesi(),
    );
  }

}