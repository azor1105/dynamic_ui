// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UiModel _$UiModelFromJson(Map<String, dynamic> json) => UiModel(
      color: json['color'] as String? ?? '',
      group: json['group'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      sort: json['sort'] as int? ?? -1,
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      width: json['width'] as int? ?? 0,
    );

Map<String, dynamic> _$UiModelToJson(UiModel instance) => <String, dynamic>{
      'title': instance.title,
      'sort': instance.sort,
      'group': instance.group,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'type': instance.type,
    };
