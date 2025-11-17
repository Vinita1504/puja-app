// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId) categorySelected,
    required TResult Function(String subcategoryName) subcategoryToggled,
    required TResult Function() filterReset,
    required TResult Function(Set<String>? selectedSubcategories)
    filterInitialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId)? categorySelected,
    TResult? Function(String subcategoryName)? subcategoryToggled,
    TResult? Function()? filterReset,
    TResult? Function(Set<String>? selectedSubcategories)? filterInitialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId)? categorySelected,
    TResult Function(String subcategoryName)? subcategoryToggled,
    TResult Function()? filterReset,
    TResult Function(Set<String>? selectedSubcategories)? filterInitialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_SubcategoryToggled value) subcategoryToggled,
    required TResult Function(_FilterReset value) filterReset,
    required TResult Function(_FilterInitialized value) filterInitialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult? Function(_FilterReset value)? filterReset,
    TResult? Function(_FilterInitialized value)? filterInitialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult Function(_FilterReset value)? filterReset,
    TResult Function(_FilterInitialized value)? filterInitialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaFilterEventCopyWith<$Res> {
  factory $PujaFilterEventCopyWith(
    PujaFilterEvent value,
    $Res Function(PujaFilterEvent) then,
  ) = _$PujaFilterEventCopyWithImpl<$Res, PujaFilterEvent>;
}

/// @nodoc
class _$PujaFilterEventCopyWithImpl<$Res, $Val extends PujaFilterEvent>
    implements $PujaFilterEventCopyWith<$Res> {
  _$PujaFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res> {
  factory _$$CategorySelectedImplCopyWith(
    _$CategorySelectedImpl value,
    $Res Function(_$CategorySelectedImpl) then,
  ) = __$$CategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId});
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res>
    extends _$PujaFilterEventCopyWithImpl<$Res, _$CategorySelectedImpl>
    implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(
    _$CategorySelectedImpl _value,
    $Res Function(_$CategorySelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = freezed}) {
    return _then(
      _$CategorySelectedImpl(
        freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CategorySelectedImpl implements _CategorySelected {
  const _$CategorySelectedImpl(this.categoryId);

  @override
  final String? categoryId;

  @override
  String toString() {
    return 'PujaFilterEvent.categorySelected(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId) categorySelected,
    required TResult Function(String subcategoryName) subcategoryToggled,
    required TResult Function() filterReset,
    required TResult Function(Set<String>? selectedSubcategories)
    filterInitialized,
  }) {
    return categorySelected(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId)? categorySelected,
    TResult? Function(String subcategoryName)? subcategoryToggled,
    TResult? Function()? filterReset,
    TResult? Function(Set<String>? selectedSubcategories)? filterInitialized,
  }) {
    return categorySelected?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId)? categorySelected,
    TResult Function(String subcategoryName)? subcategoryToggled,
    TResult Function()? filterReset,
    TResult Function(Set<String>? selectedSubcategories)? filterInitialized,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_SubcategoryToggled value) subcategoryToggled,
    required TResult Function(_FilterReset value) filterReset,
    required TResult Function(_FilterInitialized value) filterInitialized,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult? Function(_FilterReset value)? filterReset,
    TResult? Function(_FilterInitialized value)? filterInitialized,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult Function(_FilterReset value)? filterReset,
    TResult Function(_FilterInitialized value)? filterInitialized,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements PujaFilterEvent {
  const factory _CategorySelected(final String? categoryId) =
      _$CategorySelectedImpl;

  String? get categoryId;

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubcategoryToggledImplCopyWith<$Res> {
  factory _$$SubcategoryToggledImplCopyWith(
    _$SubcategoryToggledImpl value,
    $Res Function(_$SubcategoryToggledImpl) then,
  ) = __$$SubcategoryToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subcategoryName});
}

