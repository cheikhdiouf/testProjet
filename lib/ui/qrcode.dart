import 'package:flutter/material.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({ Key? key }) : super(key: key);

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column
      (
        
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Row(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    margin: EdgeInsets.fromLTRB(165, 0, 10, 0),
                    height: 160,
                    width: 200,
                    child: new Image.asset('assets/images/80f276c903995b9c63decfcccb01ba22e198b73e.png'),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                child: Text("Retour"),
                 onPressed: () {
                      //Navigator.pushNamed(context, '/changePasswd');
                      Navigator.of(context).pushNamed('/adresse');
                    },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  primary: Colors.green[400],
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              )
            ],
          ),
        ],
      ),


      
    );
  }
}
