import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
myapp(){
  String imgname;
  String contname;
  String sport;
  String tport;
  web(image,container,port1,port2) async{
    var url = "http://192.168.43.21/cgi-bin/web.py?img=${image}&cont=${container}&cport=${port1}&tport=${port2}";
    var response = await http.get(url);
    print(response.body);
  }
  var myappbar= AppBar(
    title: Text('DockerApp'),
  );
   var mybody= Container(
        width: double.infinity,
        height: double.infinity,
         child: Container(

           width:double.infinity,
           height: double.infinity,

           color:Colors.black,
           child: Column(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.all(10),
                alignment: Alignment.center,
   
              
                 color: Colors.black,
                 child:
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                 
               Container(
                margin: EdgeInsets.all(3),
              child:
               TextField(
                 onChanged: (value){
                   imgname=value;
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'enter Image name',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 20.0),
               ),),
                              Container(
                margin: EdgeInsets.all(3),
              child:
                TextField(
                  onChanged: (value){
                   contname=value;
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'enter Container name',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 20.0),
               ),),
                              Container(
                margin: EdgeInsets.all(3),
              child:
                TextField(
                  onChanged: (value){
                   sport=value;
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'System port',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 25.0),
               ),),
                              Container(
                margin: EdgeInsets.all(5),
              child:
                TextField(
                  onChanged: (value){
                   tport=value;
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Enter port number you want to expose',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 25.0),
               )),
               Container(
                margin: EdgeInsets.all(3),
                color: Colors.white,
                child:
               FlatButton(
                    onPressed: () {
                      web(imgname,contname,sport,tport);
                  
                      // print(cmd);
                    },
                    child: Text('Submit')),),
                   ],
               
                 ),
               ),
             ],

           ),
         ),
      );
    
  var myhome = Scaffold(
    appBar: myappbar,
    body: mybody,
  );
  return MaterialApp(home: myhome);
}