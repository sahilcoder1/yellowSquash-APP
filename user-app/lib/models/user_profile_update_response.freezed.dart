// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileUpdateResponse _$UserProfileUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _UserProfileUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileUpdateResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserProfileData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileUpdateResponseCopyWith<UserProfileUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileUpdateResponseCopyWith<$Res> {
  factory $UserProfileUpdateResponseCopyWith(UserProfileUpdateResponse value,
          $Res Function(UserProfileUpdateResponse) then) =
      _$UserProfileUpdateResponseCopyWithImpl<$Res, UserProfileUpdateResponse>;
  @useResult
  $Res call({bool? status, String? message, UserProfileData? data});

  $UserProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileUpdateResponseCopyWithImpl<$Res,
        $Val extends UserProfileUpdateResponse>
    implements $UserProfileUpdateResponseCopyWith<$Res> {
  _$UserProfileUpdateResponseCopyWithImpl(this._value, this._then);

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
              as UserProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileUpdateResponseImplCopyWith<$Res>
    implements $UserProfileUpdateResponseCopyWith<$Res> {
  factory _$$UserProfileUpdateResponseImplCopyWith(
          _$UserProfileUpdateResponseImpl value,
          $Res Function(_$UserProfileUpdateResponseImpl) then) =
      __$$UserProfileUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, UserProfileData? data});

  @override
  $UserProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserProfileUpdateResponseImplCopyWithImpl<$Res>
    extends _$UserProfileUpdateResponseCopyWithImpl<$Res,
        _$UserProfileUpdateResponseImpl>
    implements _$$UserProfileUpdateResponseImplCopyWith<$Res> {
  __$$UserProfileUpdateResponseImplCopyWithImpl(
      _$UserProfileUpdateResponseImpl _value,
      $Res Function(_$UserProfileUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserProfileUpdateResponseImpl(
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
              as UserProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileUpdateResponseImpl implements _UserProfileUpdateResponse {
  const _$UserProfileUpdateResponseImpl({this.status, this.message, this.data});

  factory _$UserProfileUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileUpdateResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final UserProfileData? data;

  @override
  String toString() {
    return 'UserProfileUpdateResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileUpdateResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileUpdateResponseImplCopyWith<_$UserProfileUpdateResponseImpl>
      get copyWith => __$$UserProfileUpdateResponseImplCopyWithImpl<
          _$UserProfileUpdateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileUpdateResponse implements UserProfileUpdateResponse {
  const factory _UserProfileUpdateResponse(
      {final bool? status,
      final String? message,
      final UserProfileData? data}) = _$UserProfileUpdateResponseImpl;

  factory _UserProfileUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileUpdateResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  UserProfileData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileUpdateResponseImplCopyWith<_$UserProfileUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  Observer? get observer => throw _privateConstructorUsedError;
  dynamic get userType => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      String? fullName,
      String? email,
      String? phone,
      String? role,
      Observer? observer,
      dynamic userType,
      Address? address,
      String? age,
      String? condition,
      String? gender,
      String? interests,
      String? location,
      String? profilePicture,
      String? timezone});

  $ObserverCopyWith<$Res>? get observer;
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
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? observer = freezed,
    Object? userType = freezed,
    Object? address = freezed,
    Object? age = freezed,
    Object? condition = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? location = freezed,
    Object? profilePicture = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObserverCopyWith<$Res>? get observer {
    if (_value.observer == null) {
      return null;
    }

    return $ObserverCopyWith<$Res>(_value.observer!, (value) {
      return _then(_value.copyWith(observer: value) as $Val);
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
      {@JsonKey(name: '_id') String? id,
      String? fullName,
      String? email,
      String? phone,
      String? role,
      Observer? observer,
      dynamic userType,
      Address? address,
      String? age,
      String? condition,
      String? gender,
      String? interests,
      String? location,
      String? profilePicture,
      String? timezone});

  @override
  $ObserverCopyWith<$Res>? get observer;
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
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? observer = freezed,
    Object? userType = freezed,
    Object? address = freezed,
    Object? age = freezed,
    Object? condition = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? location = freezed,
    Object? profilePicture = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.fullName,
      this.email,
      this.phone,
      this.role,
      this.observer,
      this.userType,
      this.address,
      this.age,
      this.condition,
      this.gender,
      this.interests,
      this.location,
      this.profilePicture,
      this.timezone});

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? role;
  @override
  final Observer? observer;
  @override
  final dynamic userType;
  @override
  final Address? address;
  @override
  final String? age;
  @override
  final String? condition;
  @override
  final String? gender;
  @override
  final String? interests;
  @override
  final String? location;
  @override
  final String? profilePicture;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'UserProfileData(id: $id, fullName: $fullName, email: $email, phone: $phone, role: $role, observer: $observer, userType: $userType, address: $address, age: $age, condition: $condition, gender: $gender, interests: $interests, location: $location, profilePicture: $profilePicture, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.observer, observer) ||
                other.observer == observer) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      email,
      phone,
      role,
      observer,
      const DeepCollectionEquality().hash(userType),
      address,
      age,
      condition,
      gender,
      interests,
      location,
      profilePicture,
      timezone);

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
      {@JsonKey(name: '_id') final String? id,
      final String? fullName,
      final String? email,
      final String? phone,
      final String? role,
      final Observer? observer,
      final dynamic userType,
      final Address? address,
      final String? age,
      final String? condition,
      final String? gender,
      final String? interests,
      final String? location,
      final String? profilePicture,
      final String? timezone}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get role;
  @override
  Observer? get observer;
  @override
  dynamic get userType;
  @override
  Address? get address;
  @override
  String? get age;
  @override
  String? get condition;
  @override
  String? get gender;
  @override
  String? get interests;
  @override
  String? get location;
  @override
  String? get profilePicture;
  @override
  String? get timezone;
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
  String? get flatNoStreetName => throw _privateConstructorUsedError;
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
      {String? flatNoStreetName,
      String? cityTownDistrict,
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
      {String? flatNoStreetName,
      String? cityTownDistrict,
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
  const _$AddressImpl(
      {this.flatNoStreetName,
      this.cityTownDistrict,
      this.pincode,
      this.state,
      this.country});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? flatNoStreetName;
  @override
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
  const factory _Address(
      {final String? flatNoStreetName,
      final String? cityTownDistrict,
      final String? pincode,
      final String? state,
      final String? country}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get flatNoStreetName;
  @override
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

Observer _$ObserverFromJson(Map<String, dynamic> json) {
  return _Observer.fromJson(json);
}

/// @nodoc
mixin _$Observer {
  Observer1? get observer1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObserverCopyWith<Observer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObserverCopyWith<$Res> {
  factory $ObserverCopyWith(Observer value, $Res Function(Observer) then) =
      _$ObserverCopyWithImpl<$Res, Observer>;
  @useResult
  $Res call({Observer1? observer1});

  $Observer1CopyWith<$Res>? get observer1;
}

/// @nodoc
class _$ObserverCopyWithImpl<$Res, $Val extends Observer>
    implements $ObserverCopyWith<$Res> {
  _$ObserverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observer1 = freezed,
  }) {
    return _then(_value.copyWith(
      observer1: freezed == observer1
          ? _value.observer1
          : observer1 // ignore: cast_nullable_to_non_nullable
              as Observer1?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $Observer1CopyWith<$Res>? get observer1 {
    if (_value.observer1 == null) {
      return null;
    }

    return $Observer1CopyWith<$Res>(_value.observer1!, (value) {
      return _then(_value.copyWith(observer1: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObserverImplCopyWith<$Res>
    implements $ObserverCopyWith<$Res> {
  factory _$$ObserverImplCopyWith(
          _$ObserverImpl value, $Res Function(_$ObserverImpl) then) =
      __$$ObserverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Observer1? observer1});

  @override
  $Observer1CopyWith<$Res>? get observer1;
}

/// @nodoc
class __$$ObserverImplCopyWithImpl<$Res>
    extends _$ObserverCopyWithImpl<$Res, _$ObserverImpl>
    implements _$$ObserverImplCopyWith<$Res> {
  __$$ObserverImplCopyWithImpl(
      _$ObserverImpl _value, $Res Function(_$ObserverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observer1 = freezed,
  }) {
    return _then(_$ObserverImpl(
      observer1: freezed == observer1
          ? _value.observer1
          : observer1 // ignore: cast_nullable_to_non_nullable
              as Observer1?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObserverImpl implements _Observer {
  const _$ObserverImpl({this.observer1});

  factory _$ObserverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObserverImplFromJson(json);

  @override
  final Observer1? observer1;

  @override
  String toString() {
    return 'Observer(observer1: $observer1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObserverImpl &&
            (identical(other.observer1, observer1) ||
                other.observer1 == observer1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, observer1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObserverImplCopyWith<_$ObserverImpl> get copyWith =>
      __$$ObserverImplCopyWithImpl<_$ObserverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObserverImplToJson(
      this,
    );
  }
}

abstract class _Observer implements Observer {
  const factory _Observer({final Observer1? observer1}) = _$ObserverImpl;

  factory _Observer.fromJson(Map<String, dynamic> json) =
      _$ObserverImpl.fromJson;

  @override
  Observer1? get observer1;
  @override
  @JsonKey(ignore: true)
  _$$ObserverImplCopyWith<_$ObserverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Observer1 _$Observer1FromJson(Map<String, dynamic> json) {
  return _Observer1.fromJson(json);
}

/// @nodoc
mixin _$Observer1 {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get relation => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Observer1CopyWith<Observer1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Observer1CopyWith<$Res> {
  factory $Observer1CopyWith(Observer1 value, $Res Function(Observer1) then) =
      _$Observer1CopyWithImpl<$Res, Observer1>;
  @useResult
  $Res call(
      {String? fullName,
      String? phoneNumber,
      String? relation,
      String? password});
}

/// @nodoc
class _$Observer1CopyWithImpl<$Res, $Val extends Observer1>
    implements $Observer1CopyWith<$Res> {
  _$Observer1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? relation = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Observer1ImplCopyWith<$Res>
    implements $Observer1CopyWith<$Res> {
  factory _$$Observer1ImplCopyWith(
          _$Observer1Impl value, $Res Function(_$Observer1Impl) then) =
      __$$Observer1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? phoneNumber,
      String? relation,
      String? password});
}

/// @nodoc
class __$$Observer1ImplCopyWithImpl<$Res>
    extends _$Observer1CopyWithImpl<$Res, _$Observer1Impl>
    implements _$$Observer1ImplCopyWith<$Res> {
  __$$Observer1ImplCopyWithImpl(
      _$Observer1Impl _value, $Res Function(_$Observer1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? relation = freezed,
    Object? password = freezed,
  }) {
    return _then(_$Observer1Impl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Observer1Impl implements _Observer1 {
  const _$Observer1Impl(
      {this.fullName, this.phoneNumber, this.relation, this.password});

  factory _$Observer1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Observer1ImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final String? relation;
  @override
  final String? password;

  @override
  String toString() {
    return 'Observer1(fullName: $fullName, phoneNumber: $phoneNumber, relation: $relation, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Observer1Impl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, phoneNumber, relation, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Observer1ImplCopyWith<_$Observer1Impl> get copyWith =>
      __$$Observer1ImplCopyWithImpl<_$Observer1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Observer1ImplToJson(
      this,
    );
  }
}

abstract class _Observer1 implements Observer1 {
  const factory _Observer1(
      {final String? fullName,
      final String? phoneNumber,
      final String? relation,
      final String? password}) = _$Observer1Impl;

  factory _Observer1.fromJson(Map<String, dynamic> json) =
      _$Observer1Impl.fromJson;

  @override
  String? get fullName;
  @override
  String? get phoneNumber;
  @override
  String? get relation;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$Observer1ImplCopyWith<_$Observer1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
