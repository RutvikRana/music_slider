# zoomer
[![pub package](https://img.shields.io/pub/v/zoomer.svg)](https://pub.dartlang.org/packages/zoomer)

Zoomer - To Zoom Any Widget

## preview
<img src="https://raw.githubusercontent.com/RutvikRana/zoomer/main/video_example/96.gif" alt="" width="200" height="200">

## What It Can Do?
* Zoom
* Rotate
* Translate

## Installation
Follow Installation guide of Pub.dev

## Syntax

1. Zoomer Class

        Zoomer(
            {this.child,                    // Child Can Be Any Widget, you want to make zoomable
            this.controller,                // ZoomerControoller To Control Zoomer
            this.height,                    // Height
            this.width,                     // Width 
            this.background,                // background of Zoomer. It is BoxDecoration.
            this.maxScale = 2.0,            // maximum Scale
            this.minScale = 0.5,            // mininum Scale
            this.enableTranslation = false, // Want to move it by touch
            this.enableRotation = false,    // Want to rotate it
            this.clipRotation = true});     // Clips the Rotation to 90-degrees

2. ZoomerController Class

          ZoomerController({initialScale = 1.0})  //To Set initial Scale
          
    * APIs
    
      - double get scale              
      ```scale = _controller.scale```
      
      - set setScale(double value)    
       ```_controller.setScale = 1.5```
       
      - Offset get offset             
      ```offset = _controller.offset```
      
      - set setOffset(Offset value)   
       ```_controller.setOffset = Offset(0,10)```
       
      - double get rotation           
      ```rotation = _controller.rotation```
      
      - set setRotation(double value)               
      ```_controller.setRotation = pi/4```
      **Note: Rotation is in Radians**    
      
      - onZoomStart()             
      ```_controller.onZoomStart( (){ print( _controller.scale ); } )```

      - onZoomUpdate()             
      ```_controller.onZoomUpdate( (){ print( _controller.scale ); } )```

      - onZoomEnd()             
      ```_controller.onZoomEnd( (){ print( _controller.scale ); } )```

## Example

```class _HomeState extends State<Home> {
  ZoomerController _zoomerController = ZoomerController(initialScale: 1.0);
  String _zoomDetails = "Zoom";  

  @override
  Widget build(BuildContext context) {

    _zoomerController.onZoomUpdate((){
      setState(() {
        _zoomDetails = "Scale = "+ _zoomerController.scale.toStringAsFixed(2);
        _zoomDetails += "\nRotation = "+ _zoomerController.rotation.toStringAsFixed(2);
        _zoomDetails += "\nOffset = ("+ _zoomerController.offset.dx.toStringAsFixed(2)+","+_zoomerController.offset.dy.toStringAsFixed(2)+")";
      });
    });

    return Scaffold(
      appBar: AppBar(title: Text("Zommer Example"),),
      body:
        Center(child:
        Stack(
          children: [
            Align(alignment: Alignment.topCenter,child: SizedBox(height: 150,child: Text(_zoomDetails,textAlign: TextAlign.center,style: TextStyle(fontSize: 30),))),
            Center(
              child: 
                Zoomer(
                  enableTranslation: true,
                  enableRotation: true,
                  clipRotation: true,
                  maxScale: 2,
                  minScale: 0.5,
                  background:BoxDecoration(color: Colors.white),
                  height: 300,
                  width: 300,
                  controller: _zoomerController,
                  child: Container(decoration: BoxDecoration(color: Colors.green),height: 200,width: 200,child: FlutterLogo(),)),
            ),
          ])),
    );
  }
}
```

## Contact Me

I Am Rutvik Rana, Medical Student cum Passionate Coder, Invite You To My [Coding(noob to pro)](https://t.me/coding_noob_to_pro) Channel.