/// @nodoc
class __$$SubcategoryToggledImplCopyWithImpl<$Res>
    extends _$PujaFilterEventCopyWithImpl<$Res, _$SubcategoryToggledImpl>
    implements _$$SubcategoryToggledImplCopyWith<$Res> {
  __$$SubcategoryToggledImplCopyWithImpl(
    _$SubcategoryToggledImpl _value,
    $Res Function(_$SubcategoryToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? subcategoryName = null}) {
    return _then(
      _$SubcategoryToggledImpl(
        null == subcategoryName
            ? _value.subcategoryName
            : subcategoryName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubcategoryToggledImpl implements _SubcategoryToggled {
  const _$SubcategoryToggledImpl(this.subcategoryName);

  @override
  final String subcategoryName;

  @override
  String toString() {
    return 'PujaFilterEvent.subcategoryToggled(subcategoryName: $subcategoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryToggledImpl &&
            (identical(other.subcategoryName, subcategoryName) ||
                other.subcategoryName == subcategoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subcategoryName);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryToggledImplCopyWith<_$SubcategoryToggledImpl> get copyWith =>
      __$$SubcategoryToggledImplCopyWithImpl<_$SubcategoryToggledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId) categorySelected,
    required TResult Function(String subcategoryName) subcategoryToggled,
    required TResult Function() filterReset,
    required TResult Function(Set<String>? selectedSubcategories)
    filterInitialized,
  }) {
    return subcategoryToggled(subcategoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId)? categorySelected,
    TResult? Function(String subcategoryName)? subcategoryToggled,
    TResult? Function()? filterReset,
    TResult? Function(Set<String>? selectedSubcategories)? filterInitialized,
  }) {
    return subcategoryToggled?.call(subcategoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId)? categorySelected,
    TResult Function(String subcategoryName)? subcategoryToggled,
    TResult Function()? filterReset,
    TResult Function(Set<String>? selectedSubcategories)? filterInitialized,
    required TResult orElse(),
  }) {
    if (subcategoryToggled != null) {
      return subcategoryToggled(subcategoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_SubcategoryToggled value) subcategoryToggled,
    required TResult Function(_FilterReset value) filterReset,
    required TResult Function(_FilterInitialized value) filterInitialized,
  }) {
    return subcategoryToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult? Function(_FilterReset value)? filterReset,
    TResult? Function(_FilterInitialized value)? filterInitialized,
  }) {
    return subcategoryToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult Function(_FilterReset value)? filterReset,
    TResult Function(_FilterInitialized value)? filterInitialized,
    required TResult orElse(),
  }) {
    if (subcategoryToggled != null) {
      return subcategoryToggled(this);
    }
    return orElse();
  }
}

abstract class _SubcategoryToggled implements PujaFilterEvent {
  const factory _SubcategoryToggled(final String subcategoryName) =
      _$SubcategoryToggledImpl;

  String get subcategoryName;

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubcategoryToggledImplCopyWith<_$SubcategoryToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterResetImplCopyWith<$Res> {
  factory _$$FilterResetImplCopyWith(
    _$FilterResetImpl value,
    $Res Function(_$FilterResetImpl) then,
  ) = __$$FilterResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterResetImplCopyWithImpl<$Res>
    extends _$PujaFilterEventCopyWithImpl<$Res, _$FilterResetImpl>
    implements _$$FilterResetImplCopyWith<$Res> {
  __$$FilterResetImplCopyWithImpl(
    _$FilterResetImpl _value,
    $Res Function(_$FilterResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterResetImpl implements _FilterReset {
  const _$FilterResetImpl();

  @override
  String toString() {
    return 'PujaFilterEvent.filterReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId) categorySelected,
    required TResult Function(String subcategoryName) subcategoryToggled,
    required TResult Function() filterReset,
    required TResult Function(Set<String>? selectedSubcategories)
    filterInitialized,
  }) {
    return filterReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId)? categorySelected,
    TResult? Function(String subcategoryName)? subcategoryToggled,
    TResult? Function()? filterReset,
    TResult? Function(Set<String>? selectedSubcategories)? filterInitialized,
  }) {
    return filterReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId)? categorySelected,
    TResult Function(String subcategoryName)? subcategoryToggled,
    TResult Function()? filterReset,
    TResult Function(Set<String>? selectedSubcategories)? filterInitialized,
    required TResult orElse(),
  }) {
    if (filterReset != null) {
      return filterReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_SubcategoryToggled value) subcategoryToggled,
    required TResult Function(_FilterReset value) filterReset,
    required TResult Function(_FilterInitialized value) filterInitialized,
  }) {
    return filterReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult? Function(_FilterReset value)? filterReset,
    TResult? Function(_FilterInitialized value)? filterInitialized,
  }) {
    return filterReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult Function(_FilterReset value)? filterReset,
    TResult Function(_FilterInitialized value)? filterInitialized,
    required TResult orElse(),
  }) {
    if (filterReset != null) {
      return filterReset(this);
    }
    return orElse();
  }
}

