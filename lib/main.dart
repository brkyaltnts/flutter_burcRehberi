import 'package:burc_rehberi/burc_liste.dart';
import 'package:flutter/material.dart';
import 'package:burc_rehberi/burc_detay.dart';

void main() => runApp(myApp());


class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burç Rehberi",
      initialRoute: "/burcListesi",

      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1] == 'burcDetay'){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }

}