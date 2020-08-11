import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

pullname(imgname) async{
   var url = "http://192.168.43.229/cgi-bin/pull.py?imgname=${imgname}";
    var response = await http.get(url);
    print(response.body);
  }
  demo(){
    runApp(push());
  }
 dlogin(uname,pass) async{
      var url = "http://192.168.43.229/cgi-bin/dockerlogin.py?uname=${uname}&passd=${pass}";
    var response = await http.get(url);
    print(response.body);
     demo(); }
  dpush(img,tag) async{
      var url = "http://192.168.43.229/cgi-bin/push.py?imgname=${img}&tag=${tag}";
    var response = await http.get(url);
    print(response.body);
  }
 
String ImgName;
String user;
String passwd;
String push_image;
String tag;
pnp(){
  var myappbar = AppBar(
    title: Text('DockerApp'),
  );
  var mybody= Container(
    alignment: Alignment.center ,
    height: double.infinity,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      child: Column(
       children: <Widget>[
          Container(
            child: FlatButton(
                    onPressed: () {
                       
                      // print(cmd);
                    },
                    child: Text('Image list')),
            ),
             Container(
            child: FlatButton(
                    onPressed: () {
                       runApp(pullImage());
                      // print(cmd);
                    },
                    child: Text('Pull the image')),
            ),
             Container(
            child: FlatButton(
                    onPressed: () {
                 runApp(docklogin());
                     

                      // print(cmd);
                    },
                    
                    child: Text('push The image')),
            ),
       ],
        ),
    ),
    );
  var myhome = Scaffold(
    appBar: myappbar,
    body: mybody,
  );
  return MaterialApp(home: myhome,debugShowCheckedModeBanner:false,);

}
pullImage(){

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
                    ImgName=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Image Name',
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
                    pullname(ImgName);
                  
                      // print(cmd);
                    },
                    child: Text('Pull')),),
     ],
    ),
  ),);
    var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome);

}
docklogin() {
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
                    user=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Docker id',
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
         margin: EdgeInsets.all(10),
         alignment: Alignment.center,
         child:
         TextField(
                 obscureText: true,
                 onChanged: (value){
                    passwd=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Docker Password',
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
                  
                         dlogin(user,passwd);
                            

                      // print(cmd);
                    },
                    child: Text('Login')),),
     ],
    ),
  ),);
    var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome,);

}
push(){
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
                    push_image=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'Image name',
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
         margin: EdgeInsets.all(10),
         alignment: Alignment.center,
         child:
         TextField(
                
                 onChanged: (value){
                    tag=value;
                
                 },
                 autocorrect: false,
                cursorColor: Colors.black,
                
                 decoration: InputDecoration(
                   
                   hintText: 'tag name',
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
                  
                          dpush(push_image,tag);
                      // print(cmd);
                    },
                    child: Text('push')),),
     ],
    ),
  ),);
    var bhome = Scaffold(
    appBar: bappbar,
    body: bbody,
  );
  return MaterialApp(home: bhome);
}

