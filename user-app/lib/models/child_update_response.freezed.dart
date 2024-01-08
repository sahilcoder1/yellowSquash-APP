// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChildUpdateResponse _$ChildUpdateResponseFromJson(Map<String, dynamic> json) {
  return _ChildUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$ChildUpdateResponse {
  bool? get status => throw _privateConstructorUsedError;
  List<ChildUpdateResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildUpdateResponseCopyWith<ChildUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildUpdateResponseCopyWith<$Res> {
  factory $ChildUpdateResponseCopyWith(
          ChildUpdateResponse value, $Res Function(ChildUpdateResponse) then) =
      _$ChildUpdateResponseCopyWithImpl<$Res, ChildUpdateResponse>;
  @useResult
  $Res call({bool? status, List<ChildUpdateResponseData>? data});
}

/// @nodoc
class _$ChildUpdateResponseCopyWithImpl<$Res, $Val extends ChildUpdateResponse>
    implements $ChildUpdateResponseCopyWith<$Res> {
  _$ChildUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChildUpdateResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildUpdateResponseImplCopyWith<$Res>
    implements $ChildUpdateResponseCopyWith<$Res> {
  factory _$$ChildUpdateResponseImplCopyWith(_$ChildUpdateResponseImpl value,
          $Res Function(_$ChildUpdateResponseImpl) then) =
      __$$ChildUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<ChildUpdateResponseData>? data});
}

