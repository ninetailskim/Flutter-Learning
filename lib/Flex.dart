import 'package:flutter/material.dart';

class FlexRoute extends StatefulWidget{
  @override
  _FlexRouteState createState() => _FlexRouteState();
}

class _FlexRouteState extends State<FlexRoute>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex"),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 30.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Padding(
            //what the fuck? the heights are same, but the flexes are different
            padding: const EdgeInsets.only(top:20.0),
            child: SizedBox(
              height: 100.0,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                      // decoration: BoxDecoration(
                      //   border: Border(),
                      // ),
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