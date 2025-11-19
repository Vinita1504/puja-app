// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId, String packageId) cartLoaded,
    required TResult Function() offeringsFetched,
    required TResult Function(String offeringId) offeringAdded,
    required TResult Function(String offeringId) offeringRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId, String packageId)? cartLoaded,
    TResult? Function()? offeringsFetched,
    TResult? Function(String offeringId)? offeringAdded,
    TResult? Function(String offeringId)? offeringRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId, String packageId)? cartLoaded,
    TResult Function()? offeringsFetched,
    TResult Function(String offeringId)? offeringAdded,
    TResult Function(String offeringId)? offeringRemoved,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(OfferingsFetched value) offeringsFetched,
    required TResult Function(OfferingAdded value) offeringAdded,
    required TResult Function(OfferingRemoved value) offeringRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(OfferingsFetched value)? offeringsFetched,
    TResult? Function(OfferingAdded value)? offeringAdded,
    TResult? Function(OfferingRemoved value)? offeringRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(OfferingsFetched value)? offeringsFetched,
    TResult Function(OfferingAdded value)? offeringAdded,
    TResult Function(OfferingRemoved value)? offeringRemoved,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaCartEventCopyWith<$Res> {
  factory $PujaCartEventCopyWith(
    PujaCartEvent value,
    $Res Function(PujaCartEvent) then,
  ) = _$PujaCartEventCopyWithImpl<$Res, PujaCartEvent>;
}

/// @nodoc
class _$PujaCartEventCopyWithImpl<$Res, $Val extends PujaCartEvent>
    implements $PujaCartEventCopyWith<$Res> {
  _$PujaCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartLoadedImplCopyWith<$Res> {
  factory _$$CartLoadedImplCopyWith(
    _$CartLoadedImpl value,
    $Res Function(_$CartLoadedImpl) then,
  ) = __$$CartLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pujaId, String packageId});
}

/// @nodoc
class __$$CartLoadedImplCopyWithImpl<$Res>
    extends _$PujaCartEventCopyWithImpl<$Res, _$CartLoadedImpl>
    implements _$$CartLoadedImplCopyWith<$Res> {
  __$$CartLoadedImplCopyWithImpl(
    _$CartLoadedImpl _value,
    $Res Function(_$CartLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pujaId = null, Object? packageId = null}) {
    return _then(
      _$CartLoadedImpl(
        pujaId: null == pujaId
            ? _value.pujaId
            : pujaId // ignore: cast_nullable_to_non_nullable
                  as String,
        packageId: null == packageId
            ? _value.packageId
            : packageId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CartLoadedImpl implements CartLoaded {
  const _$CartLoadedImpl({required this.pujaId, required this.packageId});

  @override
  final String pujaId;
  @override
  final String packageId;

  @override
  String toString() {
    return 'PujaCartEvent.cartLoaded(pujaId: $pujaId, packageId: $packageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadedImpl &&
            (identical(other.pujaId, pujaId) || other.pujaId == pujaId) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pujaId, packageId);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedImplCopyWith<_$CartLoadedImpl> get copyWith =>
      __$$CartLoadedImplCopyWithImpl<_$CartLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId, String packageId) cartLoaded,
    required TResult Function() offeringsFetched,
    required TResult Function(String offeringId) offeringAdded,
    required TResult Function(String offeringId) offeringRemoved,
  }) {
    return cartLoaded(pujaId, packageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId, String packageId)? cartLoaded,
    TResult? Function()? offeringsFetched,
    TResult? Function(String offeringId)? offeringAdded,
    TResult? Function(String offeringId)? offeringRemoved,
  }) {
    return cartLoaded?.call(pujaId, packageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId, String packageId)? cartLoaded,
    TResult Function()? offeringsFetched,
    TResult Function(String offeringId)? offeringAdded,
    TResult Function(String offeringId)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded(pujaId, packageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(OfferingsFetched value) offeringsFetched,
    required TResult Function(OfferingAdded value) offeringAdded,
    required TResult Function(OfferingRemoved value) offeringRemoved,
  }) {
    return cartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(OfferingsFetched value)? offeringsFetched,
    TResult? Function(OfferingAdded value)? offeringAdded,
    TResult? Function(OfferingRemoved value)? offeringRemoved,
  }) {
    return cartLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(OfferingsFetched value)? offeringsFetched,
    TResult Function(OfferingAdded value)? offeringAdded,
    TResult Function(OfferingRemoved value)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded(this);
    }
    return orElse();
  }
}

