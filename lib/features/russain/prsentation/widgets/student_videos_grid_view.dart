import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Widgets/show_youtube_video.dart';
import 'package:trust_group_project/features/russain/logic/youtube_videos_links_cubit/youtube_videos_links_cubit.dart';

import '../../../../cors/Helpers/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentVideosGridView extends StatelessWidget {
  const StudentVideosGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubeVideosLinksCubit, YoutubeVideosLinksState>(
      builder: (context, state) {
        if(state is YoutubeVideosLinksSuccess)
        {

        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ShowYoutubeVideo(
                videoUrl: state.youtubeVideosList[index].youtubeLink ?? "",
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

        if (state is YoutubeVideosLinksFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.message),
            ),
          );
        }

        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );

      },
    );
  }
}