abstract class _FilterReset implements PujaFilterEvent {
  const factory _FilterReset() = _$FilterResetImpl;
}

/// @nodoc
abstract class _$$FilterInitializedImplCopyWith<$Res> {
  factory _$$FilterInitializedImplCopyWith(
    _$FilterInitializedImpl value,
    $Res Function(_$FilterInitializedImpl) then,
  ) = __$$FilterInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<String>? selectedSubcategories});
}

/// @nodoc
class __$$FilterInitializedImplCopyWithImpl<$Res>
    extends _$PujaFilterEventCopyWithImpl<$Res, _$FilterInitializedImpl>
    implements _$$FilterInitializedImplCopyWith<$Res> {
  __$$FilterInitializedImplCopyWithImpl(
    _$FilterInitializedImpl _value,
    $Res Function(_$FilterInitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedSubcategories = freezed}) {
    return _then(
      _$FilterInitializedImpl(
        freezed == selectedSubcategories
            ? _value._selectedSubcategories
            : selectedSubcategories // ignore: cast_nullable_to_non_nullable
                  as Set<String>?,
      ),
    );
  }
}

/// @nodoc

class _$FilterInitializedImpl implements _FilterInitialized {
  const _$FilterInitializedImpl(final Set<String>? selectedSubcategories)
    : _selectedSubcategories = selectedSubcategories;

  final Set<String>? _selectedSubcategories;
  @override
  Set<String>? get selectedSubcategories {
    final value = _selectedSubcategories;
    if (value == null) return null;
    if (_selectedSubcategories is EqualUnmodifiableSetView)
      return _selectedSubcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'PujaFilterEvent.filterInitialized(selectedSubcategories: $selectedSubcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterInitializedImpl &&
            const DeepCollectionEquality().equals(
              other._selectedSubcategories,
              _selectedSubcategories,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_selectedSubcategories),
  );

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterInitializedImplCopyWith<_$FilterInitializedImpl> get copyWith =>
      __$$FilterInitializedImplCopyWithImpl<_$FilterInitializedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId) categorySelected,
    required TResult Function(String subcategoryName) subcategoryToggled,
    required TResult Function() filterReset,
    required TResult Function(Set<String>? selectedSubcategories)
    filterInitialized,
  }) {
    return filterInitialized(selectedSubcategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId)? categorySelected,
    TResult? Function(String subcategoryName)? subcategoryToggled,
    TResult? Function()? filterReset,
    TResult? Function(Set<String>? selectedSubcategories)? filterInitialized,
  }) {
    return filterInitialized?.call(selectedSubcategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId)? categorySelected,
    TResult Function(String subcategoryName)? subcategoryToggled,
    TResult Function()? filterReset,
    TResult Function(Set<String>? selectedSubcategories)? filterInitialized,
    required TResult orElse(),
  }) {
    if (filterInitialized != null) {
      return filterInitialized(selectedSubcategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_SubcategoryToggled value) subcategoryToggled,
    required TResult Function(_FilterReset value) filterReset,
    required TResult Function(_FilterInitialized value) filterInitialized,
  }) {
    return filterInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult? Function(_FilterReset value)? filterReset,
    TResult? Function(_FilterInitialized value)? filterInitialized,
  }) {
    return filterInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_SubcategoryToggled value)? subcategoryToggled,
    TResult Function(_FilterReset value)? filterReset,
    TResult Function(_FilterInitialized value)? filterInitialized,
    required TResult orElse(),
  }) {
    if (filterInitialized != null) {
      return filterInitialized(this);
    }
    return orElse();
  }
}

