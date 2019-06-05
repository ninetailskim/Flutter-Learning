import 'package:flutter/material.dart';

class FlowoutRoute extends StatefulWidget{
  @override
  _FlowoutRouteState createState() => new _FlowoutRouteState();
}

class _FlowoutRouteState extends State<FlowoutRoute>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("FlowOutTest"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello World!"),
              Text("I am kim"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello World!"),
              Text("I am kim"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("Hello World!"),
              Text("I am kim"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text("Hello World!", style: TextStyle(fontSize: 30.0),),
              Text("I am kim"),
            ],
          ),
          Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text("Hello World!~~~~~!!!!~~~"),
                        Text("I am kim"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}