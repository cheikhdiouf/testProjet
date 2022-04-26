import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '');
            },
            child: Text('FindMe'),
          ),
          SizedBox(
            width: 90,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/info');
            },
            child: Text('Activer le flash'),
          ),
          SizedBox(
            width: 90,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/coordonne');
            },
            child: Text('Annuler'),
          ),
        ],
        elevation: 7,
        backgroundColor: Colors.white30,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 126.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
              "assets/images/fin.png",
              width: 250,
              height: 200,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      )),
    );
  }
}
