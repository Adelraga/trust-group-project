import 'package:json_annotation/json_annotation.dart';

part 'get_youtube_videos_model.g.dart';

@JsonSerializable()
class YoutubeVideosModel {

  @JsonKey(name: "_id")
  String? Id;
  String? youtubeLink;


  YoutubeVideosModel({this.Id,this.youtubeLink});

  factory YoutubeVideosModel.fromJson(Map<String, dynamic> json) => _$YoutubeVideosModelFromJson(json);

  Map<String, dynamic> toJson() => _$YoutubeVideosModelToJson(this);

  
}