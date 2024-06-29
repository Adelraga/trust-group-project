import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trust_group_project/features/russain/data/repos/get_youtube_videos_repo.dart';

import '../../data/models/get_youtube_videos_model.dart';

part 'youtube_videos_links_state.dart';

class YoutubeVideosLinksCubit extends Cubit<YoutubeVideosLinksState> {
  final GetYoutubeVideosRepo getYoutubeVideosRepo;

  YoutubeVideosLinksCubit(this.getYoutubeVideosRepo)
      : super(YoutubeVideosLinksInitial());

  Future<void> getYoutubeVideosLinks() async {
    emit(YoutubeVideosLinksLoading());
    final result = await getYoutubeVideosRepo.GetYoutubeVideosLinks();
    result.fold(
        (failure) => {emit(YoutubeVideosLinksFailure(failure.errMessage))},
        (response) => {emit(YoutubeVideosLinksSuccess(response))});
  }
}
