import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowYoutubeVideo extends StatefulWidget {
  final String videoUrl;
  const ShowYoutubeVideo({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<ShowYoutubeVideo> createState() => _ShowYoutubeVideoState();
}

class _ShowYoutubeVideoState extends State<ShowYoutubeVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        mute: false,
        controlsVisibleAtStart :true


    ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
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
          onEnded: (metaData) {
            // Do something when video ends.
          },
        ),
      ),
    );
  }
}
