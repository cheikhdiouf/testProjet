import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        
      ),
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
                    margin: EdgeInsets.fromLTRB(105, 20, 50, 0),
                    height: 160,
                    width: 160,
                    
                    child: new Image.asset('assets/images/c982b0a21ed2f3c540da81565e2f7121f921e3c5.png'),
                  ) 
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "Identifiant",
                          hintStyle: TextStyle(
                            color: Colors.blue, // <-- Change this
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "Mot de passe",
                          hintStyle: TextStyle(
                            color: Colors.blue, // <-- Change this
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                child: Text("valider"),
                 onPressed: () {
                      //Navigator.pushNamed(context, '/changePasswd');
                      Navigator.of(context).pushNamed('/coordonne');
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
