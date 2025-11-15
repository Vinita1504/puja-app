// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TempleMediaModel _$TempleMediaModelFromJson(Map<String, dynamic> json) {
  return _TempleMediaModel.fromJson(json);
}

/// @nodoc
mixin _$TempleMediaModel {
  /// Unique identifier for the temple media entry
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this media belongs to
  @JsonKey(name: 'temple_id')
  String get templeId => throw _privateConstructorUsedError;

  /// URL where the media file (image or video) is stored or hosted
  String get url => throw _privateConstructorUsedError;

  /// Type of media, either IMAGE or VIDEO
  @JsonKey(name: 'type', fromJson: _mediaTypeFromJson, toJson: _mediaTypeToJson)
  MediaType get type => throw _privateConstructorUsedError;

  /// Serializes this TempleMediaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempleMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempleMediaModelCopyWith<TempleMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempleMediaModelCopyWith<$Res> {
  factory $TempleMediaModelCopyWith(
    TempleMediaModel value,
    $Res Function(TempleMediaModel) then,
  ) = _$TempleMediaModelCopyWithImpl<$Res, TempleMediaModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String url,
    @JsonKey(
      name: 'type',
      fromJson: _mediaTypeFromJson,
      toJson: _mediaTypeToJson,
    )
    MediaType type,
  });
}

/// @nodoc
class _$TempleMediaModelCopyWithImpl<$Res, $Val extends TempleMediaModel>
    implements $TempleMediaModelCopyWith<$Res> {
  _$TempleMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempleMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            templeId: null == templeId
                ? _value.templeId
                : templeId // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as MediaType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TempleMediaModelImplCopyWith<$Res>
    implements $TempleMediaModelCopyWith<$Res> {
  factory _$$TempleMediaModelImplCopyWith(
    _$TempleMediaModelImpl value,
    $Res Function(_$TempleMediaModelImpl) then,
  ) = __$$TempleMediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String url,
    @JsonKey(
      name: 'type',
      fromJson: _mediaTypeFromJson,
      toJson: _mediaTypeToJson,
    )
    MediaType type,
  });
}

/// @nodoc
class __$$TempleMediaModelImplCopyWithImpl<$Res>
    extends _$TempleMediaModelCopyWithImpl<$Res, _$TempleMediaModelImpl>
    implements _$$TempleMediaModelImplCopyWith<$Res> {
  __$$TempleMediaModelImplCopyWithImpl(
    _$TempleMediaModelImpl _value,
    $Res Function(_$TempleMediaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempleMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(
      _$TempleMediaModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        templeId: null == templeId
            ? _value.templeId
            : templeId // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MediaType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TempleMediaModelImpl extends _TempleMediaModel {
  const _$TempleMediaModelImpl({
    required this.id,
    @JsonKey(name: 'temple_id') required this.templeId,
    required this.url,
    @JsonKey(
      name: 'type',
      fromJson: _mediaTypeFromJson,
      toJson: _mediaTypeToJson,
    )
    required this.type,
  }) : super._();

  factory _$TempleMediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempleMediaModelImplFromJson(json);

  /// Unique identifier for the temple media entry
  @override
  final String id;

  /// Foreign key reference to the temple this media belongs to
  @override
  @JsonKey(name: 'temple_id')
  final String templeId;

  /// URL where the media file (image or video) is stored or hosted
  @override
  final String url;

  /// Type of media, either IMAGE or VIDEO
  @override
  @JsonKey(name: 'type', fromJson: _mediaTypeFromJson, toJson: _mediaTypeToJson)
  final MediaType type;

  @override
  String toString() {
    return 'TempleMediaModel(id: $id, templeId: $templeId, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempleMediaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, url, type);

  /// Create a copy of TempleMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempleMediaModelImplCopyWith<_$TempleMediaModelImpl> get copyWith =>
      __$$TempleMediaModelImplCopyWithImpl<_$TempleMediaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TempleMediaModelImplToJson(this);
  }
}

abstract class _TempleMediaModel extends TempleMediaModel {
  const factory _TempleMediaModel({
    required final String id,
    @JsonKey(name: 'temple_id') required final String templeId,
    required final String url,
    @JsonKey(
      name: 'type',
      fromJson: _mediaTypeFromJson,
      toJson: _mediaTypeToJson,
    )
    required final MediaType type,
  }) = _$TempleMediaModelImpl;
  const _TempleMediaModel._() : super._();

  factory _TempleMediaModel.fromJson(Map<String, dynamic> json) =
      _$TempleMediaModelImpl.fromJson;

  /// Unique identifier for the temple media entry
  @override
  String get id;

  /// Foreign key reference to the temple this media belongs to
  @override
  @JsonKey(name: 'temple_id')
  String get templeId;

  /// URL where the media file (image or video) is stored or hosted
  @override
  String get url;

  /// Type of media, either IMAGE or VIDEO
  @override
  @JsonKey(name: 'type', fromJson: _mediaTypeFromJson, toJson: _mediaTypeToJson)
  MediaType get type;

  /// Create a copy of TempleMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempleMediaModelImplCopyWith<_$TempleMediaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
