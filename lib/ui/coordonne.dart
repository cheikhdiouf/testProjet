import 'package:flutter/material.dart';

class Coordonne extends StatefulWidget {
  const Coordonne({Key? key}) : super(key: key);

  @override
  State<Coordonne> createState() => _CoordonneState();
}

class _CoordonneState extends State<Coordonne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.dangerous,
        color: Colors.red,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),

        
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
                'assets/images/80f276c903995b9c63decfcccb01ba22e198b73e.png',// assets/image
                width: 200,
                height: 30,
                fit: BoxFit.fill),
          ),
          SizedBox(
            height: 12,
          ),
          CircleAvatar(
            radius: 56,
            backgroundImage: NetworkImage(
                "assets/images/f7873fe3bef5917129119ba893499c015fc881c5.png"),
          ),
        
          SizedBox(
            height: 26.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
                "assets/images/5106630ee91e6fd3c1a4f15303b5fc0ac68b170e.png",
                width: 100,
                height: 100,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              width: 300.0,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemple : Infos.house/sen/aid/ adresse'),
                  style: TextStyle(
                      fontSize: 10.0, height: 1.0, color: Colors.black))),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text("Valider"),
            onPressed: () {
              //Navigator.pushNamed(context, '/changePasswd');
              Navigator.of(context).pushNamed('/scanner');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              primary: Colors.green[400],
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          )
        ],
      )),
    );
  }
}