abstract class CartLoaded implements PujaCartEvent {
  const factory CartLoaded({
    required final String pujaId,
    required final String packageId,
  }) = _$CartLoadedImpl;

  String get pujaId;
  String get packageId;

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartLoadedImplCopyWith<_$CartLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfferingsFetchedImplCopyWith<$Res> {
  factory _$$OfferingsFetchedImplCopyWith(
    _$OfferingsFetchedImpl value,
    $Res Function(_$OfferingsFetchedImpl) then,
  ) = __$$OfferingsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfferingsFetchedImplCopyWithImpl<$Res>
    extends _$PujaCartEventCopyWithImpl<$Res, _$OfferingsFetchedImpl>
    implements _$$OfferingsFetchedImplCopyWith<$Res> {
  __$$OfferingsFetchedImplCopyWithImpl(
    _$OfferingsFetchedImpl _value,
    $Res Function(_$OfferingsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfferingsFetchedImpl implements OfferingsFetched {
  const _$OfferingsFetchedImpl();

  @override
  String toString() {
    return 'PujaCartEvent.offeringsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferingsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId, String packageId) cartLoaded,
    required TResult Function() offeringsFetched,
    required TResult Function(String offeringId) offeringAdded,
    required TResult Function(String offeringId) offeringRemoved,
  }) {
    return offeringsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId, String packageId)? cartLoaded,
    TResult? Function()? offeringsFetched,
    TResult? Function(String offeringId)? offeringAdded,
    TResult? Function(String offeringId)? offeringRemoved,
  }) {
    return offeringsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId, String packageId)? cartLoaded,
    TResult Function()? offeringsFetched,
    TResult Function(String offeringId)? offeringAdded,
    TResult Function(String offeringId)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringsFetched != null) {
      return offeringsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(OfferingsFetched value) offeringsFetched,
    required TResult Function(OfferingAdded value) offeringAdded,
    required TResult Function(OfferingRemoved value) offeringRemoved,
  }) {
    return offeringsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(OfferingsFetched value)? offeringsFetched,
    TResult? Function(OfferingAdded value)? offeringAdded,
    TResult? Function(OfferingRemoved value)? offeringRemoved,
  }) {
    return offeringsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(OfferingsFetched value)? offeringsFetched,
    TResult Function(OfferingAdded value)? offeringAdded,
    TResult Function(OfferingRemoved value)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringsFetched != null) {
      return offeringsFetched(this);
    }
    return orElse();
  }
}

abstract class OfferingsFetched implements PujaCartEvent {
  const factory OfferingsFetched() = _$OfferingsFetchedImpl;
}

/// @nodoc
abstract class _$$OfferingAddedImplCopyWith<$Res> {
  factory _$$OfferingAddedImplCopyWith(
    _$OfferingAddedImpl value,
    $Res Function(_$OfferingAddedImpl) then,
  ) = __$$OfferingAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String offeringId});
}

/// @nodoc
class __$$OfferingAddedImplCopyWithImpl<$Res>
    extends _$PujaCartEventCopyWithImpl<$Res, _$OfferingAddedImpl>
    implements _$$OfferingAddedImplCopyWith<$Res> {
  __$$OfferingAddedImplCopyWithImpl(
    _$OfferingAddedImpl _value,
    $Res Function(_$OfferingAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offeringId = null}) {
    return _then(
      _$OfferingAddedImpl(
        offeringId: null == offeringId
            ? _value.offeringId
            : offeringId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OfferingAddedImpl implements OfferingAdded {
  const _$OfferingAddedImpl({required this.offeringId});

  @override
  final String offeringId;

  @override
  String toString() {
    return 'PujaCartEvent.offeringAdded(offeringId: $offeringId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferingAddedImpl &&
            (identical(other.offeringId, offeringId) ||
                other.offeringId == offeringId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offeringId);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferingAddedImplCopyWith<_$OfferingAddedImpl> get copyWith =>
      __$$OfferingAddedImplCopyWithImpl<_$OfferingAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId, String packageId) cartLoaded,
    required TResult Function() offeringsFetched,
    required TResult Function(String offeringId) offeringAdded,
    required TResult Function(String offeringId) offeringRemoved,
  }) {
    return offeringAdded(offeringId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId, String packageId)? cartLoaded,
    TResult? Function()? offeringsFetched,
    TResult? Function(String offeringId)? offeringAdded,
    TResult? Function(String offeringId)? offeringRemoved,
  }) {
    return offeringAdded?.call(offeringId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId, String packageId)? cartLoaded,
    TResult Function()? offeringsFetched,
    TResult Function(String offeringId)? offeringAdded,
    TResult Function(String offeringId)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringAdded != null) {
      return offeringAdded(offeringId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(OfferingsFetched value) offeringsFetched,
    required TResult Function(OfferingAdded value) offeringAdded,
    required TResult Function(OfferingRemoved value) offeringRemoved,
  }) {
    return offeringAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(OfferingsFetched value)? offeringsFetched,
    TResult? Function(OfferingAdded value)? offeringAdded,
    TResult? Function(OfferingRemoved value)? offeringRemoved,
  }) {
    return offeringAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(OfferingsFetched value)? offeringsFetched,
    TResult Function(OfferingAdded value)? offeringAdded,
    TResult Function(OfferingRemoved value)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringAdded != null) {
      return offeringAdded(this);
    }
    return orElse();
  }
}

