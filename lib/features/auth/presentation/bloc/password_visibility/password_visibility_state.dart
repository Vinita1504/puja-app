import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_visibility_state.freezed.dart';

/// Password visibility state
@freezed
class PasswordVisibilityState with _$PasswordVisibilityState {
  /// Initial state with password obscured status
  const factory PasswordVisibilityState({
    @Default(true) bool isObscured,
  }) = _PasswordVisibilityState;
}

