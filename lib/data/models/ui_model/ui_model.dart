// {
// 	"title": "Just Square",
//   "sort": 1,
//   "group": "COMMON",
//   "width":200,
//   "height":200,
//   "color":"#000000",
//   "type": "container"
// },
// Example data

import 'package:json_annotation/json_annotation.dart';

part 'ui_model.g.dart';

@JsonSerializable()
class UiModel {
  UiModel({
    required this.color,
    required this.group,
    required this.height,
    required this.sort,
    required this.title,
    required this.type,
    required this.width,
  });

  @JsonKey(defaultValue: '', name: 'title')
  final String title;

  @JsonKey(defaultValue: -1, name: 'sort')
  final int sort;

  @JsonKey(defaultValue: '', name: 'group')
  final String group;

  @JsonKey(defaultValue: 0, name: 'width')
  final int width;

  @JsonKey(defaultValue: 0, name: 'height')
  final int height;

  @JsonKey(defaultValue: '', name: 'color')
  final String color;

  @JsonKey(defaultValue: '', name: 'type')
  final String type;

  factory UiModel.fromJson(Map<String, dynamic> json) =>
      _$UiModelFromJson(json);

  Map<String, dynamic> toJson() => _$UiModelToJson(this);
}