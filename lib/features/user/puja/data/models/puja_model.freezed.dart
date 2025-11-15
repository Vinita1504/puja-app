// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PujaModel _$PujaModelFromJson(Map<String, dynamic> json) {
  return _PujaModel.fromJson(json);
}

/// @nodoc
mixin _$PujaModel {
  /// Unique identifier for the puja
  String get id => throw _privateConstructorUsedError;

  /// Name of the puja ceremony, must be unique across all pujas
  String get name => throw _privateConstructorUsedError;

  /// Optional foreign key reference to the puja category
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;

  /// Array of image URLs showcasing the puja ceremony
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls => throw _privateConstructorUsedError;

  /// Optional duration of the puja ceremony in minutes
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes => throw _privateConstructorUsedError;

  /// Whether this puja can be performed online
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;

  /// Start date and time when the puja becomes available
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime => throw _privateConstructorUsedError;

  /// End date and time when the puja availability concludes
  @JsonKey(name: 'end_datetime')
  DateTime get endDatetime => throw _privateConstructorUsedError;

  /// Whether this puja is currently active
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the puja record was created
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the puja record was last updated
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional display title for the puja
  String? get title => throw _privateConstructorUsedError;

  /// Optional detailed description of the puja ceremony
  String? get description => throw _privateConstructorUsedError;

  /// Array of JSON objects containing title and description of puja benefits
  List<Map<String, dynamic>> get benefits => throw _privateConstructorUsedError;

  /// Array of JSON objects containing title and description of puja process steps
  List<Map<String, dynamic>> get process => throw _privateConstructorUsedError;

  /// Serializes this PujaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PujaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaModelCopyWith<PujaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaModelCopyWith<$Res> {
  factory $PujaModelCopyWith(PujaModel value, $Res Function(PujaModel) then) =
      _$PujaModelCopyWithImpl<$Res, PujaModel>;
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'image_urls') List<String> imageUrls,
    @JsonKey(name: 'video_urls') List<String> videoUrls,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'is_online') bool isOnline,
    @JsonKey(name: 'start_datetime') DateTime startDatetime,
    @JsonKey(name: 'end_datetime') DateTime endDatetime,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    String? title,
    String? description,
    List<Map<String, dynamic>> benefits,
    List<Map<String, dynamic>> process,
  });
}

/// @nodoc
class _$PujaModelCopyWithImpl<$Res, $Val extends PujaModel>
    implements $PujaModelCopyWith<$Res> {
  _$PujaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = freezed,
    Object? imageUrls = null,
    Object? videoUrls = null,
    Object? durationMinutes = freezed,
    Object? isOnline = null,
    Object? startDatetime = null,
    Object? endDatetime = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? benefits = null,
    Object? process = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrls: null == imageUrls
                ? _value.imageUrls
                : imageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            videoUrls: null == videoUrls
                ? _value.videoUrls
                : videoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            durationMinutes: freezed == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                      as int?,
            isOnline: null == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                      as bool,
            startDatetime: null == startDatetime
                ? _value.startDatetime
                : startDatetime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDatetime: null == endDatetime
                ? _value.endDatetime
                : endDatetime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            benefits: null == benefits
                ? _value.benefits
                : benefits // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            process: null == process
                ? _value.process
                : process // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PujaModelImplCopyWith<$Res>
    implements $PujaModelCopyWith<$Res> {
  factory _$$PujaModelImplCopyWith(
    _$PujaModelImpl value,
    $Res Function(_$PujaModelImpl) then,
  ) = __$$PujaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'image_urls') List<String> imageUrls,
    @JsonKey(name: 'video_urls') List<String> videoUrls,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'is_online') bool isOnline,
    @JsonKey(name: 'start_datetime') DateTime startDatetime,
    @JsonKey(name: 'end_datetime') DateTime endDatetime,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    String? title,
    String? description,
    List<Map<String, dynamic>> benefits,
    List<Map<String, dynamic>> process,
  });
}

