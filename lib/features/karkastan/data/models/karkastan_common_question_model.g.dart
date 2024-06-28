// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'karkastan_common_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KarkastanCommonQuestionModel _$KarkastanCommonQuestionModelFromJson(
        Map<String, dynamic> json) =>
    KarkastanCommonQuestionModel(
      Id: json['_id'] as String?,
      quesion: json['quesion'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$KarkastanCommonQuestionModelToJson(
        KarkastanCommonQuestionModel instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'quesion': instance.quesion,
      'answer': instance.answer,
    };
