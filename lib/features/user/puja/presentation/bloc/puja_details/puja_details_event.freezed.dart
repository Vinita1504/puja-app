// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaDetailsEventCopyWith<$Res> {
  factory $PujaDetailsEventCopyWith(
    PujaDetailsEvent value,
    $Res Function(PujaDetailsEvent) then,
  ) = _$PujaDetailsEventCopyWithImpl<$Res, PujaDetailsEvent>;
}

/// @nodoc
class _$PujaDetailsEventCopyWithImpl<$Res, $Val extends PujaDetailsEvent>
    implements $PujaDetailsEventCopyWith<$Res> {
  _$PujaDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PujaDetailsLoadedImplCopyWith<$Res> {
  factory _$$PujaDetailsLoadedImplCopyWith(
    _$PujaDetailsLoadedImpl value,
    $Res Function(_$PujaDetailsLoadedImpl) then,
  ) = __$$PujaDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pujaId});
}

/// @nodoc
class __$$PujaDetailsLoadedImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$PujaDetailsLoadedImpl>
    implements _$$PujaDetailsLoadedImplCopyWith<$Res> {
  __$$PujaDetailsLoadedImplCopyWithImpl(
    _$PujaDetailsLoadedImpl _value,
    $Res Function(_$PujaDetailsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pujaId = null}) {
    return _then(
      _$PujaDetailsLoadedImpl(
        pujaId: null == pujaId
            ? _value.pujaId
            : pujaId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PujaDetailsLoadedImpl implements PujaDetailsLoaded {
  const _$PujaDetailsLoadedImpl({required this.pujaId});

  @override
  final String pujaId;

  @override
  String toString() {
    return 'PujaDetailsEvent.pujaDetailsLoaded(pujaId: $pujaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaDetailsLoadedImpl &&
            (identical(other.pujaId, pujaId) || other.pujaId == pujaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pujaId);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaDetailsLoadedImplCopyWith<_$PujaDetailsLoadedImpl> get copyWith =>
      __$$PujaDetailsLoadedImplCopyWithImpl<_$PujaDetailsLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return pujaDetailsLoaded(pujaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return pujaDetailsLoaded?.call(pujaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (pujaDetailsLoaded != null) {
      return pujaDetailsLoaded(pujaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return pujaDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return pujaDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (pujaDetailsLoaded != null) {
      return pujaDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class PujaDetailsLoaded implements PujaDetailsEvent {
  const factory PujaDetailsLoaded({required final String pujaId}) =
      _$PujaDetailsLoadedImpl;

  String get pujaId;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaDetailsLoadedImplCopyWith<_$PujaDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageSelectedImplCopyWith<$Res> {
  factory _$$PackageSelectedImplCopyWith(
    _$PackageSelectedImpl value,
    $Res Function(_$PackageSelectedImpl) then,
  ) = __$$PackageSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String packageName});
}

/// @nodoc
class __$$PackageSelectedImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$PackageSelectedImpl>
    implements _$$PackageSelectedImplCopyWith<$Res> {
  __$$PackageSelectedImplCopyWithImpl(
    _$PackageSelectedImpl _value,
    $Res Function(_$PackageSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? packageName = null}) {
    return _then(
      _$PackageSelectedImpl(
        packageName: null == packageName
            ? _value.packageName
            : packageName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PackageSelectedImpl implements PackageSelected {
  const _$PackageSelectedImpl({required this.packageName});

  @override
  final String packageName;

  @override
  String toString() {
    return 'PujaDetailsEvent.packageSelected(packageName: $packageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageSelectedImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packageName);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageSelectedImplCopyWith<_$PackageSelectedImpl> get copyWith =>
      __$$PackageSelectedImplCopyWithImpl<_$PackageSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return packageSelected(packageName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return packageSelected?.call(packageName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (packageSelected != null) {
      return packageSelected(packageName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return packageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return packageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (packageSelected != null) {
      return packageSelected(this);
    }
    return orElse();
  }
}

abstract class PackageSelected implements PujaDetailsEvent {
  const factory PackageSelected({required final String packageName}) =
      _$PackageSelectedImpl;

  String get packageName;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageSelectedImplCopyWith<_$PackageSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqItemToggledImplCopyWith<$Res> {
  factory _$$FaqItemToggledImplCopyWith(
    _$FaqItemToggledImpl value,
    $Res Function(_$FaqItemToggledImpl) then,
  ) = __$$FaqItemToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FaqItemToggledImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$FaqItemToggledImpl>
    implements _$$FaqItemToggledImplCopyWith<$Res> {
  __$$FaqItemToggledImplCopyWithImpl(
    _$FaqItemToggledImpl _value,
    $Res Function(_$FaqItemToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$FaqItemToggledImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FaqItemToggledImpl implements FaqItemToggled {
  const _$FaqItemToggledImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PujaDetailsEvent.faqItemToggled(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqItemToggledImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqItemToggledImplCopyWith<_$FaqItemToggledImpl> get copyWith =>
      __$$FaqItemToggledImplCopyWithImpl<_$FaqItemToggledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return faqItemToggled(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return faqItemToggled?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (faqItemToggled != null) {
      return faqItemToggled(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return faqItemToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return faqItemToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (faqItemToggled != null) {
      return faqItemToggled(this);
    }
    return orElse();
  }
}

abstract class FaqItemToggled implements PujaDetailsEvent {
  const factory FaqItemToggled({required final int index}) =
      _$FaqItemToggledImpl;

  int get index;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqItemToggledImplCopyWith<_$FaqItemToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
    _$TabChangedImpl value,
    $Res Function(_$TabChangedImpl) then,
  ) = __$$TabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
    _$TabChangedImpl _value,
    $Res Function(_$TabChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$TabChangedImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TabChangedImpl implements TabChanged {
  const _$TabChangedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PujaDetailsEvent.tabChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements PujaDetailsEvent {
  const factory TabChanged({required final int index}) = _$TabChangedImpl;

  int get index;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarouselImageChangedImplCopyWith<$Res> {
  factory _$$CarouselImageChangedImplCopyWith(
    _$CarouselImageChangedImpl value,
    $Res Function(_$CarouselImageChangedImpl) then,
  ) = __$$CarouselImageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$CarouselImageChangedImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$CarouselImageChangedImpl>
    implements _$$CarouselImageChangedImplCopyWith<$Res> {
  __$$CarouselImageChangedImplCopyWithImpl(
    _$CarouselImageChangedImpl _value,
    $Res Function(_$CarouselImageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$CarouselImageChangedImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CarouselImageChangedImpl implements CarouselImageChanged {
  const _$CarouselImageChangedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PujaDetailsEvent.carouselImageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselImageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselImageChangedImplCopyWith<_$CarouselImageChangedImpl>
  get copyWith =>
      __$$CarouselImageChangedImplCopyWithImpl<_$CarouselImageChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return carouselImageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return carouselImageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (carouselImageChanged != null) {
      return carouselImageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return carouselImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return carouselImageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (carouselImageChanged != null) {
      return carouselImageChanged(this);
    }
    return orElse();
  }
}

abstract class CarouselImageChanged implements PujaDetailsEvent {
  const factory CarouselImageChanged({required final int index}) =
      _$CarouselImageChangedImpl;

  int get index;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarouselImageChangedImplCopyWith<_$CarouselImageChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScrollPositionChangedImplCopyWith<$Res> {
  factory _$$ScrollPositionChangedImplCopyWith(
    _$ScrollPositionChangedImpl value,
    $Res Function(_$ScrollPositionChangedImpl) then,
  ) = __$$ScrollPositionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double offset});
}

/// @nodoc
class __$$ScrollPositionChangedImplCopyWithImpl<$Res>
    extends _$PujaDetailsEventCopyWithImpl<$Res, _$ScrollPositionChangedImpl>
    implements _$$ScrollPositionChangedImplCopyWith<$Res> {
  __$$ScrollPositionChangedImplCopyWithImpl(
    _$ScrollPositionChangedImpl _value,
    $Res Function(_$ScrollPositionChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offset = null}) {
    return _then(
      _$ScrollPositionChangedImpl(
        offset: null == offset
            ? _value.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$ScrollPositionChangedImpl implements ScrollPositionChanged {
  const _$ScrollPositionChangedImpl({required this.offset});

  @override
  final double offset;

  @override
  String toString() {
    return 'PujaDetailsEvent.scrollPositionChanged(offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollPositionChangedImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollPositionChangedImplCopyWith<_$ScrollPositionChangedImpl>
  get copyWith =>
      __$$ScrollPositionChangedImplCopyWithImpl<_$ScrollPositionChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId) pujaDetailsLoaded,
    required TResult Function(String packageName) packageSelected,
    required TResult Function(int index) faqItemToggled,
    required TResult Function(int index) tabChanged,
    required TResult Function(int index) carouselImageChanged,
    required TResult Function(double offset) scrollPositionChanged,
  }) {
    return scrollPositionChanged(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId)? pujaDetailsLoaded,
    TResult? Function(String packageName)? packageSelected,
    TResult? Function(int index)? faqItemToggled,
    TResult? Function(int index)? tabChanged,
    TResult? Function(int index)? carouselImageChanged,
    TResult? Function(double offset)? scrollPositionChanged,
  }) {
    return scrollPositionChanged?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId)? pujaDetailsLoaded,
    TResult Function(String packageName)? packageSelected,
    TResult Function(int index)? faqItemToggled,
    TResult Function(int index)? tabChanged,
    TResult Function(int index)? carouselImageChanged,
    TResult Function(double offset)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (scrollPositionChanged != null) {
      return scrollPositionChanged(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PujaDetailsLoaded value) pujaDetailsLoaded,
    required TResult Function(PackageSelected value) packageSelected,
    required TResult Function(FaqItemToggled value) faqItemToggled,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(CarouselImageChanged value) carouselImageChanged,
    required TResult Function(ScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return scrollPositionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult? Function(PackageSelected value)? packageSelected,
    TResult? Function(FaqItemToggled value)? faqItemToggled,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(CarouselImageChanged value)? carouselImageChanged,
    TResult? Function(ScrollPositionChanged value)? scrollPositionChanged,
  }) {
    return scrollPositionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PujaDetailsLoaded value)? pujaDetailsLoaded,
    TResult Function(PackageSelected value)? packageSelected,
    TResult Function(FaqItemToggled value)? faqItemToggled,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(CarouselImageChanged value)? carouselImageChanged,
    TResult Function(ScrollPositionChanged value)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (scrollPositionChanged != null) {
      return scrollPositionChanged(this);
    }
    return orElse();
  }
}

abstract class ScrollPositionChanged implements PujaDetailsEvent {
  const factory ScrollPositionChanged({required final double offset}) =
      _$ScrollPositionChangedImpl;

  double get offset;

  /// Create a copy of PujaDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrollPositionChangedImplCopyWith<_$ScrollPositionChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