/// @nodoc
class __$$PujaModelImplCopyWithImpl<$Res>
    extends _$PujaModelCopyWithImpl<$Res, _$PujaModelImpl>
    implements _$$PujaModelImplCopyWith<$Res> {
  __$$PujaModelImplCopyWithImpl(
    _$PujaModelImpl _value,
    $Res Function(_$PujaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = freezed,
    Object? imageUrls = null,
    Object? videoUrls = null,
    Object? durationMinutes = freezed,
    Object? isOnline = null,
    Object? startDatetime = null,
    Object? endDatetime = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? benefits = null,
    Object? process = null,
  }) {
    return _then(
      _$PujaModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrls: null == imageUrls
            ? _value._imageUrls
            : imageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        videoUrls: null == videoUrls
            ? _value._videoUrls
            : videoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        durationMinutes: freezed == durationMinutes
            ? _value.durationMinutes
            : durationMinutes // ignore: cast_nullable_to_non_nullable
                  as int?,
        isOnline: null == isOnline
            ? _value.isOnline
            : isOnline // ignore: cast_nullable_to_non_nullable
                  as bool,
        startDatetime: null == startDatetime
            ? _value.startDatetime
            : startDatetime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDatetime: null == endDatetime
            ? _value.endDatetime
            : endDatetime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        benefits: null == benefits
            ? _value._benefits
            : benefits // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        process: null == process
            ? _value._process
            : process // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PujaModelImpl extends _PujaModel {
  const _$PujaModelImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'category_id') this.categoryId,
    @JsonKey(name: 'image_urls') final List<String> imageUrls = const [],
    @JsonKey(name: 'video_urls') final List<String> videoUrls = const [],
    @JsonKey(name: 'duration_minutes') this.durationMinutes,
    @JsonKey(name: 'is_online') this.isOnline = true,
    @JsonKey(name: 'start_datetime') required this.startDatetime,
    @JsonKey(name: 'end_datetime') required this.endDatetime,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    this.title,
    this.description,
    final List<Map<String, dynamic>> benefits = const [],
    final List<Map<String, dynamic>> process = const [],
  }) : _imageUrls = imageUrls,
       _videoUrls = videoUrls,
       _benefits = benefits,
       _process = process,
       super._();

  factory _$PujaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PujaModelImplFromJson(json);

  /// Unique identifier for the puja
  @override
  final String id;

  /// Name of the puja ceremony, must be unique across all pujas
  @override
  final String name;

  /// Optional foreign key reference to the puja category
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;

  /// Array of image URLs showcasing the puja ceremony
  final List<String> _imageUrls;

  /// Array of image URLs showcasing the puja ceremony
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  /// Array of video URLs demonstrating or explaining the puja ceremony
  final List<String> _videoUrls;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  @override
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  /// Optional duration of the puja ceremony in minutes
  @override
  @JsonKey(name: 'duration_minutes')
  final int? durationMinutes;

  /// Whether this puja can be performed online
  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;

  /// Start date and time when the puja becomes available
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime startDatetime;

  /// End date and time when the puja availability concludes
  @override
  @JsonKey(name: 'end_datetime')
  final DateTime endDatetime;

  /// Whether this puja is currently active
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  /// Timestamp when the puja record was created
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Timestamp when the puja record was last updated
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Optional display title for the puja
  @override
  final String? title;

  /// Optional detailed description of the puja ceremony
  @override
  final String? description;

  /// Array of JSON objects containing title and description of puja benefits
  final List<Map<String, dynamic>> _benefits;

  /// Array of JSON objects containing title and description of puja benefits
  @override
  @JsonKey()
  List<Map<String, dynamic>> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  /// Array of JSON objects containing title and description of puja process steps
  final List<Map<String, dynamic>> _process;

  /// Array of JSON objects containing title and description of puja process steps
  @override
  @JsonKey()
  List<Map<String, dynamic>> get process {
    if (_process is EqualUnmodifiableListView) return _process;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_process);
  }

  @override
  String toString() {
    return 'PujaModel(id: $id, name: $name, categoryId: $categoryId, imageUrls: $imageUrls, videoUrls: $videoUrls, durationMinutes: $durationMinutes, isOnline: $isOnline, startDatetime: $startDatetime, endDatetime: $endDatetime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, benefits: $benefits, process: $process)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(
              other._imageUrls,
              _imageUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._videoUrls,
              _videoUrls,
            ) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
            (identical(other.endDatetime, endDatetime) ||
                other.endDatetime == endDatetime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            const DeepCollectionEquality().equals(other._process, _process));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    categoryId,
    const DeepCollectionEquality().hash(_imageUrls),
    const DeepCollectionEquality().hash(_videoUrls),
    durationMinutes,
    isOnline,
    startDatetime,
    endDatetime,
    isActive,
    createdAt,
    updatedAt,
    title,
    description,
    const DeepCollectionEquality().hash(_benefits),
    const DeepCollectionEquality().hash(_process),
  );

  /// Create a copy of PujaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaModelImplCopyWith<_$PujaModelImpl> get copyWith =>
      __$$PujaModelImplCopyWithImpl<_$PujaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PujaModelImplToJson(this);
  }
}

abstract class _PujaModel extends PujaModel {
  const factory _PujaModel({
    required final String id,
    required final String name,
    @JsonKey(name: 'category_id') final String? categoryId,
    @JsonKey(name: 'image_urls') final List<String> imageUrls,
    @JsonKey(name: 'video_urls') final List<String> videoUrls,
    @JsonKey(name: 'duration_minutes') final int? durationMinutes,
    @JsonKey(name: 'is_online') final bool isOnline,
    @JsonKey(name: 'start_datetime') required final DateTime startDatetime,
    @JsonKey(name: 'end_datetime') required final DateTime endDatetime,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    final String? title,
    final String? description,
    final List<Map<String, dynamic>> benefits,
    final List<Map<String, dynamic>> process,
  }) = _$PujaModelImpl;
  const _PujaModel._() : super._();

  factory _PujaModel.fromJson(Map<String, dynamic> json) =
      _$PujaModelImpl.fromJson;

  /// Unique identifier for the puja
  @override
  String get id;

  /// Name of the puja ceremony, must be unique across all pujas
  @override
  String get name;

  /// Optional foreign key reference to the puja category
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;

  /// Array of image URLs showcasing the puja ceremony
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  @override
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls;

  /// Optional duration of the puja ceremony in minutes
  @override
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes;

  /// Whether this puja can be performed online
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;

  /// Start date and time when the puja becomes available
  @override
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime;

  /// End date and time when the puja availability concludes
  @override
  @JsonKey(name: 'end_datetime')
  DateTime get endDatetime;

  /// Whether this puja is currently active
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Timestamp when the puja record was created
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Timestamp when the puja record was last updated
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Optional display title for the puja
  @override
  String? get title;

  /// Optional detailed description of the puja ceremony
  @override
  String? get description;

  /// Array of JSON objects containing title and description of puja benefits
  @override
  List<Map<String, dynamic>> get benefits;

  /// Array of JSON objects containing title and description of puja process steps
  @override
  List<Map<String, dynamic>> get process;

  /// Create a copy of PujaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaModelImplCopyWith<_$PujaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
