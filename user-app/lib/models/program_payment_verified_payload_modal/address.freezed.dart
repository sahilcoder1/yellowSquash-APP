// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'flatNo/StreetName')
  String? get flatNoStreetName => throw _privateConstructorUsedError;
  @JsonKey(name: 'City/Town/District')
  String? get cityTownDistrict => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'flatNo/StreetName') String? flatNoStreetName,
      @JsonKey(name: 'City/Town/District') String? cityTownDistrict,
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
    Object? flatNoStreetName = freezed,
    Object? cityTownDistrict = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      flatNoStreetName: freezed == flatNoStreetName
          ? _value.flatNoStreetName
          : flatNoStreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTownDistrict: freezed == cityTownDistrict
          ? _value.cityTownDistrict
          : cityTownDistrict // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'flatNo/StreetName') String? flatNoStreetName,
      @JsonKey(name: 'City/Town/District') String? cityTownDistrict,
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
    Object? flatNoStreetName = freezed,
    Object? cityTownDistrict = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_$AddressImpl(
      flatNoStreetName: freezed == flatNoStreetName
          ? _value.flatNoStreetName
          : flatNoStreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTownDistrict: freezed == cityTownDistrict
          ? _value.cityTownDistrict
          : cityTownDistrict // ignore: cast_nullable_to_non_nullable
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
  _$AddressImpl(
      {@JsonKey(name: 'flatNo/StreetName') this.flatNoStreetName,
      @JsonKey(name: 'City/Town/District') this.cityTownDistrict,
      this.pincode,
      this.state,
      this.country});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: 'flatNo/StreetName')
  final String? flatNoStreetName;
  @override
  @JsonKey(name: 'City/Town/District')
  final String? cityTownDistrict;
  @override
  final String? pincode;
  @override
  final String? state;
  @override
  final String? country;

  @override
  String toString() {
    return 'Address(flatNoStreetName: $flatNoStreetName, cityTownDistrict: $cityTownDistrict, pincode: $pincode, state: $state, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.flatNoStreetName, flatNoStreetName) ||
                other.flatNoStreetName == flatNoStreetName) &&
            (identical(other.cityTownDistrict, cityTownDistrict) ||
                other.cityTownDistrict == cityTownDistrict) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, flatNoStreetName, cityTownDistrict, pincode, state, country);

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
  factory _Address(
      {@JsonKey(name: 'flatNo/StreetName') final String? flatNoStreetName,
      @JsonKey(name: 'City/Town/District') final String? cityTownDistrict,
      final String? pincode,
      final String? state,
      final String? country}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: 'flatNo/StreetName')
  String? get flatNoStreetName;
  @override
  @JsonKey(name: 'City/Town/District')
  String? get cityTownDistrict;
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
