import 'package:flutter_bloc/flutter_bloc.dart';
import 'password_visibility_event.dart';
import 'password_visibility_state.dart';

/// Password visibility BLoC
///
/// Manages the password visibility toggle state for password input fields.
class PasswordVisibilityBloc
    extends Bloc<PasswordVisibilityEvent, PasswordVisibilityState> {
  PasswordVisibilityBloc() : super(const PasswordVisibilityState()) {
    on<PasswordVisibilityToggled>(_onPasswordVisibilityToggled);
  }

  void _onPasswordVisibilityToggled(
    PasswordVisibilityToggled event,
    Emitter<PasswordVisibilityState> emit,
  ) {
    emit(state.copyWith(isObscured: !state.isObscured));
  }
}
