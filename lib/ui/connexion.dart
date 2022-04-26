import 'package:flutter/material.dart';
import 'package:projet/database/connexindb.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _email;
  late String _password;
  final _formKey = GlobalKey<FormState>();

  final dbHelper = DatabaseHelper.instance;
  final myControllerEmail = TextEditingController();

  final myControllerPassword = TextEditingController();

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
      body: Column(
        key: _formKey,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(
                'assets/images/c982b0a21ed2f3c540da81565e2f7121f921e3c5.png'),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    ListTile(
                      title: TextField(
                        controller: myControllerEmail,
                        decoration: InputDecoration(
                          hintText: "Identifiant",
                          hintStyle: TextStyle(
                            color: Colors.blue,
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
                        controller: myControllerPassword,
                        decoration: InputDecoration(
                          hintText: "Mot de passe",
                          hintStyle: TextStyle(
                            color: Colors.blue,
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
              //button de validation du formulaire
              ElevatedButton(
                child: Text("valider"),
                onPressed: () {
                  Navigator.of(context).pushNamed('/coordonne');
                  _insertUser();

                  print(_email);
                  print(_password);
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

//INSERER LES INFORMATION DE L'UTILISATEUR
  _insertUser() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnPassword: _password,
      DatabaseHelper.columnEmail: _email
    };
    var dbHelper;
    final id = await dbHelper.insertUser(row);
    print(' utilisateur  a pour  id   $id');
  }
}
