import 'package:json_annotation/json_annotation.dart';

part 'karkastan_common_question_model.g.dart';

@JsonSerializable()
class KarkastanCommonQuestionModel {
  @JsonKey(name: "_id")
  String? Id;
  String? quesion;
  String? answer;

  KarkastanCommonQuestionModel({this.Id, this.quesion, this.answer});

  factory KarkastanCommonQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$KarkastanCommonQuestionModelFromJson(json);
  Map<String, dynamic> toJson() => _$KarkastanCommonQuestionModelToJson(this);
}