abstract class _FilterInitialized implements PujaFilterEvent {
  const factory _FilterInitialized(final Set<String>? selectedSubcategories) =
      _$FilterInitializedImpl;

  Set<String>? get selectedSubcategories;

  /// Create a copy of PujaFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterInitializedImplCopyWith<_$FilterInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PujaFilterState {
  String? get selectedCategoryId => throw _privateConstructorUsedError;
  Set<String> get selectedSubcategories => throw _privateConstructorUsedError;

  /// Create a copy of PujaFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaFilterStateCopyWith<PujaFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaFilterStateCopyWith<$Res> {
  factory $PujaFilterStateCopyWith(
    PujaFilterState value,
    $Res Function(PujaFilterState) then,
  ) = _$PujaFilterStateCopyWithImpl<$Res, PujaFilterState>;
  @useResult
  $Res call({String? selectedCategoryId, Set<String> selectedSubcategories});
}

/// @nodoc
class _$PujaFilterStateCopyWithImpl<$Res, $Val extends PujaFilterState>
    implements $PujaFilterStateCopyWith<$Res> {
  _$PujaFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? selectedSubcategories = null,
  }) {
    return _then(
      _value.copyWith(
            selectedCategoryId: freezed == selectedCategoryId
                ? _value.selectedCategoryId
                : selectedCategoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedSubcategories: null == selectedSubcategories
                ? _value.selectedSubcategories
                : selectedSubcategories // ignore: cast_nullable_to_non_nullable
                      as Set<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PujaFilterStateImplCopyWith<$Res>
    implements $PujaFilterStateCopyWith<$Res> {
  factory _$$PujaFilterStateImplCopyWith(
    _$PujaFilterStateImpl value,
    $Res Function(_$PujaFilterStateImpl) then,
  ) = __$$PujaFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selectedCategoryId, Set<String> selectedSubcategories});
}

/// @nodoc
class __$$PujaFilterStateImplCopyWithImpl<$Res>
    extends _$PujaFilterStateCopyWithImpl<$Res, _$PujaFilterStateImpl>
    implements _$$PujaFilterStateImplCopyWith<$Res> {
  __$$PujaFilterStateImplCopyWithImpl(
    _$PujaFilterStateImpl _value,
    $Res Function(_$PujaFilterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? selectedSubcategories = null,
  }) {
    return _then(
      _$PujaFilterStateImpl(
        selectedCategoryId: freezed == selectedCategoryId
            ? _value.selectedCategoryId
            : selectedCategoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedSubcategories: null == selectedSubcategories
            ? _value._selectedSubcategories
            : selectedSubcategories // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
      ),
    );
  }
}

/// @nodoc

class _$PujaFilterStateImpl implements _PujaFilterState {
  const _$PujaFilterStateImpl({
    this.selectedCategoryId,
    final Set<String> selectedSubcategories = const <String>{},
  }) : _selectedSubcategories = selectedSubcategories;

  @override
  final String? selectedCategoryId;
  final Set<String> _selectedSubcategories;
  @override
  @JsonKey()
  Set<String> get selectedSubcategories {
    if (_selectedSubcategories is EqualUnmodifiableSetView)
      return _selectedSubcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedSubcategories);
  }

  @override
  String toString() {
    return 'PujaFilterState(selectedCategoryId: $selectedCategoryId, selectedSubcategories: $selectedSubcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaFilterStateImpl &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            const DeepCollectionEquality().equals(
              other._selectedSubcategories,
              _selectedSubcategories,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedCategoryId,
    const DeepCollectionEquality().hash(_selectedSubcategories),
  );

  /// Create a copy of PujaFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaFilterStateImplCopyWith<_$PujaFilterStateImpl> get copyWith =>
      __$$PujaFilterStateImplCopyWithImpl<_$PujaFilterStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PujaFilterState implements PujaFilterState {
  const factory _PujaFilterState({
    final String? selectedCategoryId,
    final Set<String> selectedSubcategories,
  }) = _$PujaFilterStateImpl;

  @override
  String? get selectedCategoryId;
  @override
  Set<String> get selectedSubcategories;

  /// Create a copy of PujaFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaFilterStateImplCopyWith<_$PujaFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
