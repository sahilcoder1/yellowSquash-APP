// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_byprofile_userid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserByprofileUserid _$UserByprofileUseridFromJson(Map<String, dynamic> json) {
  return _UserByprofileUserid.fromJson(json);
}

/// @nodoc
mixin _$UserByprofileUserid {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserProfileData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserByprofileUseridCopyWith<UserByprofileUserid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserByprofileUseridCopyWith<$Res> {
  factory $UserByprofileUseridCopyWith(
          UserByprofileUserid value, $Res Function(UserByprofileUserid) then) =
      _$UserByprofileUseridCopyWithImpl<$Res, UserByprofileUserid>;
  @useResult
  $Res call({bool? status, String? message, List<UserProfileData>? data});
}

/// @nodoc
class _$UserByprofileUseridCopyWithImpl<$Res, $Val extends UserByprofileUserid>
    implements $UserByprofileUseridCopyWith<$Res> {
  _$UserByprofileUseridCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProfileData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserByprofileUseridImplCopyWith<$Res>
    implements $UserByprofileUseridCopyWith<$Res> {
  factory _$$UserByprofileUseridImplCopyWith(_$UserByprofileUseridImpl value,
          $Res Function(_$UserByprofileUseridImpl) then) =
      __$$UserByprofileUseridImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, List<UserProfileData>? data});
}

/// @nodoc
class __$$UserByprofileUseridImplCopyWithImpl<$Res>
    extends _$UserByprofileUseridCopyWithImpl<$Res, _$UserByprofileUseridImpl>
    implements _$$UserByprofileUseridImplCopyWith<$Res> {
  __$$UserByprofileUseridImplCopyWithImpl(_$UserByprofileUseridImpl _value,
      $Res Function(_$UserByprofileUseridImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserByprofileUseridImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProfileData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserByprofileUseridImpl implements _UserByprofileUserid {
  const _$UserByprofileUseridImpl(
      {this.status, this.message, final List<UserProfileData>? data})
      : _data = data;

  factory _$UserByprofileUseridImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserByprofileUseridImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<UserProfileData>? _data;
  @override
  List<UserProfileData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserByprofileUserid(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserByprofileUseridImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserByprofileUseridImplCopyWith<_$UserByprofileUseridImpl> get copyWith =>
      __$$UserByprofileUseridImplCopyWithImpl<_$UserByprofileUseridImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserByprofileUseridImplToJson(
      this,
    );
  }
}

abstract class _UserByprofileUserid implements UserByprofileUserid {
  const factory _UserByprofileUserid(
      {final bool? status,
      final String? message,
      final List<UserProfileData>? data}) = _$UserByprofileUseridImpl;

  factory _UserByprofileUserid.fromJson(Map<String, dynamic> json) =
      _$UserByprofileUseridImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<UserProfileData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserByprofileUseridImplCopyWith<_$UserByprofileUseridImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  ChildFavorite? get childFavorite => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get condition => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {ChildFavorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      String? gender,
      Address? address,
      String? profileId,
      String? image,
      List<String>? condition,
      List<String>? interests,
      String? id});

  $ChildFavoriteCopyWith<$Res>? get childFavorite;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

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
    Object? age = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? profileId = freezed,
    Object? image = freezed,
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChildFavorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      String? gender,
      Address? address,
      String? profileId,
      String? image,
      List<String>? condition,
      List<String>? interests,
      String? id});

  @override
  $ChildFavoriteCopyWith<$Res>? get childFavorite;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childFavorite = freezed,
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? profileId = freezed,
    Object? image = freezed,
    Object? condition = freezed,
    Object? interests = freezed,
    Object? id = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl(
      {this.childFavorite,
      this.fullName,
      this.emailId,
      this.phoneNumber,
      this.age,
      this.gender,
      this.address,
      this.profileId,
      this.image,
      final List<String>? condition,
      final List<String>? interests,
      this.id})
      : _condition = condition,
        _interests = interests;

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final ChildFavorite? childFavorite;
  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phoneNumber;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final Address? address;
  @override
  final String? profileId;
  @override
  final String? image;
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
  final String? id;

  @override
  String toString() {
    return 'UserProfileData(childFavorite: $childFavorite, fullName: $fullName, emailId: $emailId, phoneNumber: $phoneNumber, age: $age, gender: $gender, address: $address, profileId: $profileId, image: $image, condition: $condition, interests: $interests, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.childFavorite, childFavorite) ||
                other.childFavorite == childFavorite) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.image, image) || other.image == image) &&
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
      age,
      gender,
      address,
      profileId,
      image,
      const DeepCollectionEquality().hash(_condition),
      const DeepCollectionEquality().hash(_interests),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {final ChildFavorite? childFavorite,
      final String? fullName,
      final String? emailId,
      final String? phoneNumber,
      final int? age,
      final String? gender,
      final Address? address,
      final String? profileId,
      final String? image,
      final List<String>? condition,
      final List<String>? interests,
      final String? id}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  ChildFavorite? get childFavorite;
  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phoneNumber;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  Address? get address;
  @override
  String? get profileId;
  @override
  String? get image;
  @override
  List<String>? get condition;
  @override
  List<String>? get interests;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
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
