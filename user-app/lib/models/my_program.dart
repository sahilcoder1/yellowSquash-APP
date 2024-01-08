// To parse this JSON data, do
//
//     final myProgram = myProgramFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_program.freezed.dart';
part 'my_program.g.dart';

MyProgram myProgramFromJson(String str) => MyProgram.fromJson(json.decode(str));

String myProgramToJson(MyProgram data) => json.encode(data.toJson());

@freezed
class MyProgram with _$MyProgram {
  const factory MyProgram({
    String? message,
    bool? status,
    List<MyProgramData>? data,
  }) = _MyProgram;

  factory MyProgram.fromJson(Map<String, dynamic> json) =>
      _$MyProgramFromJson(json);
}

@freezed
class MyProgramData with _$MyProgramData {
  const factory MyProgramData({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? imageUrl,
    String? expert,
    String? expertDesignation,
    String? expertImage,
    String? programCategory,
  }) = _MyProgramData;

  factory MyProgramData.fromJson(Map<String, dynamic> json) =>
      _$MyProgramDataFromJson(json);
}
