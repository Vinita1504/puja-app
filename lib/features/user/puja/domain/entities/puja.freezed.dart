// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaEntity {
  /// Unique identifier for the puja, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Name of the puja ceremony, must be unique across all pujas
  String get name => throw _privateConstructorUsedError;

  /// Optional foreign key reference to the puja category this belongs to
  String? get categoryId => throw _privateConstructorUsedError;

  /// Array of image URLs showcasing the puja ceremony and related visuals
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  List<String> get videoUrls => throw _privateConstructorUsedError;

  /// Optional duration of the puja ceremony in minutes
  int? get durationMinutes => throw _privateConstructorUsedError;

  /// Whether this puja can be performed online or requires physical presence
  bool get isOnline => throw _privateConstructorUsedError;

  /// Start date and time when the puja becomes available or begins
  DateTime get startDatetime => throw _privateConstructorUsedError;

  /// End date and time when the puja availability or event concludes
  DateTime get endDatetime => throw _privateConstructorUsedError;

  /// Whether this puja is currently active and available for booking
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the puja record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the puja record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional display title for the puja, may differ from the name
  String? get title => throw _privateConstructorUsedError;

  /// Optional detailed description of the puja ceremony, its purpose and significance
  String? get description => throw _privateConstructorUsedError;

  /// Array of JSON objects containing title and description of puja benefits
  List<Map<String, dynamic>> get benefits => throw _privateConstructorUsedError;

  /// Array of JSON objects containing title and description of puja process steps
  List<Map<String, dynamic>> get process => throw _privateConstructorUsedError;

  /// Create a copy of PujaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaEntityCopyWith<PujaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaEntityCopyWith<$Res> {
  factory $PujaEntityCopyWith(
    PujaEntity value,
    $Res Function(PujaEntity) then,
  ) = _$PujaEntityCopyWithImpl<$Res, PujaEntity>;
  @useResult
  $Res call({
    String id,
    String name,
    String? categoryId,
    List<String> imageUrls,
    List<String> videoUrls,
    int? durationMinutes,
    bool isOnline,
    DateTime startDatetime,
    DateTime endDatetime,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? title,
    String? description,
    List<Map<String, dynamic>> benefits,
    List<Map<String, dynamic>> process,
  });
}

/// @nodoc
class _$PujaEntityCopyWithImpl<$Res, $Val extends PujaEntity>
    implements $PujaEntityCopyWith<$Res> {
  _$PujaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaEntity
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
abstract class _$$PujaEntityImplCopyWith<$Res>
    implements $PujaEntityCopyWith<$Res> {
  factory _$$PujaEntityImplCopyWith(
    _$PujaEntityImpl value,
    $Res Function(_$PujaEntityImpl) then,
  ) = __$$PujaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? categoryId,
    List<String> imageUrls,
    List<String> videoUrls,
    int? durationMinutes,
    bool isOnline,
    DateTime startDatetime,
    DateTime endDatetime,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? title,
    String? description,
    List<Map<String, dynamic>> benefits,
    List<Map<String, dynamic>> process,
  });
}

