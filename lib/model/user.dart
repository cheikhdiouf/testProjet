import 'package:projet/database/connexindb.dart';

class User{
   late int id;
   late String email;
   late String password;
   User( this.id,this.email,this.password);

User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
    email = json['email'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnEmail: email,
      DatabaseHelper.columnPassword: password,
    };
  }
   
}