# zoomer
[![pub package](https://img.shields.io/pub/v/music_slider.svg)](https://pub.dartlang.org/packages/music_slider)

MusicSlider - To Create Music Styled Wavy SeekBar

## preview
<img src="https://raw.githubusercontent.com/RutvikRana/music_slider/main/video_example/giffy.gif" alt="Example App" width="300" height="300">

## What It Can Do?
* Create Default Music Slider
* Create Custom Music Slider By Given Wave Function
* Create Animated Music Slider
* Create ProgressBar By Making detectGesture false
* Create Square Slider Bar
* Create Anything with Wave Function ( I honestly dont know Its capability :) )

## Installation
Follow Installation guide of Pub.dev

## Syntax

1. MusicSlider Class
      ```
      MusicSlider({
      @required this.controller,                                 // Give MusicSliderController To Control MusicSlider
      this.height,                                               // Height
      this.width,                                                // Width
      this.division=30,                                          // Total Number Of Music Bars(Division). Very High Count May Decrease Performance
      this.boxSpace=0.3,                                         // Space Between To Bars ( 0 = No Space, 1 = Full Space)
      this.wave,                                                 // Wave Function To Draw Music Bars
      this.animateWaveByTime = true,                             // Want To Animate It?
      this.tickCount = const Duration(milliseconds: 200),        // Animation Duration between Two Frames
      this.fullBoxFill = true,                                   // Want To Fill Entire Box? If false then Box Fill According To Precise Value
      this.detectGesture=true,                                   // Let user Touch and slide It or not ?
      this.fillColors=const [Colors.red],                        // Fill or Active Bar Colors
      this.emptyColors=const [Colors.blue],                      // Empty or Inactive Bar Colors
      this.initialTime = 0.0                                     // Initial Time For Animation when Starts
      });
      ```

2. ZoomerController Class

          ZoomerController({initialScale = 1.0})  //To Set initial Scale
          
## Example

```
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
```

## Contact Me

I Am Rutvik Rana, Medical Student cum Passionate Coder, Invite You To My [Coding(noob to pro)](https://t.me/coding_noob_to_pro) Channel.
