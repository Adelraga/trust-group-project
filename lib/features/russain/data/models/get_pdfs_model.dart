import 'package:json_annotation/json_annotation.dart';

part 'get_pdfs_model.g.dart';

@JsonSerializable()
class PdfsModel {

  @JsonKey(name: "_id")
  String? Id;
  String? pdfName;
  String? pdfUrl;

  PdfsModel({this.Id, this.pdfName, this.pdfUrl});

  factory PdfsModel.fromJson(Map<String, dynamic> json) => _$PdfsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PdfsModelToJson(this);

  
}