/// @nodoc
class __$$ChildUpdateResponseImplCopyWithImpl<$Res>
    extends _$ChildUpdateResponseCopyWithImpl<$Res, _$ChildUpdateResponseImpl>
    implements _$$ChildUpdateResponseImplCopyWith<$Res> {
  __$$ChildUpdateResponseImplCopyWithImpl(_$ChildUpdateResponseImpl _value,
      $Res Function(_$ChildUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChildUpdateResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChildUpdateResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildUpdateResponseImpl implements _ChildUpdateResponse {
  const _$ChildUpdateResponseImpl(
      {this.status, final List<ChildUpdateResponseData>? data})
      : _data = data;

  factory _$ChildUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildUpdateResponseImplFromJson(json);

  @override
  final bool? status;
  final List<ChildUpdateResponseData>? _data;
  @override
  List<ChildUpdateResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChildUpdateResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildUpdateResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildUpdateResponseImplCopyWith<_$ChildUpdateResponseImpl> get copyWith =>
      __$$ChildUpdateResponseImplCopyWithImpl<_$ChildUpdateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _ChildUpdateResponse implements ChildUpdateResponse {
  const factory _ChildUpdateResponse(
      {final bool? status,
      final List<ChildUpdateResponseData>? data}) = _$ChildUpdateResponseImpl;

  factory _ChildUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$ChildUpdateResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  List<ChildUpdateResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChildUpdateResponseImplCopyWith<_$ChildUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildUpdateResponseData _$ChildUpdateResponseDataFromJson(
    Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$ChildUpdateResponseData {
  ChildFavorite? get childFavorite => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  List<String>? get condition => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildUpdateResponseDataCopyWith<ChildUpdateResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildUpdateResponseDataCopyWith<$Res> {
  factory $ChildUpdateResponseDataCopyWith(ChildUpdateResponseData value,
          $Res Function(ChildUpdateResponseData) then) =
      _$ChildUpdateResponseDataCopyWithImpl<$Res, ChildUpdateResponseData>;
  @useResult
  $Res call(
      {ChildFavorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      Address? address,
      String? profileId,
      List<String>? condition,
      List<String>? interests,
      @JsonKey(name: '_id') String? id});

  $ChildFavoriteCopyWith<$Res>? get childFavorite;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ChildUpdateResponseDataCopyWithImpl<$Res,
        $Val extends ChildUpdateResponseData>
    implements $ChildUpdateResponseDataCopyWith<$Res> {
  _$ChildUpdateResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childFavorite = freezed,
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? profileId = freezed,
    Object? condition = freezed,
    Object? interests = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      childFavorite: freezed == childFavorite
          ? _value.childFavorite
          : childFavorite // ignore: cast_nullable_to_non_nullable
              as ChildFavorite?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildFavoriteCopyWith<$Res>? get childFavorite {
    if (_value.childFavorite == null) {
      return null;
    }

    return $ChildFavoriteCopyWith<$Res>(_value.childFavorite!, (value) {
      return _then(_value.copyWith(childFavorite: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $ChildUpdateResponseDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChildFavorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      Address? address,
      String? profileId,
      List<String>? condition,
      List<String>? interests,
      @JsonKey(name: '_id') String? id});

  @override
  $ChildFavoriteCopyWith<$Res>? get childFavorite;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$ChildUpdateResponseDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childFavorite = freezed,
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? profileId = freezed,
    Object? condition = freezed,
    Object? interests = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DatumImpl(
      childFavorite: freezed == childFavorite
          ? _value.childFavorite
          : childFavorite // ignore: cast_nullable_to_non_nullable
              as ChildFavorite?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value._condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.childFavorite,
      this.fullName,
      this.emailId,
      this.phoneNumber,
      this.address,
      this.profileId,
      final List<String>? condition,
      final List<String>? interests,
      @JsonKey(name: '_id') this.id})
      : _condition = condition,
        _interests = interests;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final ChildFavorite? childFavorite;
  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phoneNumber;
  @override
  final Address? address;
  @override
  final String? profileId;
  final List<String>? _condition;
  @override
  List<String>? get condition {
    final value = _condition;
    if (value == null) return null;
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'ChildUpdateResponseData(childFavorite: $childFavorite, fullName: $fullName, emailId: $emailId, phoneNumber: $phoneNumber, address: $address, profileId: $profileId, condition: $condition, interests: $interests, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.childFavorite, childFavorite) ||
                other.childFavorite == childFavorite) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            const DeepCollectionEquality()
                .equals(other._condition, _condition) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      childFavorite,
      fullName,
      emailId,
      phoneNumber,
      address,
      profileId,
      const DeepCollectionEquality().hash(_condition),
      const DeepCollectionEquality().hash(_interests),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements ChildUpdateResponseData {
  const factory _Datum(
      {final ChildFavorite? childFavorite,
      final String? fullName,
      final String? emailId,
      final String? phoneNumber,
      final Address? address,
      final String? profileId,
      final List<String>? condition,
      final List<String>? interests,
      @JsonKey(name: '_id') final String? id}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  ChildFavorite? get childFavorite;
  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phoneNumber;
  @override
  Address? get address;
  @override
  String? get profileId;
  @override
  List<String>? get condition;
  @override
  List<String>? get interests;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get flatNo => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? flatNo,
      String? city,
      String? pincode,
      String? state,
      String? country});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flatNo = freezed,
    Object? city = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      flatNo: freezed == flatNo
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? flatNo,
      String? city,
      String? pincode,
      String? state,
      String? country});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flatNo = freezed,
    Object? city = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_$AddressImpl(
      flatNo: freezed == flatNo
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {this.flatNo, this.city, this.pincode, this.state, this.country});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? flatNo;
  @override
  final String? city;
  @override
  final String? pincode;
  @override
  final String? state;
  @override
  final String? country;

  @override
  String toString() {
    return 'Address(flatNo: $flatNo, city: $city, pincode: $pincode, state: $state, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.flatNo, flatNo) || other.flatNo == flatNo) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, flatNo, city, pincode, state, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? flatNo,
      final String? city,
      final String? pincode,
      final String? state,
      final String? country}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get flatNo;
  @override
  String? get city;
  @override
  String? get pincode;
  @override
  String? get state;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildFavorite _$ChildFavoriteFromJson(Map<String, dynamic> json) {
  return _ChildFavorite.fromJson(json);
}

/// @nodoc
mixin _$ChildFavorite {
  List<dynamic>? get programId => throw _privateConstructorUsedError;
  List<dynamic>? get webinarId => throw _privateConstructorUsedError;
  List<dynamic>? get expertId => throw _privateConstructorUsedError;
  List<dynamic>? get healthPediaId => throw _privateConstructorUsedError;
  List<dynamic>? get videohealthPediaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildFavoriteCopyWith<ChildFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildFavoriteCopyWith<$Res> {
  factory $ChildFavoriteCopyWith(
          ChildFavorite value, $Res Function(ChildFavorite) then) =
      _$ChildFavoriteCopyWithImpl<$Res, ChildFavorite>;
  @useResult
  $Res call(
      {List<dynamic>? programId,
      List<dynamic>? webinarId,
      List<dynamic>? expertId,
      List<dynamic>? healthPediaId,
      List<dynamic>? videohealthPediaId});
}

/// @nodoc
class _$ChildFavoriteCopyWithImpl<$Res, $Val extends ChildFavorite>
    implements $ChildFavoriteCopyWith<$Res> {
  _$ChildFavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? webinarId = freezed,
    Object? expertId = freezed,
    Object? healthPediaId = freezed,
    Object? videohealthPediaId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expertId: freezed == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      healthPediaId: freezed == healthPediaId
          ? _value.healthPediaId
          : healthPediaId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      videohealthPediaId: freezed == videohealthPediaId
          ? _value.videohealthPediaId
          : videohealthPediaId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildFavoriteImplCopyWith<$Res>
    implements $ChildFavoriteCopyWith<$Res> {
  factory _$$ChildFavoriteImplCopyWith(
          _$ChildFavoriteImpl value, $Res Function(_$ChildFavoriteImpl) then) =
      __$$ChildFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? programId,
      List<dynamic>? webinarId,
      List<dynamic>? expertId,
      List<dynamic>? healthPediaId,
      List<dynamic>? videohealthPediaId});
}

/// @nodoc
class __$$ChildFavoriteImplCopyWithImpl<$Res>
    extends _$ChildFavoriteCopyWithImpl<$Res, _$ChildFavoriteImpl>
    implements _$$ChildFavoriteImplCopyWith<$Res> {
  __$$ChildFavoriteImplCopyWithImpl(
      _$ChildFavoriteImpl _value, $Res Function(_$ChildFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? webinarId = freezed,
    Object? expertId = freezed,
    Object? healthPediaId = freezed,
    Object? videohealthPediaId = freezed,
  }) {
    return _then(_$ChildFavoriteImpl(
      programId: freezed == programId
          ? _value._programId
          : programId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      webinarId: freezed == webinarId
          ? _value._webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expertId: freezed == expertId
          ? _value._expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      healthPediaId: freezed == healthPediaId
          ? _value._healthPediaId
          : healthPediaId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      videohealthPediaId: freezed == videohealthPediaId
          ? _value._videohealthPediaId
          : videohealthPediaId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildFavoriteImpl implements _ChildFavorite {
  const _$ChildFavoriteImpl(
      {final List<dynamic>? programId,
      final List<dynamic>? webinarId,
      final List<dynamic>? expertId,
      final List<dynamic>? healthPediaId,
      final List<dynamic>? videohealthPediaId})
      : _programId = programId,
        _webinarId = webinarId,
        _expertId = expertId,
        _healthPediaId = healthPediaId,
        _videohealthPediaId = videohealthPediaId;

  factory _$ChildFavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildFavoriteImplFromJson(json);

  final List<dynamic>? _programId;
  @override
  List<dynamic>? get programId {
    final value = _programId;
    if (value == null) return null;
    if (_programId is EqualUnmodifiableListView) return _programId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _webinarId;
  @override
  List<dynamic>? get webinarId {
    final value = _webinarId;
    if (value == null) return null;
    if (_webinarId is EqualUnmodifiableListView) return _webinarId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _expertId;
  @override
  List<dynamic>? get expertId {
    final value = _expertId;
    if (value == null) return null;
    if (_expertId is EqualUnmodifiableListView) return _expertId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _healthPediaId;
  @override
  List<dynamic>? get healthPediaId {
    final value = _healthPediaId;
    if (value == null) return null;
    if (_healthPediaId is EqualUnmodifiableListView) return _healthPediaId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _videohealthPediaId;
  @override
  List<dynamic>? get videohealthPediaId {
    final value = _videohealthPediaId;
    if (value == null) return null;
    if (_videohealthPediaId is EqualUnmodifiableListView)
      return _videohealthPediaId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChildFavorite(programId: $programId, webinarId: $webinarId, expertId: $expertId, healthPediaId: $healthPediaId, videohealthPediaId: $videohealthPediaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildFavoriteImpl &&
            const DeepCollectionEquality()
                .equals(other._programId, _programId) &&
            const DeepCollectionEquality()
                .equals(other._webinarId, _webinarId) &&
            const DeepCollectionEquality().equals(other._expertId, _expertId) &&
            const DeepCollectionEquality()
                .equals(other._healthPediaId, _healthPediaId) &&
            const DeepCollectionEquality()
                .equals(other._videohealthPediaId, _videohealthPediaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_programId),
      const DeepCollectionEquality().hash(_webinarId),
      const DeepCollectionEquality().hash(_expertId),
      const DeepCollectionEquality().hash(_healthPediaId),
      const DeepCollectionEquality().hash(_videohealthPediaId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildFavoriteImplCopyWith<_$ChildFavoriteImpl> get copyWith =>
      __$$ChildFavoriteImplCopyWithImpl<_$ChildFavoriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildFavoriteImplToJson(
      this,
    );
  }
}

abstract class _ChildFavorite implements ChildFavorite {
  const factory _ChildFavorite(
      {final List<dynamic>? programId,
      final List<dynamic>? webinarId,
      final List<dynamic>? expertId,
      final List<dynamic>? healthPediaId,
      final List<dynamic>? videohealthPediaId}) = _$ChildFavoriteImpl;

  factory _ChildFavorite.fromJson(Map<String, dynamic> json) =
      _$ChildFavoriteImpl.fromJson;

  @override
  List<dynamic>? get programId;
  @override
  List<dynamic>? get webinarId;
  @override
  List<dynamic>? get expertId;
  @override
  List<dynamic>? get healthPediaId;
  @override
  List<dynamic>? get videohealthPediaId;
  @override
  @JsonKey(ignore: true)
  _$$ChildFavoriteImplCopyWith<_$ChildFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
