// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProgram _$MyProgramFromJson(Map<String, dynamic> json) {
  return _MyProgram.fromJson(json);
}

/// @nodoc
mixin _$MyProgram {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<MyProgramData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProgramCopyWith<MyProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProgramCopyWith<$Res> {
  factory $MyProgramCopyWith(MyProgram value, $Res Function(MyProgram) then) =
      _$MyProgramCopyWithImpl<$Res, MyProgram>;
  @useResult
  $Res call({String? message, bool? status, List<MyProgramData>? data});
}

/// @nodoc
class _$MyProgramCopyWithImpl<$Res, $Val extends MyProgram>
    implements $MyProgramCopyWith<$Res> {
  _$MyProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MyProgramData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyProgramImplCopyWith<$Res>
    implements $MyProgramCopyWith<$Res> {
  factory _$$MyProgramImplCopyWith(
          _$MyProgramImpl value, $Res Function(_$MyProgramImpl) then) =
      __$$MyProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, List<MyProgramData>? data});
}

/// @nodoc
class __$$MyProgramImplCopyWithImpl<$Res>
    extends _$MyProgramCopyWithImpl<$Res, _$MyProgramImpl>
    implements _$$MyProgramImplCopyWith<$Res> {
  __$$MyProgramImplCopyWithImpl(
      _$MyProgramImpl _value, $Res Function(_$MyProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyProgramImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MyProgramData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyProgramImpl implements _MyProgram {
  const _$MyProgramImpl(
      {this.message, this.status, final List<MyProgramData>? data})
      : _data = data;

  factory _$MyProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyProgramImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  final List<MyProgramData>? _data;
  @override
  List<MyProgramData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyProgram(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProgramImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProgramImplCopyWith<_$MyProgramImpl> get copyWith =>
      __$$MyProgramImplCopyWithImpl<_$MyProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyProgramImplToJson(
      this,
    );
  }
}

abstract class _MyProgram implements MyProgram {
  const factory _MyProgram(
      {final String? message,
      final bool? status,
      final List<MyProgramData>? data}) = _$MyProgramImpl;

  factory _MyProgram.fromJson(Map<String, dynamic> json) =
      _$MyProgramImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<MyProgramData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyProgramImplCopyWith<_$MyProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyProgramData _$MyProgramDataFromJson(Map<String, dynamic> json) {
  return _MyProgramData.fromJson(json);
}

/// @nodoc
mixin _$MyProgramData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get programCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProgramDataCopyWith<MyProgramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProgramDataCopyWith<$Res> {
  factory $MyProgramDataCopyWith(
          MyProgramData value, $Res Function(MyProgramData) then) =
      _$MyProgramDataCopyWithImpl<$Res, MyProgramData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? imageUrl,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? programCategory});
}

/// @nodoc
class _$MyProgramDataCopyWithImpl<$Res, $Val extends MyProgramData>
    implements $MyProgramDataCopyWith<$Res> {
  _$MyProgramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? programCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      expert: freezed == expert
          ? _value.expert
          : expert // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyProgramDataImplCopyWith<$Res>
    implements $MyProgramDataCopyWith<$Res> {
  factory _$$MyProgramDataImplCopyWith(
          _$MyProgramDataImpl value, $Res Function(_$MyProgramDataImpl) then) =
      __$$MyProgramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? imageUrl,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? programCategory});
}

/// @nodoc
class __$$MyProgramDataImplCopyWithImpl<$Res>
    extends _$MyProgramDataCopyWithImpl<$Res, _$MyProgramDataImpl>
    implements _$$MyProgramDataImplCopyWith<$Res> {
  __$$MyProgramDataImplCopyWithImpl(
      _$MyProgramDataImpl _value, $Res Function(_$MyProgramDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? programCategory = freezed,
  }) {
    return _then(_$MyProgramDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      expert: freezed == expert
          ? _value.expert
          : expert // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyProgramDataImpl implements _MyProgramData {
  const _$MyProgramDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.imageUrl,
      this.expert,
      this.expertDesignation,
      this.expertImage,
      this.programCategory});

  factory _$MyProgramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyProgramDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? expert;
  @override
  final String? expertDesignation;
  @override
  final String? expertImage;
  @override
  final String? programCategory;

  @override
  String toString() {
    return 'MyProgramData(id: $id, title: $title, imageUrl: $imageUrl, expert: $expert, expertDesignation: $expertDesignation, expertImage: $expertImage, programCategory: $programCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProgramDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.expert, expert) || other.expert == expert) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.expertImage, expertImage) ||
                other.expertImage == expertImage) &&
            (identical(other.programCategory, programCategory) ||
                other.programCategory == programCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl, expert,
      expertDesignation, expertImage, programCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProgramDataImplCopyWith<_$MyProgramDataImpl> get copyWith =>
      __$$MyProgramDataImplCopyWithImpl<_$MyProgramDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyProgramDataImplToJson(
      this,
    );
  }
}

abstract class _MyProgramData implements MyProgramData {
  const factory _MyProgramData(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? imageUrl,
      final String? expert,
      final String? expertDesignation,
      final String? expertImage,
      final String? programCategory}) = _$MyProgramDataImpl;

  factory _MyProgramData.fromJson(Map<String, dynamic> json) =
      _$MyProgramDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get expert;
  @override
  String? get expertDesignation;
  @override
  String? get expertImage;
  @override
  String? get programCategory;
  @override
  @JsonKey(ignore: true)
  _$$MyProgramDataImplCopyWith<_$MyProgramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
