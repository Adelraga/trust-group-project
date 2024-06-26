import 'package:json_annotation/json_annotation.dart';

part 'karkastan_require_paper_model.g.dart';

@JsonSerializable()
class KarkastanRequirePaperModel {
  @JsonKey(name: "_id")
  String? Id;
  String? requiredPaper;

  KarkastanRequirePaperModel({this.Id, this.requiredPaper});

  factory KarkastanRequirePaperModel.fromJson(Map<String, dynamic> json) =>
      _$KarkastanRequirePaperModelFromJson(json);
  Map<String, dynamic> toJson() => _$KarkastanRequirePaperModelToJson(this);
}
