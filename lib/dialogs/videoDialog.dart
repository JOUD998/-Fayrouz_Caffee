import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:untitled7/const/colors.dart' as myColors;
class VideoDialog extends StatefulWidget {
  final String productTitle;
  final String? productDescription;
  final String productVideo;

  VideoDialog({
    Key? key,
    required this.productTitle,
     this.productDescription,
    required this.productVideo,
  });

  @override
  State<VideoDialog> createState() => _VideoDialgoState();
}

class _VideoDialgoState extends State<VideoDialog> {
  late VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.productVideo)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // Your custom dialog design goes here
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: const Color(0xFF1d7873), width: 2),
          image: DecorationImage(
              image: const AssetImage("assets/logo1.png"),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                // Adjust the opacity here (0.5 for 50% opacity)
                BlendMode.dstIn,
              )),
          color: const Color(0xFFedf7f6),
        ),
        width: 600,
        height: 700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(29, 120, 115, 0.8),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        widget.productTitle,
                        style: TextStyle(
                          color: myColors.gold,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Tajm3-Desgroup-Free-Font",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(29, 120, 115, 0.1),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        widget.productDescription!,
                        style: TextStyle(
                          color: myColors.gold,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Tajm3-Desgroup-Free-Font",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
                width: 600,
              decoration: const BoxDecoration(
                color: Colors.transparent,

              ),
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),

            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                side: BorderSide(
                  color: myColors.turquoise, // Your desired border color
                  width: 2.0, // Border width
                ),
              ),
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying ? _controller.pause() : _controller.play();
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause_circle_filled : Icons.play_arrow,
                color: myColors.turquoise, // Icon color
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
