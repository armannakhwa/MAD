import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arman Nakhwa',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Portfolio"),
        ),
        body: new Center(
          child: new ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0),
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0),
                ),
                child: Image.asset("assets/images/arman.jpg",
                    height: 250, fit: BoxFit.contain),
                //  Text("Arman Nakhwa",style:TextStyle(color:Color.fromRGBO(1, 22, 55, 1) ))
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Name: Arman Nakhwa'),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Branch: IT'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Mob: 976382****'),
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: Text('Website: armannakhwa.cf'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
