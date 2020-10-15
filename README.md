# music_slider
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
      
#### Important Points:
      * You have to give Controller
      * Give boxSpace 1.0 if you dont want to space in between bars
      * fullBoxFill = false allows to filling by precise value (eg. Not Like Default Filling Entire Box With Color)
      * Make detectGesture = false if you are making ProgressBar
      * You can give any numbers of colors to active/ inactive portion. It will Cycles the List.
      * Dont Forget to make animateWaveByTime = false if you Dont want animated Slider (eg No Time Included In Wavw Function)

### Wave Function
    wave: (x,t,a) => a*sin(x*0.3-t*0.3)*sin(x*0.3+t*0.3)
    
    Here, x = Bar Count as X-axis
          t = Time
          a = Amplitude of Wave
     
     - If You Dont Know What Wave Function Is, then Copy Your Desired Function From Example Code.
     
2. MusicController Class
``` 
   MusicSliderController({
      double initialValue = 0.0   // To Give initial Value To Slider. Should Be In Range (0 - 1)
    })
```
### APIs
* double get value                   <br>- Get current value of MusicSlider<br>
``` value = _controller.value```

* seekTo(double value)               <br>- Change Value of MusicSlider<br>
``` _controller.seekTo(0.3)```

 * animateByTime(bool value)         <br>- Start/Stop Animation<br>
 ``` _controller.animateByTime(false)```

 * onSliderChange()                  <br>- Add Callback on SliderChange Event<br>
 ``` _controller.onSliderChange( ()=>print(_controller.value) )```

 * onSliderStart()                   <br>- Add Callback on SliderChange Start Event<br>
 ``` _controller.onSliderStart( ()=>print(_controller.value) )```

 * onSliderEnd()                     <br>- Add Callback on SliderChange End Event<br>
 ``` _controller.onSliderEnd( ()=>print(_controller.value) )```

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
