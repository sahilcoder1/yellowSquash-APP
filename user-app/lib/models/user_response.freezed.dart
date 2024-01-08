// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserData? get data => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call({bool? status, String? message, UserData? data, String? token});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

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
    Object? token = freezed,
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
              as UserData?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, UserData? data, String? token});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserResponseImpl(
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
              as UserData?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl({this.status, this.message, this.data, this.token});

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final UserData? data;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserResponse(status: $status, message: $message, data: $data, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {final bool? status,
      final String? message,
      final UserData? data,
      final String? token}) = _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  UserData? get data;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get isParent => throw _privateConstructorUsedError;
  String? get profileid => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  int? get patientLength => throw _privateConstructorUsedError;
  int? get index =>
      throw _privateConstructorUsedError; // List<dynamic>? condition,
// List<dynamic>? interests,
  String? get role => throw _privateConstructorUsedError;
  dynamic get patientDetails => throw _privateConstructorUsedError;
  dynamic get observer => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  Favorite? get favorite => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? password,
      bool? isParent,
      String? profileid,
      String? profilePicture,
      int? patientLength,
      int? index,
      String? role,
      dynamic patientDetails,
      dynamic observer,
      dynamic address,
      Favorite? favorite,
      @JsonKey(name: '_id') String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

  $FavoriteCopyWith<$Res>? get favorite;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? isParent = freezed,
    Object? profileid = freezed,
    Object? profilePicture = freezed,
    Object? patientLength = freezed,
    Object? index = freezed,
    Object? role = freezed,
    Object? patientDetails = freezed,
    Object? observer = freezed,
    Object? address = freezed,
    Object? favorite = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
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
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileid: freezed == profileid
          ? _value.profileid
          : profileid // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      patientLength: freezed == patientLength
          ? _value.patientLength
          : patientLength // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDetails: freezed == patientDetails
          ? _value.patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Favorite?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? password,
      bool? isParent,
      String? profileid,
      String? profilePicture,
      int? patientLength,
      int? index,
      String? role,
      dynamic patientDetails,
      dynamic observer,
      dynamic address,
      Favorite? favorite,
      @JsonKey(name: '_id') String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

  @override
  $FavoriteCopyWith<$Res>? get favorite;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? isParent = freezed,
    Object? profileid = freezed,
    Object? profilePicture = freezed,
    Object? patientLength = freezed,
    Object? index = freezed,
    Object? role = freezed,
    Object? patientDetails = freezed,
    Object? observer = freezed,
    Object? address = freezed,
    Object? favorite = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$UserDataImpl(
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
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileid: freezed == profileid
          ? _value.profileid
          : profileid // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      patientLength: freezed == patientLength
          ? _value.patientLength
          : patientLength // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDetails: freezed == patientDetails
          ? _value.patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Favorite?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {this.fullName,
      this.email,
      this.phone,
      this.password,
      this.isParent,
      this.profileid,
      this.profilePicture,
      this.patientLength,
      this.index,
      this.role,
      this.patientDetails,
      this.observer,
      this.address,
      this.favorite,
      @JsonKey(name: '_id') this.id,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final bool? isParent;
  @override
  final String? profileid;
  @override
  final String? profilePicture;
  @override
  final int? patientLength;
  @override
  final int? index;
// List<dynamic>? condition,
// List<dynamic>? interests,
  @override
  final String? role;
  @override
  final dynamic patientDetails;
  @override
  final dynamic observer;
  @override
  final dynamic address;
  @override
  final Favorite? favorite;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'UserData(fullName: $fullName, email: $email, phone: $phone, password: $password, isParent: $isParent, profileid: $profileid, profilePicture: $profilePicture, patientLength: $patientLength, index: $index, role: $role, patientDetails: $patientDetails, observer: $observer, address: $address, favorite: $favorite, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isParent, isParent) ||
                other.isParent == isParent) &&
            (identical(other.profileid, profileid) ||
                other.profileid == profileid) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.patientLength, patientLength) ||
                other.patientLength == patientLength) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other.patientDetails, patientDetails) &&
            const DeepCollectionEquality().equals(other.observer, observer) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      phone,
      password,
      isParent,
      profileid,
      profilePicture,
      patientLength,
      index,
      role,
      const DeepCollectionEquality().hash(patientDetails),
      const DeepCollectionEquality().hash(observer),
      const DeepCollectionEquality().hash(address),
      favorite,
      id,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final String? fullName,
      final String? email,
      final String? phone,
      final String? password,
      final bool? isParent,
      final String? profileid,
      final String? profilePicture,
      final int? patientLength,
      final int? index,
      final String? role,
      final dynamic patientDetails,
      final dynamic observer,
      final dynamic address,
      final Favorite? favorite,
      @JsonKey(name: '_id') final String? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  bool? get isParent;
  @override
  String? get profileid;
  @override
  String? get profilePicture;
  @override
  int? get patientLength;
  @override
  int? get index;
  @override // List<dynamic>? condition,
// List<dynamic>? interests,
  String? get role;
  @override
  dynamic get patientDetails;
  @override
  dynamic get observer;
  @override
  dynamic get address;
  @override
  Favorite? get favorite;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
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
