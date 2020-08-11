
import 'package:flutter/material.dart';
import 'home.dart';
import 'basic.dart';
import 'pushnpull.dart';
Widget mainApp(){
    var Myappbar= AppBar(
    title: Text('DockerApp'),
  );
  var Mybody = Container(
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
    child: Column(
  children: <Widget>[
    Column(
      children: <Widget>[
        Container(
                          alignment: Alignment.center,

          child: Row(
            children: <Widget>[
              Container(
                margin:EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.blue,
                height: 150,
                width: 195,
                child: FlatButton(
                    onPressed: () {
                   runApp(myapp());
                      // print(cmd);
                    },
                    child: Text('Docker run')),
              ),
               Container(
                margin:EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.blue,
                height: 150,
                width: 195,
                child: FlatButton(
                    onPressed: () {
                   runApp(basic());
                      // print(cmd);
                    },
                    child: Text('docker basic')),
              ),],),),
              Container(
                          alignment: Alignment.center,

          child: Row(
            children: <Widget>[
              Container(
                margin:EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.blue,
                height: 150,
                width: 195,
                child: FlatButton(
                    onPressed: () {
                   runApp(pnp());
                      // print(cmd);
                    },
                    child: Text('push & Pull the Image')),
              ),],),),
            
          
      
      ]
    )
  ],
    
    ),
  );
var myhome = Scaffold(
    appBar: Myappbar,
    body: Mybody,
  );
  return MaterialApp(home: myhome);
}