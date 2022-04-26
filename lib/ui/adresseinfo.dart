import 'package:flutter/material.dart';

class AdresseInfo extends StatefulWidget {
  const AdresseInfo({ Key? key }) : super(key: key);

  @override
  State<AdresseInfo> createState() => _AdresseInfoState();
}

class _AdresseInfoState extends State<AdresseInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/80f276c903995b9c63decfcccb01ba22e198b73e.png',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Center
      
      (
          child: Column(
        children: [


          CircleAvatar(
            radius: 56,
  backgroundImage: NetworkImage("assets/images/f7873fe3bef5917129119ba893499c015fc881c5.png"),
),
          // CircleAvatar(
          //   radius: 56,
          //   backgroundColor: Colors.black12,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8), // Border radius
          //     child: ClipOval(
          //         child: Image.network(
          //             "assets/images/f7873fe3bef5917129119ba893499c015fc881c5.png")),
          //   ),
          // ),
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
                fit: BoxFit.fill),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              width: 300.0,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      
                      hintText: 'http/Infos.house/sen/aid/ adresse',),
                  style: TextStyle(
                      fontSize: 10.0, height: 1.0, color: Colors.red))),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text("Valider"),
            onPressed: () {
              //Navigator.pushNamed(context, '/changePasswd');
              Navigator.of(context).pushNamed('/adresse');
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
      )
      ),


    );
  }
}
