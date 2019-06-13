import 'package:flutter/material.dart';
import 'dart:math' as math;

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
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new ConstrainedBoxRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("DecoratedBox"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new DecoratedBoxRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("Transform"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new TransformRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("Container"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new ContainerRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("Scaffold\TabBar\Bottom"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new ScaffoldRoute();
                }));
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

class ConstrainedBoxRoute extends StatelessWidget{
  final Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox and SizedBox"),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints:BoxConstraints(
              minWidth: double.infinity,
              minHeight: 50.0
            ),
            child:Container(
              height: 5.0,
              child: redBox,
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: redBox,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 10.0),
              child: redBox,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child:redBox,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DecoratedBoxRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox"),
      ),
      body: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
              borderRadius: BorderRadius.circular(3.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                ),
              ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text("Login", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}


class TransformRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: new Transform(
              alignment: Alignment.topRight,
              transform: new Matrix4.skewY(0.3),
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text("Apartment for rent"),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.translate(
              offset: Offset(-20.0, -5.0),
              child: Text("Hello world"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.rotate(
              angle: math.pi/2,
              child: Text("Hello world"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.scale(
              scale: 1.5,
              child: Text("Hello world"),
            ),
          ),
        ],
      ),
    );
  }
}

//layout 阶段
//render 阶段
//need more test

class ContainerRoute extends StatelessWidget{
  //width, height 和 constraints 互斥
  //color 和 decoration 互斥
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 120.0),
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0
                  )
                ]
              ),
              transform: Matrix4.rotationZ(.2),
              alignment: Alignment.center,
              child: Text("5.20", style:TextStyle(color: Colors.white, fontSize: 40.0)),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text("Hello world"),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text("Hello world"),
            ),
          ],
        ), 
      ),
    );
  }
}

class ScaffoldRoute extends StatefulWidget{
  @override
  _ScaffoldRouteState createState()=> _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute>{
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed:(){}),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单  
              Scaffold.of(context).openDrawer(); 
            },
          );
        }),
      ),
      drawer:  new MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title:Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.business), title:Text("Business")),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("School")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
    );
  }
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  void _onAdd(){
    print("you click me~");
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "imgs/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}