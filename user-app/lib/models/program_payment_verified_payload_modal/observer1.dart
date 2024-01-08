import 'package:freezed_annotation/freezed_annotation.dart';

part 'observer1.freezed.dart';
part 'observer1.g.dart';

@freezed
class Observer1 with _$Observer1 {
  factory Observer1({
    String? fullName,
    String? phoneNumber,
    String? relation,
  }) = _Observer1;

  factory Observer1.fromJson(Map<String, dynamic> json) =>
      _$Observer1FromJson(json);
}
