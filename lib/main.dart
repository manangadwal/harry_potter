//@dart=2.9
import 'package:flutter/material.dart';
import 'package:harry_potter/login.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(myVideo());
}

class myVideo extends StatefulWidget {
  const myVideo({Key key}) : super(key: key);

  @override
  _myVideoState createState() => _myVideoState();
}

class _myVideoState extends State<myVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("lib/assets/1.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        _controller.setVolume(0);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cinzel Decorative'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(child: VideoPlayer(_controller)),
            Center(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "POTTERHEADS",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontFamily: 'Cinzel Decorative'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          LoginPage(),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
