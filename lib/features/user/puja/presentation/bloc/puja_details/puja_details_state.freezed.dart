// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaDetailsStateCopyWith<$Res> {
  factory $PujaDetailsStateCopyWith(
    PujaDetailsState value,
    $Res Function(PujaDetailsState) then,
  ) = _$PujaDetailsStateCopyWithImpl<$Res, PujaDetailsState>;
}

/// @nodoc
class _$PujaDetailsStateCopyWithImpl<$Res, $Val extends PujaDetailsState>
    implements $PujaDetailsStateCopyWith<$Res> {
  _$PujaDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PujaDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PujaDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PujaDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PujaDetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PujaDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PujaDetailsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    PujaEntity puja,
    List<PujaPackageEntity> packages,
    List<FaqItem> faqs,
    int activeTabIndex,
    String selectedPackage,
    Set<int> expandedFaqIndices,
    int currentImageIndex,
  });

  $PujaEntityCopyWith<$Res> get puja;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PujaDetailsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? puja = null,
    Object? packages = null,
    Object? faqs = null,
    Object? activeTabIndex = null,
    Object? selectedPackage = null,
    Object? expandedFaqIndices = null,
    Object? currentImageIndex = null,
  }) {
    return _then(
      _$LoadedImpl(
        puja: null == puja
            ? _value.puja
            : puja // ignore: cast_nullable_to_non_nullable
                  as PujaEntity,
        packages: null == packages
            ? _value._packages
            : packages // ignore: cast_nullable_to_non_nullable
                  as List<PujaPackageEntity>,
        faqs: null == faqs
            ? _value._faqs
            : faqs // ignore: cast_nullable_to_non_nullable
                  as List<FaqItem>,
        activeTabIndex: null == activeTabIndex
            ? _value.activeTabIndex
            : activeTabIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedPackage: null == selectedPackage
            ? _value.selectedPackage
            : selectedPackage // ignore: cast_nullable_to_non_nullable
                  as String,
        expandedFaqIndices: null == expandedFaqIndices
            ? _value._expandedFaqIndices
            : expandedFaqIndices // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
        currentImageIndex: null == currentImageIndex
            ? _value.currentImageIndex
            : currentImageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PujaEntityCopyWith<$Res> get puja {
    return $PujaEntityCopyWith<$Res>(_value.puja, (value) {
      return _then(_value.copyWith(puja: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required this.puja,
    required final List<PujaPackageEntity> packages,
    required final List<FaqItem> faqs,
    this.activeTabIndex = 0,
    this.selectedPackage = 'Basic',
    final Set<int> expandedFaqIndices = const {},
    this.currentImageIndex = 0,
  }) : _packages = packages,
       _faqs = faqs,
       _expandedFaqIndices = expandedFaqIndices;

  @override
  final PujaEntity puja;
  final List<PujaPackageEntity> _packages;
  @override
  List<PujaPackageEntity> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  final List<FaqItem> _faqs;
  @override
  List<FaqItem> get faqs {
    if (_faqs is EqualUnmodifiableListView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faqs);
  }

  @override
  @JsonKey()
  final int activeTabIndex;
  @override
  @JsonKey()
  final String selectedPackage;
  final Set<int> _expandedFaqIndices;
  @override
  @JsonKey()
  Set<int> get expandedFaqIndices {
    if (_expandedFaqIndices is EqualUnmodifiableSetView)
      return _expandedFaqIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_expandedFaqIndices);
  }

  @override
  @JsonKey()
  final int currentImageIndex;

  @override
  String toString() {
    return 'PujaDetailsState.loaded(puja: $puja, packages: $packages, faqs: $faqs, activeTabIndex: $activeTabIndex, selectedPackage: $selectedPackage, expandedFaqIndices: $expandedFaqIndices, currentImageIndex: $currentImageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.puja, puja) || other.puja == puja) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            const DeepCollectionEquality().equals(other._faqs, _faqs) &&
            (identical(other.activeTabIndex, activeTabIndex) ||
                other.activeTabIndex == activeTabIndex) &&
            (identical(other.selectedPackage, selectedPackage) ||
                other.selectedPackage == selectedPackage) &&
            const DeepCollectionEquality().equals(
              other._expandedFaqIndices,
              _expandedFaqIndices,
            ) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    puja,
    const DeepCollectionEquality().hash(_packages),
    const DeepCollectionEquality().hash(_faqs),
    activeTabIndex,
    selectedPackage,
    const DeepCollectionEquality().hash(_expandedFaqIndices),
    currentImageIndex,
  );

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
      puja,
      packages,
      faqs,
      activeTabIndex,
      selectedPackage,
      expandedFaqIndices,
      currentImageIndex,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
      puja,
      packages,
      faqs,
      activeTabIndex,
      selectedPackage,
      expandedFaqIndices,
      currentImageIndex,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        puja,
        packages,
        faqs,
        activeTabIndex,
        selectedPackage,
        expandedFaqIndices,
        currentImageIndex,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PujaDetailsState {
  const factory _Loaded({
    required final PujaEntity puja,
    required final List<PujaPackageEntity> packages,
    required final List<FaqItem> faqs,
    final int activeTabIndex,
    final String selectedPackage,
    final Set<int> expandedFaqIndices,
    final int currentImageIndex,
  }) = _$LoadedImpl;

  PujaEntity get puja;
  List<PujaPackageEntity> get packages;
  List<FaqItem> get faqs;
  int get activeTabIndex;
  String get selectedPackage;
  Set<int> get expandedFaqIndices;
  int get currentImageIndex;

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PujaDetailsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PujaDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PujaEntity puja,
      List<PujaPackageEntity> packages,
      List<FaqItem> faqs,
      int activeTabIndex,
      String selectedPackage,
      Set<int> expandedFaqIndices,
      int currentImageIndex,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PujaDetailsState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of PujaDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
