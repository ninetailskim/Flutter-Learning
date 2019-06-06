import 'package:flutter/material.dart';

class SAPRoute extends StatefulWidget{
  @override
  _SAPRouteState createState() => _SAPRouteState();
}

class _SAPRouteState extends State<SAPRoute>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("StackAndPositioned"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(child: Text("Hello world", style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Kim"),
            ),
            Positioned(
              top: 18.0,
              //left: 18.0,
              child: Text("Your friend"),
            ),
          ],
        ),
      ),
    );
  }
}