import 'package:json_annotation/json_annotation.dart';

part 'services_model.g.dart';

@JsonSerializable()
class ServicesModel {

  @JsonKey(name: "_id")
  String? Id;
  String? title;
  String? description;

  ServicesModel({this.Id, this.title, this.description});

  factory ServicesModel.fromJson(Map<String, dynamic> json) => _$ServicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesModelToJson(this);

  
}