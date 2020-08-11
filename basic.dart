
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
rmc(contid) async{
   var url = "http://192.168.43.229/cgi-bin/rmc.py?contId=${contid}";
    var response = await http.get(url);
    print(response.body);
  }
rmi(img) async{
   var url = "http://192.168.43.229/cgi-bin/rmi.py?imgId=${img}";
    var response = await http.get(url);
    print(response.body);
  }
String containername;
String Imagename;
basic(){
  ps() async{
   var url = "http://192.168.43.229/cgi-bin/ps.py";
    var response = await http.get(url);
    print(response.body);
  }
    ls() async{
   var url = "http://192.168.43.229/cgi-bin/ls.py";
    var response = await http.get(url);
    print(response.body);
  }
      Imglist() async{
   var url = "http://192.168.43.229/cgi-bin/imglist.py";
    var response = await http.get(url);
    print(response.body);
  }

  var bappbar= AppBar(
    title: Text('DockerApp'),
  );
  var bbody=Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.black54,
    child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Container(
            child: FlatButton(
                    onPressed: () {
                       ps();
                      // print(cmd);
                    },
                    child: Text('Docker run')),
            ),
          Container(
            child: FlatButton(
                    onPressed: () {
                       ls();
                      // print(cmd);
                    },
                    child: Text('Container list')),
            ),
          Container(
            child: FlatButton(
                    onPressed: () {
                      runApp(remaoveC());
                      // print(cmd);
                    },
                    child: Text('delete container')),
            ),
            Container(
            child: FlatButton(
                    onPressed: () {
                      Imglist();
                      // print(cmd);
                    },
                    child: Text('Image List')),
            ),
            Container(
            child: FlatButton(
                    onPressed: () {
                      runApp(remaoveI());
                      // print(cmd);
                    },
                    child: Text('Remove Image')),
            ),
        ],
      )
    ),
  );
  
  var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome);

}
remaoveC(){

  var bappbar= AppBar(
    title: Text('DockerApp'),
  );
  var bbody = Container(alignment: Alignment.center,
  height: double.infinity,
  width: double.infinity,
  child: Container(
    alignment: Alignment.center,
    height: double.infinity,
    width:double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

     children: <Widget>[
       Container(
         margin: EdgeInsets.all(10),
         alignment: Alignment.center,
         child:
         TextField(
                 onChanged: (value){
                    containername=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Container name OR container ID',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 20.0),
               ),
       ),
        Container(
          alignment: Alignment.center,
                margin: EdgeInsets.all(3),
              
                child:
               FlatButton(
                    onPressed: () {
                    rmc(containername);
                  
                      // print(cmd);
                    },
                    child: Text('Remove')),),
     ],
    ),
  ),);
    var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome);

}
remaoveI(){

  var bappbar= AppBar(
    title: Text('DockerApp'),
  );
  var bbody = Container(alignment: Alignment.center,
  height: double.infinity,
  width: double.infinity,
  child: Container(
    alignment: Alignment.center,
    height: double.infinity,
    width:double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

     children: <Widget>[
       Container(
         margin: EdgeInsets.all(10),
         alignment: Alignment.center,
         child:
         TextField(
                 onChanged: (value){
                    Imagename=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Image name OR  ID',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.tablet_android,color: Colors.black,),
                   filled: true,
                   fillColor: Colors.white,
                 ),
                 style: TextStyle(color: Colors.black,fontSize: 20.0),
               ),
       ),
        Container(
          alignment: Alignment.center,
                margin: EdgeInsets.all(3),
              
                child:
               FlatButton(
                    onPressed: () {
                    rmi(Imagename);
                  
                      // print(cmd);
                    },
                    child: Text('Remove')),),
     ],
    ),
  ),);
    var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome);

}