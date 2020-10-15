import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'musicSlider.dart';

void main() => runApp(MyApp());

// ------ Root Widget ---------
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MusicSlider Example",
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: Colors.blue.shade100,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          platform: TargetPlatform.android),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MusicSliderController _sliderController = MusicSliderController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("MusicSlider Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10),
            
              child: MusicSlider(
                emptyColors: [Colors.blue],
                fillColors: [Colors.red],
                controller: _sliderController,
                animateWaveByTime: false,
                height: 50,
                division: 53,
                wave: (x,t,a) => a*sin(x*0.3-t*0.3)*sin(x*0.3+t*0.3),),),
            
            Padding(padding: EdgeInsets.all(10),child: MusicSlider(emptyColors: [Colors.white],fillColors: [Colors.purple,Colors.blue.shade200,Colors.blue,Colors.green,Colors.yellow,Colors.orange,Colors.red],controller: MusicSliderController(initialValue: 0.5),animateWaveByTime: false,height: 50,division: 53,wave: (x,t,a) => a*cos(x*0.5)*sin(x*0.3),),),
            Padding(padding: EdgeInsets.all(10),child: MusicSlider(emptyColors: [Colors.grey],fillColors: [Colors.purple],controller: MusicSliderController(initialValue: 0.2),animateWaveByTime: true,height: 50,division: 53,wave: (x,t,a) => a*sin(x*0.3-t*0.3),),),
            Padding(padding: EdgeInsets.all(10),child: MusicSlider(emptyColors: [Colors.blue],fillColors: [Colors.green],controller: MusicSliderController(initialValue: 0.2),animateWaveByTime: true,height: 50,division: 53,wave: (x,t,a) => a*sin(x*0.3-t*0.3)*sin(x*0.3+t*0.3),),),
            Padding(padding: EdgeInsets.all(10),child: MusicSlider(emptyColors: [Colors.green],fillColors: [Colors.cyan],controller: MusicSliderController(initialValue: 0.2),animateWaveByTime: false,height: 50,division: 11,wave: (x,t,a) => a*sin(x*0.3-t*0.3)*sin(x*0.3+t*0.3),),),
            Padding(padding: EdgeInsets.all(10),child: MusicSlider(emptyColors: [Colors.blue],fillColors: [Colors.red],controller: MusicSliderController(initialValue: 0.2),animateWaveByTime: false,height: 50,division: 11,wave: (x,t,a) => a*sin(x*0.3-t*0.3)*sin(x*0.3+t*0.3),fullBoxFill: false,),),
            RaisedButton(onPressed: (){setState(() { });})
          ]))
      );
  }
}
