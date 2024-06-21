import 'package:flutter/material.dart';

void main (){
  runApp(
    const MyApp()
  );
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/2019_09_Neues_Lager.jpg'),
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Playwrite',
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Lager-Login',
                style: TextStyle(
                  height: 3,
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 0, 0),
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                ),
                ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 700.0),
                child: ListTile(
                  leading: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.red,
                        size: 25,
                        ),
                        title:  Text(
                        'Username', 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        ) ,
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 700.0),
                child: ListTile(
                  leading: Icon(
                        Icons.key,
                        color: Colors.red,
                        size: 25,
                        ),
                        title:  Text(
                        'Password', 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        ) ,
                )
              )
             
            ],
           ),
        ),
      ),
    );
  }
}  

