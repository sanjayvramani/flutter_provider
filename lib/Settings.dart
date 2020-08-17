import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui.dart';
class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<UI>(builder: (context,ui,child){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Font Size : ${ui.fontSize.toInt()}"),
              Slider(
                min: 0.5,
                value: ui.sliderFontSize, onChanged: (value){
                  ui.fontSize=value;
              },)
            ],
          );
        }) ,
      ),
    );
  }
}
