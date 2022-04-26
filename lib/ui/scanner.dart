import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  const Scanner({ Key? key }) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
       appBar: AppBar
       (
          
        elevation: 4,
        
        backgroundColor: Colors.white30,
  
      ),
    
 body: Center
      
      (
          child: Column(
        children: [
         
          SizedBox(
            height: 26.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
                "assets/images/fin.png",
                width: 150,
                height: 200,
                fit: BoxFit.fill),
          ),
          SizedBox(
            height: 5,
          ),
           ElevatedButton(
            child: Text("Valider"),
            onPressed: () {
              //Navigator.pushNamed(context, '/changePasswd');
              Navigator.of(context).pushNamed('/qrcode');
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