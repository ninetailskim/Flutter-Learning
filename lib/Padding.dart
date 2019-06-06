import 'package:flutter/material.dart';

class Charpter5 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Charpter5"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Padding"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new PaddingRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("ConstrainedBox\SizeBox"),
              onPressed: (){
                
              },
            ),
            RaisedButton(
              child: Text("DecoratedBox"),
              onPressed: (){
                
              },
            ),
            RaisedButton(
              child: Text("Transform"),
              onPressed: (){
                
              },
            ),
            RaisedButton(
              child: Text("Container"),
              onPressed: (){
                
              },
            ),
            RaisedButton(
              child: Text("Scaffold\TabBar\Bottom"),
              onPressed: (){
                
              },
            ),
          ],
        ),
      ), 
    );
  }
}

class PaddingRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Padding"), 
      ),
      body: Padding(
        padding: EdgeInsets.all(45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Hello world"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("I am Kim"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
              child: Text("Oh My God"),
            ),
          ],
        ),
      ),
    );
  }
}