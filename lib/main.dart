import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_page":(context)=>NewRoute(),
        "switch_checkbox":(context)=>SwitchAndCheckBoxRoute(),
        "myform":(context)=>MyFormRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green
              ),
            ),
            Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("Open new route"),
              textColor: Colors.blue,
              onPressed: (){
                //Navigator.push( context, 
                //  new MaterialPageRoute(builder: (context){
                 //   return new NewRoute();
                //}));
                Navigator.pushNamed(context, "new_page");
              },
            ),
            RaisedButton(
              child: Text("Normal"),
              onPressed: ()=> {
                Navigator.pushNamed(context, "switch_checkbox")
              },
            ),
            // FlatButton(
            //   child: Text("normal"),
            //   onPressed: ()=>{},
            // ),
            // OutlineButton(
            //   child: Text("normal"),
            //   onPressed: ()=>{},
            // ),
            // IconButton(
            //   icon:Icon(Icons.thumb_up),
            //   onPressed: ()=>{},
            // ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child:Text("Submit"),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: ()=>{
                Navigator.pushNamed(context, "myform")
              },
            ),
            RandomWordsWidget(),
            // Image(
            //   image:AssetImage("images/canvas.png"),
            //   width: 100.0
            //   //202.19
            // ),
            Image.asset("images/canvas.png", width:100.0,),
            // Image(
            //   image:NetworkImage(
            //    "https://i1.hdslb.com/bfs/face/c93e1eeb77b1bb0753eff243d49c006bf18d69c5.png" 
            //   ),
            //   width:100.0,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("New route"),
      ),
      body:Center(
        child: Text("This is new route"),
        ),
      );
  }
}


class RandomWordsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class SwitchAndCheckBoxRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("SwitchAndCheckBox"),
      ),
      body: Center(
        child: SwitchAndCheckBoxTestRoute(),
        ),
      );
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget{
  @override
  _SwitchAndCheckBoxTestRouteState createState() => new _SwitchAndCheckBoxTestRouteState();
  
}

class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRoute>{
  bool _switchSelected = true;
  bool _checkboxSelected = true;
  String _stringX = "";
  
  TextEditingController _upwdController = new TextEditingController();
  TextEditingController _selectionController = new TextEditingController();

  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState(){
    _upwdController.addListener((){
      print("wang~"+_upwdController.text);
    });
  }

  @override
  Widget build(BuildContext context){
    _selectionController.text = "Hello World!";
    _selectionController.selection=TextSelection(
      baseOffset: 2,
      extentOffset: _selectionController.text.length
    );
    return Column(
      children: <Widget>[
        // Switch(
        //   value : _switchSelected,
        //   onChanged: (value){
        //     setState(() {
        //      _switchSelected=value; 
        //     });
        //   },
        // ),
        // Checkbox(
        //   value: _checkboxSelected,
        //   activeColor: Colors.red,
        //   onChanged: (value){
        //     setState(() {
        //      _checkboxSelected=value; 
        //     });
        //   },
        // ),
        // Text(
        //   '$_stringX'
        // ),
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            labelText: "用户名1",
            hintText:"用户名或邮箱1",
            prefixIcon: Icon(Icons.person)
          ),
          focusNode: focusNode1,
          onChanged: (value){
            // print(_upwdController.text);
            // print("miao~ $value");
            // debugPrint(value);
            // debugPrint(value[value.length - 1]);
            setState(() {
              _stringX += value[value.length - 1];
            });
          },
          controller: _selectionController,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "用户名2",
            hintText:"用户名或邮箱2",
            prefixIcon: Icon(Icons.email),
            border: InputBorder.none
          ),
          focusNode: focusNode2,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "密码",
            hintText: "您的登录密码",
            prefixIcon: Icon(Icons.lock),
            hintStyle: TextStyle(color:Colors.red, fontSize: 20.0),
          ),
          obscureText: true,
          controller: _upwdController,
        ),
        RaisedButton(
          child: Text("切换"),
          onPressed: (){
            if(null == focusScopeNode){
              focusScopeNode = FocusScope.of(context);
            }
            // print(focusNode2.hasFocus);
            // focusScopeNode.requestFocus(focusNode2);
            // print(focusNode2);
            // print("......");
            // print(focusNode2.hasFocus);
            if(focusNode1.hasFocus == true){
              focusScopeNode.requestFocus(focusNode2);
            }else{
              focusScopeNode.requestFocus(focusNode1);
            }
          },
        ),
        RaisedButton(
          child: Text("取消"),
          onPressed: (){
            focusNode1.unfocus();
            focusNode2.unfocus();
          },
        ),
      ],
    );
  }
}