import 'package:json_annotation/json_annotation.dart';

part 'student_images_model.g.dart';

@JsonSerializable()
class StudentImagesModel  {

  @JsonKey(name: "_id")
  String? Id;
  String? url;


  StudentImagesModel ({this.Id, this.url});

  factory StudentImagesModel.fromJson(Map<String, dynamic> json) => _$StudentImagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$StudentImagesModelToJson(this);

  
}