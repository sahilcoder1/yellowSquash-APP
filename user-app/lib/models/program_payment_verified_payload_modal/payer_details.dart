import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/program_payment_verified_payload_modal/address.dart';

part 'payer_details.freezed.dart';
part 'payer_details.g.dart';

@freezed
class PayerDetails with _$PayerDetails {
  factory PayerDetails({
    String? fullName,
    String? emailId,
    String? phoneNumber,
    Address? address,
  }) = _PayerDetails;

  factory PayerDetails.fromJson(Map<String, dynamic> json) =>
      _$PayerDetailsFromJson(json);
}
