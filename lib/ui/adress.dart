import 'package:flutter/material.dart';

class Adresse extends StatefulWidget {
  const Adresse({ Key? key }) : super(key: key);

  @override
  State<Adresse> createState() => _AdresseState();
}

class _AdresseState extends State<Adresse> {
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
  //
	   	child: Container(
         
			child: Padding
      (
			padding: const EdgeInsets.all(14.0),
			child: Column(
			children: <Widget>[
        Card(
            margin: const EdgeInsets.fromLTRB(50.0, 5.0, 40.0, 5.0),
            color: Colors.white,
            child: const ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              title: Text('Adresse plaque 06 Rue Abdoulaye Seck Marie Parsine, CP : 13000 Dakar, Sénégal',
                  style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.home,),
            ),
          ),

SizedBox(height: 12,),
        	Flexible(
				flex: 1,
       
				fit: FlexFit.tight,
				child: Row(
					children: <Widget>[
					Flexible(
						flex: 1,
						fit: FlexFit.tight,
						child: Container(
						decoration: BoxDecoration(
							borderRadius: BorderRadius.circular(10),
							color: Colors.black12,
              
						), //BoxDecoration
						), //Container
					), //Flexible
					SizedBox(
						width: 20,
					), //SizedBox
					Flexible(
						flex: 1,
						fit: FlexFit.tight,
						child: Container(
							decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(10),
									color: Colors.black12,
						) //BoxDecoration
							), //Container
					) //Flexible
					], //<Widget>[]
					mainAxisAlignment: MainAxisAlignment.center,
				), //Row
				), 
        //Flexible
				SizedBox(
				height: 20,
				), 
        
       	Flexible(
				flex: 1,
				fit: FlexFit.tight,
				child: Row(
					children: <Widget>[
					Flexible(
						flex: 1,
						fit: FlexFit.tight,
						child: Container(
						decoration: BoxDecoration(
							borderRadius: BorderRadius.circular(10),
										color: Colors.black12,
						), //BoxDecoration
						), //Container
					), //Flexible
					SizedBox(
						width: 20,
					), //SizedBox
					Flexible(
						flex: 1,
						fit: FlexFit.tight,
						child: Container(
              	width: 380,
					height: 200,
							decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(10),
									color: Colors.black12,
						) //BoxDecoration
							), //Container
					) //Flexible
					], //<Widget>[]
					mainAxisAlignment: MainAxisAlignment.center,
          
), //Row
				),  
       
				SizedBox(
				height: 20,
				), //SizedBox
				Flexible(
				flex: 2,
				fit: FlexFit.tight,
				child: Row(
					children: <Widget>[
				 //Flexible
					SizedBox(
						width: 20,
					), //SizedBox
				//Flexible
					], //<Widget>[]
					mainAxisAlignment: MainAxisAlignment.center,
				), //Row
				), //Flexible
			], //<Widget>[]
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			crossAxisAlignment: CrossAxisAlignment.center,
			), //Column


      
		) //Padding
    
			), //Container


      
		) //Container

    );
  }
}