abstract class OfferingAdded implements PujaCartEvent {
  const factory OfferingAdded({required final String offeringId}) =
      _$OfferingAddedImpl;

  String get offeringId;

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferingAddedImplCopyWith<_$OfferingAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfferingRemovedImplCopyWith<$Res> {
  factory _$$OfferingRemovedImplCopyWith(
    _$OfferingRemovedImpl value,
    $Res Function(_$OfferingRemovedImpl) then,
  ) = __$$OfferingRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String offeringId});
}

/// @nodoc
class __$$OfferingRemovedImplCopyWithImpl<$Res>
    extends _$PujaCartEventCopyWithImpl<$Res, _$OfferingRemovedImpl>
    implements _$$OfferingRemovedImplCopyWith<$Res> {
  __$$OfferingRemovedImplCopyWithImpl(
    _$OfferingRemovedImpl _value,
    $Res Function(_$OfferingRemovedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offeringId = null}) {
    return _then(
      _$OfferingRemovedImpl(
        offeringId: null == offeringId
            ? _value.offeringId
            : offeringId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OfferingRemovedImpl implements OfferingRemoved {
  const _$OfferingRemovedImpl({required this.offeringId});

  @override
  final String offeringId;

  @override
  String toString() {
    return 'PujaCartEvent.offeringRemoved(offeringId: $offeringId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferingRemovedImpl &&
            (identical(other.offeringId, offeringId) ||
                other.offeringId == offeringId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offeringId);

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferingRemovedImplCopyWith<_$OfferingRemovedImpl> get copyWith =>
      __$$OfferingRemovedImplCopyWithImpl<_$OfferingRemovedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pujaId, String packageId) cartLoaded,
    required TResult Function() offeringsFetched,
    required TResult Function(String offeringId) offeringAdded,
    required TResult Function(String offeringId) offeringRemoved,
  }) {
    return offeringRemoved(offeringId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pujaId, String packageId)? cartLoaded,
    TResult? Function()? offeringsFetched,
    TResult? Function(String offeringId)? offeringAdded,
    TResult? Function(String offeringId)? offeringRemoved,
  }) {
    return offeringRemoved?.call(offeringId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pujaId, String packageId)? cartLoaded,
    TResult Function()? offeringsFetched,
    TResult Function(String offeringId)? offeringAdded,
    TResult Function(String offeringId)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringRemoved != null) {
      return offeringRemoved(offeringId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(OfferingsFetched value) offeringsFetched,
    required TResult Function(OfferingAdded value) offeringAdded,
    required TResult Function(OfferingRemoved value) offeringRemoved,
  }) {
    return offeringRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(OfferingsFetched value)? offeringsFetched,
    TResult? Function(OfferingAdded value)? offeringAdded,
    TResult? Function(OfferingRemoved value)? offeringRemoved,
  }) {
    return offeringRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(OfferingsFetched value)? offeringsFetched,
    TResult Function(OfferingAdded value)? offeringAdded,
    TResult Function(OfferingRemoved value)? offeringRemoved,
    required TResult orElse(),
  }) {
    if (offeringRemoved != null) {
      return offeringRemoved(this);
    }
    return orElse();
  }
}

abstract class OfferingRemoved implements PujaCartEvent {
  const factory OfferingRemoved({required final String offeringId}) =
      _$OfferingRemovedImpl;

  String get offeringId;

  /// Create a copy of PujaCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferingRemovedImplCopyWith<_$OfferingRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
