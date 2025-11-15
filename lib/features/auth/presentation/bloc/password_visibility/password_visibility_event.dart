import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_visibility_event.freezed.dart';

/// Password visibility events
@freezed
class PasswordVisibilityEvent with _$PasswordVisibilityEvent {
  /// Toggles the password visibility state
  const factory PasswordVisibilityEvent.passwordVisibilityToggled() =
      PasswordVisibilityToggled;
}

