// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BottomNavEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabIndexChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabIndexChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabIndexChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabIndexChanged value) tabIndexChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabIndexChanged value)? tabIndexChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabIndexChanged value)? tabIndexChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavEventCopyWith<BottomNavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavEventCopyWith<$Res> {
  factory $BottomNavEventCopyWith(
    BottomNavEvent value,
    $Res Function(BottomNavEvent) then,
  ) = _$BottomNavEventCopyWithImpl<$Res, BottomNavEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottomNavEventCopyWithImpl<$Res, $Val extends BottomNavEvent>
    implements $BottomNavEventCopyWith<$Res> {
  _$BottomNavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _value.copyWith(
            index: null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TabIndexChangedImplCopyWith<$Res>
    implements $BottomNavEventCopyWith<$Res> {
  factory _$$TabIndexChangedImplCopyWith(
    _$TabIndexChangedImpl value,
    $Res Function(_$TabIndexChangedImpl) then,
  ) = __$$TabIndexChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TabIndexChangedImplCopyWithImpl<$Res>
    extends _$BottomNavEventCopyWithImpl<$Res, _$TabIndexChangedImpl>
    implements _$$TabIndexChangedImplCopyWith<$Res> {
  __$$TabIndexChangedImplCopyWithImpl(
    _$TabIndexChangedImpl _value,
    $Res Function(_$TabIndexChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BottomNavEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$TabIndexChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TabIndexChangedImpl implements _TabIndexChanged {
  const _$TabIndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavEvent.tabIndexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabIndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BottomNavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabIndexChangedImplCopyWith<_$TabIndexChangedImpl> get copyWith =>
      __$$TabIndexChangedImplCopyWithImpl<_$TabIndexChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabIndexChanged,
  }) {
    return tabIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabIndexChanged,
  }) {
    return tabIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabIndexChanged,
    required TResult orElse(),
  }) {
    if (tabIndexChanged != null) {
      return tabIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabIndexChanged value) tabIndexChanged,
  }) {
    return tabIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabIndexChanged value)? tabIndexChanged,
  }) {
    return tabIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabIndexChanged value)? tabIndexChanged,
    required TResult orElse(),
  }) {
    if (tabIndexChanged != null) {
      return tabIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _TabIndexChanged implements BottomNavEvent {
  const factory _TabIndexChanged(final int index) = _$TabIndexChangedImpl;

  @override
  int get index;

  /// Create a copy of BottomNavEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabIndexChangedImplCopyWith<_$TabIndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavState {
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
    BottomNavState value,
    $Res Function(BottomNavState) then,
  ) = _$BottomNavStateCopyWithImpl<$Res, BottomNavState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res, $Val extends BottomNavState>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedIndex = null}) {
    return _then(
      _value.copyWith(
            selectedIndex: null == selectedIndex
                ? _value.selectedIndex
                : selectedIndex // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BottomNavStateImplCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$$BottomNavStateImplCopyWith(
    _$BottomNavStateImpl value,
    $Res Function(_$BottomNavStateImpl) then,
  ) = __$$BottomNavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$BottomNavStateImplCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res, _$BottomNavStateImpl>
    implements _$$BottomNavStateImplCopyWith<$Res> {
  __$$BottomNavStateImplCopyWithImpl(
    _$BottomNavStateImpl _value,
    $Res Function(_$BottomNavStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedIndex = null}) {
    return _then(
      _$BottomNavStateImpl(
        selectedIndex: null == selectedIndex
            ? _value.selectedIndex
            : selectedIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BottomNavStateImpl implements _BottomNavState {
  const _$BottomNavStateImpl({this.selectedIndex = 2});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'BottomNavState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavStateImplCopyWith<_$BottomNavStateImpl> get copyWith =>
      __$$BottomNavStateImplCopyWithImpl<_$BottomNavStateImpl>(
        this,
        _$identity,
      );
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState({final int selectedIndex}) =
      _$BottomNavStateImpl;

  @override
  int get selectedIndex;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavStateImplCopyWith<_$BottomNavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
