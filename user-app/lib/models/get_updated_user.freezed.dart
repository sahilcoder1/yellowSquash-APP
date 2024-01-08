// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_updated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUpdatedUser _$GetUpdatedUserFromJson(Map<String, dynamic> json) {
  return _GetUpdatedUser.fromJson(json);
}

/// @nodoc
mixin _$GetUpdatedUser {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  getUpdatedData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUpdatedUserCopyWith<GetUpdatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUpdatedUserCopyWith<$Res> {
  factory $GetUpdatedUserCopyWith(
          GetUpdatedUser value, $Res Function(GetUpdatedUser) then) =
      _$GetUpdatedUserCopyWithImpl<$Res, GetUpdatedUser>;
  @useResult
  $Res call({bool? status, String? message, getUpdatedData? data});

  $getUpdatedDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetUpdatedUserCopyWithImpl<$Res, $Val extends GetUpdatedUser>
    implements $GetUpdatedUserCopyWith<$Res> {
  _$GetUpdatedUserCopyWithImpl(this._value, this._then);

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
              as getUpdatedData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $getUpdatedDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $getUpdatedDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetUpdatedUserImplCopyWith<$Res>
    implements $GetUpdatedUserCopyWith<$Res> {
  factory _$$GetUpdatedUserImplCopyWith(_$GetUpdatedUserImpl value,
          $Res Function(_$GetUpdatedUserImpl) then) =
      __$$GetUpdatedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, getUpdatedData? data});

  @override
  $getUpdatedDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUpdatedUserImplCopyWithImpl<$Res>
    extends _$GetUpdatedUserCopyWithImpl<$Res, _$GetUpdatedUserImpl>
    implements _$$GetUpdatedUserImplCopyWith<$Res> {
  __$$GetUpdatedUserImplCopyWithImpl(
      _$GetUpdatedUserImpl _value, $Res Function(_$GetUpdatedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetUpdatedUserImpl(
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
              as getUpdatedData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUpdatedUserImpl implements _GetUpdatedUser {
  const _$GetUpdatedUserImpl({this.status, this.message, this.data});

  factory _$GetUpdatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUpdatedUserImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final getUpdatedData? data;

  @override
  String toString() {
    return 'GetUpdatedUser(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUpdatedUserImpl &&
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
  _$$GetUpdatedUserImplCopyWith<_$GetUpdatedUserImpl> get copyWith =>
      __$$GetUpdatedUserImplCopyWithImpl<_$GetUpdatedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUpdatedUserImplToJson(
      this,
    );
  }
}

abstract class _GetUpdatedUser implements GetUpdatedUser {
  const factory _GetUpdatedUser(
      {final bool? status,
      final String? message,
      final getUpdatedData? data}) = _$GetUpdatedUserImpl;

  factory _GetUpdatedUser.fromJson(Map<String, dynamic> json) =
      _$GetUpdatedUserImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  getUpdatedData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUpdatedUserImplCopyWith<_$GetUpdatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

getUpdatedData _$getUpdatedDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$getUpdatedData {
  Favorite? get favorite => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  List<String>? get condition => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  Observer? get observer => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  List<PatientDetail>? get patientDetails => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $getUpdatedDataCopyWith<getUpdatedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $getUpdatedDataCopyWith<$Res> {
  factory $getUpdatedDataCopyWith(
          getUpdatedData value, $Res Function(getUpdatedData) then) =
      _$getUpdatedDataCopyWithImpl<$Res, getUpdatedData>;
  @useResult
  $Res call(
      {Favorite? favorite,
      @JsonKey(name: '_id') String? id,
      String? fullName,
      String? email,
      String? phone,
      String? password,
      int? age,
      String? gender,
      List<String>? condition,
      List<String>? interests,
      String? role,
      Observer? observer,
      Address? address,
      List<PatientDetail>? patientDetails,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? location,
      String? profilePicture,
      String? timezone});

  $FavoriteCopyWith<$Res>? get favorite;
  $ObserverCopyWith<$Res>? get observer;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$getUpdatedDataCopyWithImpl<$Res, $Val extends getUpdatedData>
    implements $getUpdatedDataCopyWith<$Res> {
  _$getUpdatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorite = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? condition = freezed,
    Object? interests = freezed,
    Object? role = freezed,
    Object? observer = freezed,
    Object? address = freezed,
    Object? patientDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? location = freezed,
    Object? profilePicture = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Favorite?,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      patientDetails: freezed == patientDetails
          ? _value.patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as List<PatientDetail>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $FavoriteCopyWith<$Res>? get favorite {
    if (_value.favorite == null) {
      return null;
    }

    return $FavoriteCopyWith<$Res>(_value.favorite!, (value) {
      return _then(_value.copyWith(favorite: value) as $Val);
    });
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
abstract class _$$DataImplCopyWith<$Res>
    implements $getUpdatedDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Favorite? favorite,
      @JsonKey(name: '_id') String? id,
      String? fullName,
      String? email,
      String? phone,
      String? password,
      int? age,
      String? gender,
      List<String>? condition,
      List<String>? interests,
      String? role,
      Observer? observer,
      Address? address,
      List<PatientDetail>? patientDetails,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? location,
      String? profilePicture,
      String? timezone});

  @override
  $FavoriteCopyWith<$Res>? get favorite;
  @override
  $ObserverCopyWith<$Res>? get observer;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$getUpdatedDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorite = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? condition = freezed,
    Object? interests = freezed,
    Object? role = freezed,
    Object? observer = freezed,
    Object? address = freezed,
    Object? patientDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? location = freezed,
    Object? profilePicture = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$DataImpl(
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Favorite?,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value._condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      patientDetails: freezed == patientDetails
          ? _value._patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as List<PatientDetail>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.favorite,
      @JsonKey(name: '_id') this.id,
      this.fullName,
      this.email,
      this.phone,
      this.password,
      this.age,
      this.gender,
      final List<String>? condition,
      final List<String>? interests,
      this.role,
      this.observer,
      this.address,
      final List<PatientDetail>? patientDetails,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.location,
      this.profilePicture,
      this.timezone})
      : _condition = condition,
        _interests = interests,
        _patientDetails = patientDetails;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Favorite? favorite;
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
  final String? password;
  @override
  final int? age;
  @override
  final String? gender;
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
  final String? role;
  @override
  final Observer? observer;
  @override
  final Address? address;
  final List<PatientDetail>? _patientDetails;
  @override
  List<PatientDetail>? get patientDetails {
    final value = _patientDetails;
    if (value == null) return null;
    if (_patientDetails is EqualUnmodifiableListView) return _patientDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final String? location;
  @override
  final String? profilePicture;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'getUpdatedData(favorite: $favorite, id: $id, fullName: $fullName, email: $email, phone: $phone, password: $password, age: $age, gender: $gender, condition: $condition, interests: $interests, role: $role, observer: $observer, address: $address, patientDetails: $patientDetails, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, location: $location, profilePicture: $profilePicture, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._condition, _condition) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.observer, observer) ||
                other.observer == observer) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._patientDetails, _patientDetails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        favorite,
        id,
        fullName,
        email,
        phone,
        password,
        age,
        gender,
        const DeepCollectionEquality().hash(_condition),
        const DeepCollectionEquality().hash(_interests),
        role,
        observer,
        address,
        const DeepCollectionEquality().hash(_patientDetails),
        createdAt,
        updatedAt,
        v,
        location,
        profilePicture,
        timezone
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements getUpdatedData {
  const factory _Data(
      {final Favorite? favorite,
      @JsonKey(name: '_id') final String? id,
      final String? fullName,
      final String? email,
      final String? phone,
      final String? password,
      final int? age,
      final String? gender,
      final List<String>? condition,
      final List<String>? interests,
      final String? role,
      final Observer? observer,
      final Address? address,
      final List<PatientDetail>? patientDetails,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final String? location,
      final String? profilePicture,
      final String? timezone}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Favorite? get favorite;
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
  String? get password;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  List<String>? get condition;
  @override
  List<String>? get interests;
  @override
  String? get role;
  @override
  Observer? get observer;
  @override
  Address? get address;
  @override
  List<PatientDetail>? get patientDetails;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  String? get location;
  @override
  String? get profilePicture;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
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

Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

/// @nodoc
mixin _$Favorite {
  List<dynamic>? get programId => throw _privateConstructorUsedError;
  List<dynamic>? get webinarId => throw _privateConstructorUsedError;
  List<dynamic>? get expertId => throw _privateConstructorUsedError;
  List<dynamic>? get healthPediaId => throw _privateConstructorUsedError;
  List<dynamic>? get videohealthPediaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res, Favorite>;
  @useResult
  $Res call(
      {List<dynamic>? programId,
      List<dynamic>? webinarId,
      List<dynamic>? expertId,
      List<dynamic>? healthPediaId,
      List<dynamic>? videohealthPediaId});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res, $Val extends Favorite>
    implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

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
abstract class _$$FavoriteImplCopyWith<$Res>
    implements $FavoriteCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
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
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
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
    return _then(_$FavoriteImpl(
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
class _$FavoriteImpl implements _Favorite {
  const _$FavoriteImpl(
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

  factory _$FavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteImplFromJson(json);

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
    return 'Favorite(programId: $programId, webinarId: $webinarId, expertId: $expertId, healthPediaId: $healthPediaId, videohealthPediaId: $videohealthPediaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteImpl &&
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
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      __$$FavoriteImplCopyWithImpl<_$FavoriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteImplToJson(
      this,
    );
  }
}

abstract class _Favorite implements Favorite {
  const factory _Favorite(
      {final List<dynamic>? programId,
      final List<dynamic>? webinarId,
      final List<dynamic>? expertId,
      final List<dynamic>? healthPediaId,
      final List<dynamic>? videohealthPediaId}) = _$FavoriteImpl;

  factory _Favorite.fromJson(Map<String, dynamic> json) =
      _$FavoriteImpl.fromJson;

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
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
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

PatientDetail _$PatientDetailFromJson(Map<String, dynamic> json) {
  return _PatientDetail.fromJson(json);
}

/// @nodoc
mixin _$PatientDetail {
  Favorite? get childFavorite => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  dynamic get gender => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<dynamic>? get condition => throw _privateConstructorUsedError;
  List<dynamic>? get interests => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientDetailCopyWith<PatientDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDetailCopyWith<$Res> {
  factory $PatientDetailCopyWith(
          PatientDetail value, $Res Function(PatientDetail) then) =
      _$PatientDetailCopyWithImpl<$Res, PatientDetail>;
  @useResult
  $Res call(
      {Favorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      dynamic gender,
      dynamic address,
      String? profileId,
      String? image,
      List<dynamic>? condition,
      List<dynamic>? interests,
      String? id});

  $FavoriteCopyWith<$Res>? get childFavorite;
}

/// @nodoc
class _$PatientDetailCopyWithImpl<$Res, $Val extends PatientDetail>
    implements $PatientDetailCopyWith<$Res> {
  _$PatientDetailCopyWithImpl(this._value, this._then);

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
              as Favorite?,
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
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<dynamic>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteCopyWith<$Res>? get childFavorite {
    if (_value.childFavorite == null) {
      return null;
    }

    return $FavoriteCopyWith<$Res>(_value.childFavorite!, (value) {
      return _then(_value.copyWith(childFavorite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientDetailImplCopyWith<$Res>
    implements $PatientDetailCopyWith<$Res> {
  factory _$$PatientDetailImplCopyWith(
          _$PatientDetailImpl value, $Res Function(_$PatientDetailImpl) then) =
      __$$PatientDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Favorite? childFavorite,
      String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      dynamic gender,
      dynamic address,
      String? profileId,
      String? image,
      List<dynamic>? condition,
      List<dynamic>? interests,
      String? id});

  @override
  $FavoriteCopyWith<$Res>? get childFavorite;
}

/// @nodoc
class __$$PatientDetailImplCopyWithImpl<$Res>
    extends _$PatientDetailCopyWithImpl<$Res, _$PatientDetailImpl>
    implements _$$PatientDetailImplCopyWith<$Res> {
  __$$PatientDetailImplCopyWithImpl(
      _$PatientDetailImpl _value, $Res Function(_$PatientDetailImpl) _then)
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
    return _then(_$PatientDetailImpl(
      childFavorite: freezed == childFavorite
          ? _value.childFavorite
          : childFavorite // ignore: cast_nullable_to_non_nullable
              as Favorite?,
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
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<dynamic>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientDetailImpl implements _PatientDetail {
  const _$PatientDetailImpl(
      {this.childFavorite,
      this.fullName,
      this.emailId,
      this.phoneNumber,
      this.age,
      this.gender,
      this.address,
      this.profileId,
      this.image,
      final List<dynamic>? condition,
      final List<dynamic>? interests,
      this.id})
      : _condition = condition,
        _interests = interests;

  factory _$PatientDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientDetailImplFromJson(json);

  @override
  final Favorite? childFavorite;
  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phoneNumber;
  @override
  final int? age;
  @override
  final dynamic gender;
  @override
  final dynamic address;
  @override
  final String? profileId;
  @override
  final String? image;
  final List<dynamic>? _condition;
  @override
  List<dynamic>? get condition {
    final value = _condition;
    if (value == null) return null;
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _interests;
  @override
  List<dynamic>? get interests {
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
    return 'PatientDetail(childFavorite: $childFavorite, fullName: $fullName, emailId: $emailId, phoneNumber: $phoneNumber, age: $age, gender: $gender, address: $address, profileId: $profileId, image: $image, condition: $condition, interests: $interests, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientDetailImpl &&
            (identical(other.childFavorite, childFavorite) ||
                other.childFavorite == childFavorite) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.address, address) &&
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
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(address),
      profileId,
      image,
      const DeepCollectionEquality().hash(_condition),
      const DeepCollectionEquality().hash(_interests),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDetailImplCopyWith<_$PatientDetailImpl> get copyWith =>
      __$$PatientDetailImplCopyWithImpl<_$PatientDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientDetailImplToJson(
      this,
    );
  }
}

abstract class _PatientDetail implements PatientDetail {
  const factory _PatientDetail(
      {final Favorite? childFavorite,
      final String? fullName,
      final String? emailId,
      final String? phoneNumber,
      final int? age,
      final dynamic gender,
      final dynamic address,
      final String? profileId,
      final String? image,
      final List<dynamic>? condition,
      final List<dynamic>? interests,
      final String? id}) = _$PatientDetailImpl;

  factory _PatientDetail.fromJson(Map<String, dynamic> json) =
      _$PatientDetailImpl.fromJson;

  @override
  Favorite? get childFavorite;
  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phoneNumber;
  @override
  int? get age;
  @override
  dynamic get gender;
  @override
  dynamic get address;
  @override
  String? get profileId;
  @override
  String? get image;
  @override
  List<dynamic>? get condition;
  @override
  List<dynamic>? get interests;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PatientDetailImplCopyWith<_$PatientDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
