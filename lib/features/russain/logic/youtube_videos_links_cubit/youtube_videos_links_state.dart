part of 'youtube_videos_links_cubit.dart';

@immutable
sealed class YoutubeVideosLinksState {}

final class YoutubeVideosLinksInitial extends YoutubeVideosLinksState {}

final class YoutubeVideosLinksLoading extends YoutubeVideosLinksState {}

final class YoutubeVideosLinksSuccess extends YoutubeVideosLinksState {
  final List<YoutubeVideosModel> youtubeVideosList;

  YoutubeVideosLinksSuccess(this.youtubeVideosList);
}

final class YoutubeVideosLinksFailure extends YoutubeVideosLinksState {
  final String message;

  YoutubeVideosLinksFailure(this.message);
}
