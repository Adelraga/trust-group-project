import 'package:flutter/cupertino.dart';
import 'package:trust_group_project/cors/Widgets/show_youtube_video.dart';

import '../../../../cors/Helpers/constants.dart';

class StudentVideosGridView extends StatelessWidget {
  const StudentVideosGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ShowYoutubeVideo(
            videoUrl: videos[index],
          );
        },
        childCount: 5,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1,
      ),
    );
  }
}
