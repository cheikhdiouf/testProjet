import 'package:flutter/material.dart';
import 'package:projet/ui/adresseinfo.dart';
import 'package:projet/ui/adress.dart';
import 'package:projet/ui/connexion.dart';
import 'package:projet/ui/coordonne.dart';
import 'package:projet/ui/qrcode.dart';
import 'package:projet/ui/scanner.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:Login(),

// les differentes liens de navigation entre les pages 
      routes: <String, WidgetBuilder>{
        '/coordonne': (BuildContext context) => Coordonne(),
         '/qrcode': (BuildContext context) => Qrcode(),
          '/scanner': (BuildContext context) => Scanner(),
        '/adresse': (BuildContext context) => Adresse(),
        '/info': (BuildContext context) => AdresseInfo(),
      
      },
    );
  }
}
