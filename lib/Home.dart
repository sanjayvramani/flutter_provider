import 'package:flutter/material.dart';
import 'package:flutter_provider/ui.dart';
import 'package:provider/provider.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
  
}
class HomeState extends State<Home>{

  String text=lorem(paragraphs: 3,words: 100);



  Widget _getHome()
  {
    return ListTile(
      title: Text("Home"),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context,"/");
      },
    );
  }

  Widget _getAbout()
  {
    return ListTile(
      title: Text("About"),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context,"/About");
      },
    );
  }

  Widget _getSettings()
  {
    return ListTile(
      title: Text("Settings"),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context,"/Settings");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<UI>(
          builder: (context,ui,child){
            return RichText(text: TextSpan(
                text: text,
                style: TextStyle(color: Colors.black,fontSize: ui.fontSize)
            ),);
          },

        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            _getHome(),
            _getAbout(),
            _getSettings()
          ],
        ),
      ),
    );
  }
  
}