/// @nodoc
class __$$PujaEntityImplCopyWithImpl<$Res>
    extends _$PujaEntityCopyWithImpl<$Res, _$PujaEntityImpl>
    implements _$$PujaEntityImplCopyWith<$Res> {
  __$$PujaEntityImplCopyWithImpl(
    _$PujaEntityImpl _value,
    $Res Function(_$PujaEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaEntity
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
      _$PujaEntityImpl(
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

class _$PujaEntityImpl implements _PujaEntity {
  const _$PujaEntityImpl({
    required this.id,
    required this.name,
    this.categoryId,
    final List<String> imageUrls = const [],
    final List<String> videoUrls = const [],
    this.durationMinutes,
    this.isOnline = true,
    required this.startDatetime,
    required this.endDatetime,
    this.isActive = true,
    required this.createdAt,
    required this.updatedAt,
    this.title,
    this.description,
    final List<Map<String, dynamic>> benefits = const [],
    final List<Map<String, dynamic>> process = const [],
  }) : _imageUrls = imageUrls,
       _videoUrls = videoUrls,
       _benefits = benefits,
       _process = process;

  /// Unique identifier for the puja, auto-generated using cuid
  @override
  final String id;

  /// Name of the puja ceremony, must be unique across all pujas
  @override
  final String name;

  /// Optional foreign key reference to the puja category this belongs to
  @override
  final String? categoryId;

  /// Array of image URLs showcasing the puja ceremony and related visuals
  final List<String> _imageUrls;

  /// Array of image URLs showcasing the puja ceremony and related visuals
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  /// Array of video URLs demonstrating or explaining the puja ceremony
  final List<String> _videoUrls;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  @override
  @JsonKey()
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  /// Optional duration of the puja ceremony in minutes
  @override
  final int? durationMinutes;

  /// Whether this puja can be performed online or requires physical presence
  @override
  @JsonKey()
  final bool isOnline;

  /// Start date and time when the puja becomes available or begins
  @override
  final DateTime startDatetime;

  /// End date and time when the puja availability or event concludes
  @override
  final DateTime endDatetime;

  /// Whether this puja is currently active and available for booking
  @override
  @JsonKey()
  final bool isActive;

  /// Timestamp when the puja record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the puja record was last updated
  @override
  final DateTime updatedAt;

  /// Optional display title for the puja, may differ from the name
  @override
  final String? title;

  /// Optional detailed description of the puja ceremony, its purpose and significance
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
    return 'PujaEntity(id: $id, name: $name, categoryId: $categoryId, imageUrls: $imageUrls, videoUrls: $videoUrls, durationMinutes: $durationMinutes, isOnline: $isOnline, startDatetime: $startDatetime, endDatetime: $endDatetime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, benefits: $benefits, process: $process)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaEntityImpl &&
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

  /// Create a copy of PujaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaEntityImplCopyWith<_$PujaEntityImpl> get copyWith =>
      __$$PujaEntityImplCopyWithImpl<_$PujaEntityImpl>(this, _$identity);
}

abstract class _PujaEntity implements PujaEntity {
  const factory _PujaEntity({
    required final String id,
    required final String name,
    final String? categoryId,
    final List<String> imageUrls,
    final List<String> videoUrls,
    final int? durationMinutes,
    final bool isOnline,
    required final DateTime startDatetime,
    required final DateTime endDatetime,
    final bool isActive,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final String? title,
    final String? description,
    final List<Map<String, dynamic>> benefits,
    final List<Map<String, dynamic>> process,
  }) = _$PujaEntityImpl;

  /// Unique identifier for the puja, auto-generated using cuid
  @override
  String get id;

  /// Name of the puja ceremony, must be unique across all pujas
  @override
  String get name;

  /// Optional foreign key reference to the puja category this belongs to
  @override
  String? get categoryId;

  /// Array of image URLs showcasing the puja ceremony and related visuals
  @override
  List<String> get imageUrls;

  /// Array of video URLs demonstrating or explaining the puja ceremony
  @override
  List<String> get videoUrls;

  /// Optional duration of the puja ceremony in minutes
  @override
  int? get durationMinutes;

  /// Whether this puja can be performed online or requires physical presence
  @override
  bool get isOnline;

  /// Start date and time when the puja becomes available or begins
  @override
  DateTime get startDatetime;

  /// End date and time when the puja availability or event concludes
  @override
  DateTime get endDatetime;

  /// Whether this puja is currently active and available for booking
  @override
  bool get isActive;

  /// Timestamp when the puja record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the puja record was last updated
  @override
  DateTime get updatedAt;

  /// Optional display title for the puja, may differ from the name
  @override
  String? get title;

  /// Optional detailed description of the puja ceremony, its purpose and significance
  @override
  String? get description;

  /// Array of JSON objects containing title and description of puja benefits
  @override
  List<Map<String, dynamic>> get benefits;

  /// Array of JSON objects containing title and description of puja process steps
  @override
  List<Map<String, dynamic>> get process;

  /// Create a copy of PujaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaEntityImplCopyWith<_$PujaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
