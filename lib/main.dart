import 'package:flutter/material.dart';
import 'package:projet/ui/adress.dart';
import 'package:projet/ui/connexion.dart';
import 'package:projet/ui/qrcode.dart';


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


      routes: <String, WidgetBuilder>{
        '/qrcode': (BuildContext context) => Qrcode(),
        '/adresse': (BuildContext context) => Adresse(),
      
      },
    );
  }
}
