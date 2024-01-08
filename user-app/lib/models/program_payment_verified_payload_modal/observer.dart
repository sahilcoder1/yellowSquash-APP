import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/program_payment_verified_payload_modal/observer1.dart';

part 'observer.freezed.dart';
part 'observer.g.dart';

@freezed
class Observer with _$Observer {
  factory Observer({
    Observer1? observer1,
  }) = _Observer;

  factory Observer.fromJson(Map<String, dynamic> json) =>
      _$ObserverFromJson(json);
}
