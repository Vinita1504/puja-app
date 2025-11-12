import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

/// Authentication events
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;

  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
    String? name,
  }) = SignUpRequested;

  const factory AuthEvent.signOutRequested() = SignOutRequested;

  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
}
