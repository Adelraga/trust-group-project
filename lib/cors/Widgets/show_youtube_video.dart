import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowYoutubeVideo extends StatefulWidget {
  const ShowYoutubeVideo({super.key});

  @override
  State<ShowYoutubeVideo> createState() => _ShowYoutubeVideoState();
}

class _ShowYoutubeVideoState extends State<ShowYoutubeVideo> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    const videoUrl =
        'https://www.youtube.com/watch?v=NgIq19R-n5w&t=668s'; // Replace with your video URL
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,

        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
 
          progressIndicatorColor: Colors.amber,
          onReady: () {
            print('Player is ready.');
          },
          onEnded: (metadata) {
            // Do something when video ends.
          },
        ),
      ),
    );
  }
}
