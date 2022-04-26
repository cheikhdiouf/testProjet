import 'package:flutter/material.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/80f276c903995b9c63decfcccb01ba22e198b73e.png',
             width: 200,
             height: 100,
            ),
          ],
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 26.0,
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(50.0, 5.0, 40.0, 5.0),
            color: Colors.white,
            child: const ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              title: Text('http/Infos.house/sen/aid/ adresse',
                  style: TextStyle(color: Color(0xff238c00))),
              trailing: Icon(Icons.question_answer_outlined),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text("Retour"),
            onPressed: () {
              //Navigator.pushNamed(context, '/changePasswd');
              Navigator.of(context).pushNamed('/info');
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
