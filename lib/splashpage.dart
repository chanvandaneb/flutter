import 'package:finalproject/home.dart';
import 'package:finalproject/onbordingscreen.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {

  late final AnimationController _controller;


  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _controller = AnimationController(vsync: this);
    }
    
    @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network("https://assets7.lottiefiles.com/packages/lf20_jktzkqi1.json",
          controller: _controller, onLoaded: (compos) {
            _controller
            ..duration = compos.duration
            ..forward().then((value) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            });
          }
          ),
          Center(
            // child: Text("Loading ..."),
          )
        ],
      )
    );
  }
}