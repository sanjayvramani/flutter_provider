import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_provider/ui.dart';
import 'package:provider/provider.dart';
class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutState();
  }
}
class AboutState extends State<About>{
  String text=lorem(paragraphs: 3,words: 100);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("About"),),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Consumer<UI>(builder: (context,ui,child){
              return RichText(text: TextSpan(
                  text: text,
                  style: TextStyle(color: Colors.black,fontSize: ui.fontSize)
              ),);
            })
          ],
        ),
      ),
    );
  }
  
}