import 'package:flutter/material.dart';

class WAFRoute extends StatefulWidget{
  @override
  _WAFRouteState createState() => _WAFRouteState();
}

class _WAFRouteState extends State<WAFRoute>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body:Column(
        children:<Widget>[
          Wrap(
            children: <Widget>[
              Text("xxx" * 100)
            ],
          ),
          Wrap(
            spacing: 30.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.start,
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue,child:Text("A")),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue,child:Text("M")),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue,child:Text("H")),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue,child:Text("J")),
                label: new Text('Laurens'),
              ),
            ],
          ),
        ],
      ), 
    );
  }
}