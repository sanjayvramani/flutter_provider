import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Home.dart';
import 'About.dart';
import 'Settings.dart';
import 'package:provider/provider.dart';
import 'ui.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>UI(),)
    ],
    child: MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/":(context)=>Home(),
        "/About":(context)=>About(),
        "/Settings":(context)=>Settings()
      },
    ),) ;
  }
}
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),

    );
  }
}*/
